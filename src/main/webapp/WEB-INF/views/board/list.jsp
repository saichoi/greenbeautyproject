<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 헤더자리 -->
<%@ include file="../layout/header.jsp"%>

<!-- 메인자리 -->
<main>
	<!-- 메인컨테이너자리 -->
	<div id="maincontainer">
		<div id="ci1">
			<!-- 아이콘 -->
			<div id="i1">
				<img src="/image/review.png" style="width: 60%; height: 100%">
			</div>
			<!-- 텍스트 -->
			<div id="ct1">
				<div class="number">${boardTotalCnt}</div>
				<div class="text">누적리뷰수</div>
			</div>
		</div>

		<div id="ci2">
			<!-- 아이콘 -->
			<div id="i2">
				<img src="/image/item.png" style="width: 60%; height: 100%">
			</div>
			<!-- 텍스트 -->
			<div id="ct2">
				<div class="number">${itemTotalCnt}</div>
				<div class="text">등록제품수</div>
			</div>
		</div>

		<div id="ci3">
			<!-- 아이콘 -->
			<div id="i3">
				<img src="/image/brand.png" style="width: 60%; height: 100%">
			</div>
			<!-- 텍스트 -->
			<div id="ct3">
				<div class="number">${brandTotalCnt}</div>
				<div class="text">브랜드수</div>
			</div>
		</div>

	</div>
</main>

<body-2 style="max-width:90%; margin:0 auto;"> <aside-1>
<!-- 서브메뉴자리 --> <%@ include file="../layout/boardSidebar.jsp"%>
</aside-1>

<section class="mb-3" style="height:1200px;">
	<!-- 검색창자리 -->
	<form class="input-group">
		<input type="text" class="form-control" id="serachText"
			name="searchText" value="${param.searchText}" style="height: 100%">
		<div class="input-group-append">
			<button class="btn btn-secondary" type="submit">
				<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
					fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                        <path
						d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                    </svg>
			</button>
		</div>
	</form>

	<!-- 선택창자리 -->
	<div id="section1">
		<div class="card w-75"
			style="width: 100%; height: 100%; border: none;">
			<div class="card-body">
				<h5 class="card-title">찾고 싶은 피부 타입을 선택해주세요.</h5>
				<p class="card-text">
					<form id="search-container" method="GET" action="/board/filter">
					<div id="search-container-sub1">
						<div id="select-type1">
							<label for="select1"><input type="radio" id="select1" name="skinType" value="건성" >건성</label>
							<label for="select2"><input type="radio" id="select2" name="skinType" value="중성">중성
							<label for="select3"><input type="radio" id="select3" name="skinType" value="지성">지성</label>
							<label for="select4"><input type="radio" id="select4" name="skinType" value="복합성">복합성</label>
						</div>
						<div id="select-type2">
							<label for="select5"><input type="radio" id="select5" name="skinTrouble" value="여드름">여드름</label>
							<label for="select6"><input type="radio" id="select6" name="skinTrouble" value="민감성">민감성</label>
							<label for="select7"><input type="radio" id="select7" name="skinTrouble" value="흉터">흉터</label>
							<label for="select8"><input type="radio" id="select8" name="skinTrouble" value="혈관">혈관</label>
							<label for="select9"><input type="radio" id="select9" name="skinTrouble" value="색조">색조</label>
						</div>
					</div>
					<button id="search-container-sub2" type="submit"
						class="btn btn-secondary"
						style="margin-bottom: 2%; margin-top: 3%">검색</button>
				</form>
			</div>
		</div>

		<!-- 콤보박스자리 -->
		<select class="form-select" aria-label="Default select example">
			<option selected>좋아요순</option>
			<option value="1">댓글순</option>
			<option value="2">평점순</option>
		</select>
	</div>

	<div id="section2">
		<!-- 리뷰리스트자리 -->
		<c:forEach var="board" items="${boardsEntity.content}">
			<div id="board-card" class="card mb-3 shadow"
				onclick="moveBoardDetail(${board.id}, ${param.page})" style="width: 100%;">
				<div class="row g-0 overflow-hidden" style="height:200px">
					<div class="img-card col-md-3" 
						style="border-right: 1px solid rgb(219, 219, 219);">
						<img src="${board.content}" class="img-fluid rounded-start h-100" 
						onerror="this.src='/image/default-image.png'" alt="리뷰이미지" >
					</div>
					<div class="col-md-8">
						<div class="card-body">
							<p id="category">
								<small class="text-muted"> <svg
										xmlns="http://www.w3.org/2000/svg" width="20" height="20"
										fill="currentColor" class="bi bi-house-door-fill"
										viewBox="0 1 16 16">
                                        <path
											d="M6.5 14.5v-3.505c0-.245.25-.495.5-.495h2c.25 0 .5.25.5.5v3.5a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5z" />
                                    </svg> &gt; ${board.category.parent} &gt;
									${board.category.cname}
								</small>
							</p>
							<h4 id="title">${board.title}</h4>
							<p id="writer">작성자 : ${board.user.nickname}</p>
							<div id="card-sub">
								<p id="skin-type">작성자의 피부타입 : ${board.user.skinType} /
									${board.user.skinTrouble} / ${board.user.skinTone}</p>
								<p id="date">${board.createdAt}</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>

		<!-- 페이지네이션자리 -->
		<ul class="pagination d-flex justify-content-center mt-5">
			<c:choose>
				<c:when test="${boardsEntity.first}">
					<li class="page-item disabled"><a class="page-link"
						href="/board?page=${boardsEntity.number - 1}&searchText=${param.searchText}">&laquo;</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link"
						href="/board?page=${boardsEntity.number - 1}&searchText=${param.searchText}">&laquo;</a></li>
				</c:otherwise>
			</c:choose>

			<c:forEach begin="${startPage}" end="${endPage}" var="idx">
				<c:choose>
					<c:when test="${idx eq nowPage}">
						<li class="page-item disabled"><a
							class="page-link page-active"
							href="/board?page=${idx-1}&searchText=${param.searchText}">${idx}</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link"
							href="/board?page=${idx-1}&searchText=${param.searchText}">${idx}</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>


			<c:choose>
				<c:when test="${boardsEntity.last}">
					<li class="page-item disabled"><a class="page-link"
						href="/board?page=${param.page + 1}&searchText=${param.searchText}">&raquo;</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link"
						href="/board?page=${param.page + 1}&searchText=${param.searchText}">&raquo;</a></li>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
