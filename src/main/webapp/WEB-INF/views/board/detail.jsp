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
					<i class="bi bi-house-door-fill"></i> &gt; ${boardEntity.category.parent} &gt; ${boardEntity.category.cname}
				</p>
			</div>

			<div id="section-item">
				<div id="section-item-sub-1">
					<div class="card shadow">
						<img src="${boardEntity.image}" class="img-fluid rounded-start" alt="이미지자리">
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
						<span class="star" style="color: red;"> ★★★★★ </span>
					</div>
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

			<div id="section-button-like">
				<div id="section-button-sub">
					<i class="bi bi-hand-thumbs-up"></i>
					<!--<i class="bi bi-hand-thumbs-up-fill"></i>-->
					123
				</div>
				<c:if test="${sessionScope.principal.id == boardEntity.user.id }">
				<div id="button">
					<button id="cancel" type="button" class="btn btn-danger" onclick="deleteBoardById(${boardEntity.id})">삭제</button>
					<button type="submit" class="btn btn-primary" onclick="moveBoardUpdate(${boardEntity.id})">수정</button>
				</div>
				</c:if>
			</div>

			<div class="card shadow" style="margin-top: 3%;">
				<div id="section-comment">
					<i class="bi bi-person-circle"
						style="font-size: 70px; margin-left: 8%; color: rgb(119, 119, 119);"></i>
					<div id="section-comment-sub-1">
						<div id="section-comment-sub-2">
							<div class="form-group" style="flex-grow: 1; margin: 0;">
								<textarea class="form-control" rows="1" placeholder="댓글을 남겨주세요"></textarea>
							</div>
							<button type="button" class="btn btn-primary">등록</button>
						</div>
					</div>
				</div>
			</div>

			<div id="section-comment-list">
				<ul class="list-group shadow" style="margin-bottom: 10%;">
					<li class="list-group-item d-flex justify-content-between">
						<div>안녕하세요~!!!</div>
						<div class="d-flex">
							<div class="font-italic">작성자&nbsp;</div>
							<button class="badge btn-secondary">삭제</button>
						</div>
					</li>
				</ul>
			</div>
		</section>
	</div>

	<%@ include file="../layout/footer.jsp"%>
</body>

</html>