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

	<body-2 style="max-width:90%; margin:0 auto;"> 
	<aside-1>
	<!-- 서브메뉴자리 -->
	<%@ include file="../layout/itemSidebar.jsp"%>
	</aside-1>

	<section class="mb-3">
		<!-- 검색창자리 -->
		<form class="input-group">
			<input type="text" class="form-control"  id="serachText" name="searchText"
			  value="${param.searchText}" style="height: 100%">
			<div class="input-group-append">
				<button class="btn btn-secondary" type="button">
					<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
						fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                        <path
							d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                    </svg>
				</button>
			</div>
		</form>
		<div id="section1">
			<div id="item-count">${itemsEntity.totalElements }개의 제품</div>

			<!-- 콤보박스자리 -->
			<select class="form-select" aria-label="Default select example">
				<option selected>리뷰많은순</option>
				<option value="1">조회순</option>
				<option value="2">평점순</option>
			</select>
		</div>

		<div id="section2">
			<!-- 제품리스트자리 -->
			<div class="row w-100 row-cols-1 row-cols-md-4 g-3">
				<c:forEach var="item" items="${itemsEntity.content }">
					<div class="col">
						<div class="card h-100 shadow" onClick="moveItemDetail(${item.id})" style="overflow: hidden;">
							<div id="item-image">
								<img id="img-select" src="${item.image }" class="card-img-top" alt="제품이미지">
							</div>
							<div id="card-body-select" class="card-body"
								style="padding: 5%; display: flex; flex-direction: column;">
								<div id="rating">
									<div id="rating-1" style="margin-top:3%">
										<svg xmlns="http://www.w3.org/2000/svg" width="13" height="13"
											fill="currentColor" class="bi bi-pencil-square"
											viewBox="1 -1 16 16" style="margin-bottom: 15%;">
                                        <path
												d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z" />
                                        <path fill-rule="evenodd"
												d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z" />
                                    </svg>
										64
									</div>
									<div id="rating-2">
                                    <span class="star-3" > ★ <span style="width:calc(14%*${item.rating })">★</span></span>
                                    <fmt:formatNumber value="${item.rating }" pattern="0.0"/>
									</div>
								</div>
								<div id="brand"
									style="width: 100%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">
									${item.brand.bname }</div>
								<h5 id="item-name"
									style="width: 100%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">${item.iname }</h5>
								<div id="price">${item.price }원</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>

		<!-- 페이지네이션자리 -->
		<ul class="pagination d-flex justify-content-center mt-5">
			<c:choose>
				<c:when test="${itemsEntity.first}">
					<li class="page-item disabled"><a class="page-link"
						href="/item/list?page=${itemsEntity.number - 1}&searchText=${param.searchText}">&laquo;</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link"
						href="/item/list?page=${itemsEntity.number - 1}&searchText=${param.searchText}">&laquo;</a></li>
				</c:otherwise>
			</c:choose>

			<c:forEach begin="${startPage}" end="${endPage}" var="idx">
				<c:choose>
					<c:when test="${idx eq nowPage}">
						<li class="page-item disabled"><a
							class="page-link page-active"
							href="/item/list?page=${idx-1}&searchText=${param.searchText}">${idx}</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link"
							href="/item/list?page=${idx-1}&searchText=${param.searchText}">${idx}</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>

			<c:choose>
				<c:when test="${itemsEntity.last}">
					<li class="page-item disabled"><a class="page-link"
						href="/item/list?page=${param.page + 1}&searchText=${param.searchText}">&raquo;</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link"
						href="/item/list?page=${param.page + 1}&searchText=${param.searchText}">&raquo;</a></li>
				</c:otherwise>
			</c:choose>
		</ul>
	</section>
	<aside-2> </aside-2>
	</body-2>
	<%@ include file="../layout/footer.jsp"%>
</body>
</html>