</section>
<aside-2> 
		<p id="empty"></p>
        <c:if test="${!empty boardsEntity.content[0].id }">
        <a id="product-move" href="/item/list?page=0">제품보러가기
            <svg id="move" xmlns="http://www.w3.org/2000/svg" width="23" height="23" fill="currentColor"
                class="bi bi-arrow-right-circle-fill" viewBox="0 0 16 16">
                <path
                    d="M8 0a8 8 0 1 1 0 16A8 8 0 0 1 8 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z" />
            </svg>
        </a>
        </c:if>
</aside-2>
</body-2>

<%@ include file="../layout/footer.jsp"%>

<script>
	var boardTotalCnt = "${boardTotalCnt}";
	var itemTotalCnt = "${itemTotalCnt}";
	var brandTotalCnt = "${brandTotalCnt}";
	var count0 = count1 = count2 = 0;
	
	timeCounter();
	function timeCounter() {
		id0 = setInterval(count0Fn, 1); //
		function count0Fn() {
			count0++;
			if (count0 > boardTotalCnt) {
				clearInterval(id0);
			} else {
				$(".number").eq(0).text(count0);
			}
		}
		id1 = setInterval(count1Fn, 1);
		function count1Fn() {
			count1++;
			if (count1 > itemTotalCnt) {
				clearInterval(id1);
			} else {
				$(".number").eq(1).text(count1);
			}
		}
		id2 = setInterval(count2Fn, 1);
		function count2Fn() {
			count2++;
			if (count2 > brandTotalCnt) {
				clearInterval(id2);
			} else {
				$(".number").eq(2).text(count2);
			}
		}
	}
	
</script>