<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
	<!-- 헤더자리 -->
	<%@ include file="../layout/header.jsp"%>

	<div id="section-content">
		<section style="max-width: 60%;">
			<div id="section-category">
				<p class="detail-route">
					<i class="bi bi-house-door-fill"></i> &gt;
					${boardEntity.category.parent} &gt; ${boardEntity.category.cname}
				</p>
			</div>

			<div id="section-item">
				<div id="section-item-sub-1">
					<div class="card shadow">
						<a href="/item/${boardEntity.item.id}/detail?page=0"><img
							src="${boardEntity.image}" class="img-fluid rounded-start"
							alt="이미지자리"></a>
					</div>
				</div>
				<div id="section-item-sub-2">
					<div id="text">
						<p>${boardEntity.brand.bname}</p>
						<h2>${boardEntity.item.iname}</h2>
					</div>
				</div>
			</div>

			<div id="section-rating">
				<div id="rating">
					<div id="rating-1">만족도</div>
					<div id="rating-2">
						<span class="star"> ★★★★★ <span
							style="width:calc(20%*${boardEntity.rating})">★★★★★</span></span>
					</div>
					<div id="rating-3">${boardEntity.rating}</div>
				</div>
			</div>

			<div id="section-date" style="display: flex; justify-content: end;">
				${boardEntity.createdAt}</div>

			<div id="section-title">
				<h2>${boardEntity.title}</h2>
			</div>

			<div id="section-texteditor">
				<div class="card shadow" style="width: 100%; height: 100%">${boardEntity.content}</div>
			</div>

			<div id="writer">${boardEntity.user.nickname}</div>
			<!-- 현재 like디비에 해당유저 보드있는지 없는지 체크후 좋아요 상태나타내기 -->
			<div id="section-button-like">
				<div id="section-button-sub">
					<c:choose>
						<c:when test="${likeCheck eq 1}">
						<i id="like" class="bi bi-hand-thumbs-up-fill m_set_pointer"
								onclick="like(${boardEntity.id})">${boardEntity.likeCnt }</i>
						</c:when>
						<c:otherwise>
						<i id="like" class="bi bi-hand-thumbs-up m_set_pointer"
								onclick="like(${boardEntity.id})">${boardEntity.likeCnt }</i>
						</c:otherwise>
					</c:choose>

					<!--<i class="bi bi-hand-thumbs-up-fill"></i>-->
				
				</div>
				<script>
					async function like(boardId){
						if(globalUserId == ""){
							alert("로그인을 먼저 진행해주세요");
							location.href = "/loginForm";
							return;
							}

						let response
						$("#like").toggleClass("bi-hand-thumbs-up bi-hand-thumbs-up-fill");
						if($("#like").attr("class") == "bi m_set_pointer bi-hand-thumbs-up-fill"){
							response = await fetch("http://localhost:8080/api/board/" + boardId + "/like", {
								method: "post"
							});
						}
						else{
							response = await fetch("http://localhost:8080/api/board/" + boardId + "/like", {
								method: "delete"
							});
						
						}
						let parseResponse = await response.json();
						
						if(parseResponse.code == 1){
							$("#like").empty();
					 		$("#like").text(parseResponse.body);
						}
					}
					</script>

				<div id="button">
					<button type="button"
						onClick="toBoardList(${boardEntity.category.id}, ${page })"
						class="btn btn-secondary">목록으로</button>
					<c:if test="${sessionScope.principal.id == boardEntity.user.id }">
						<button id="cancel" type="button" class="btn btn-danger"
							onclick="deleteBoardById(${boardEntity.id})">삭제</button>
						<button type="submit" class="btn btn-primary"
							onclick="moveBoardUpdate(${boardEntity.id})">수정</button>
					</c:if>
				</div>
			</div>

			<!-- 댓글 쓰기 시작 -->
			<form action="/api/board/${boardEntity.id }/comment" method="post">
				<div class="card shadow" style="margin-top: 3%;">
					<div id="section-comment">
						<i class="bi bi-person-circle"
							style="font-size: 70px; margin-left: 8%; color: rgb(119, 119, 119);"></i>
						<div id="section-comment-sub-1">
							<div id="section-comment-sub-2">

								<div class="form-group" style="flex-grow: 1; margin: 0;">
									<textarea name="content" id="ta-content" class="form-control"
										rows="1" placeholder="댓글을 남겨주세요"></textarea>
								</div>
								<button type="submit" class="btn btn-primary">등록</button>
							</div>
						</div>
					</div>
				</div>
			</form>
			<!-- 댓글 쓰기 끝 -->

			<!-- 댓글 리스트 시작 -->
			<div id="section-comment-list">
				<ul class="list-group shadow" style="margin-bottom: 10%;">
					<c:forEach var="comment" items="${boardEntity.comments }">
						<li id="reply-${comment.id }"
							class="list-group-item d-flex justify-content-between">
							<div>${comment.content }</div>
							<div class="d-flex">
								<div class="font-italic">작성자:${comment.user.username }&nbsp;&nbsp;</div>
								<button class="badge btn-secondary"
									onClick="deleteCommentById(${comment.id})">삭제</button>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
			<!-- 댓글 리스트 끝 -->
		</section>
	</div>

	<%@ include file="../layout/footer.jsp"%>
</body>
<script>  
	$("#ta-content").click(()=>{
		if(globalUserId == ""){
			alert("로그인을 먼저 진행해주세요");
			location.href = "/loginForm";
		}
		
	});
</script>
</html>