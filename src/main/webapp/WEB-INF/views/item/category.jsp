<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<!-- 헤더자리 -->
	<%@ include file="../layout/header.jsp"%>

	<!-- 메인자리 -->
	<main>
		<!-- 케러셀자리 -->
		<div id="carouselExampleIndicators"
			class="carousel carousel slide carousel-fade" data-bs-ride="carousel"
			style="overflow: hidden; z-index: -9">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="/image/item1.jpg" class="d-block w-100" alt="">
				</div>
				<div class="carousel-item">
					<img src="/image/item2.jpg" class="d-block w-100" alt="">
				</div>
				<div class="carousel-item">
					<img src="/image/item3.jpg" class="d-block w-100" alt="">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</main>

	<body-2 style="max-width:90%; margin:0 auto;"> 
	<aside-1>
	<!-- 서브메뉴자리 -->
	<%@ include file="../layout/itemSidebar.jsp"%>
	</aside-1>

	<section class="">
		<!-- 검색창자리 -->
		<div class="input-group">
			<input type="text" class="form-control" placeholder="Search"
				style="height: 100%">
			<div class="input-group-append">
				<button class="btn btn-secondary" type="button">
					<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
						fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                        <path
							d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                    </svg>
				</button>
			</div>
		</div>
		<div id="section1">
			<div id="item-count">${itemsEntity.totalElements }개의 <b>${itemsEntity.content[1].category.cname }</b> 제품</div>

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
						<div class="card h-100 shadow" onClick="selectById(${item.id})" style="overflow: hidden;">
							<div id="item-image">
								<img id="img-select" src="${item.image }" class="card-img-top" alt="제품이미지">
							</div>
							<div id="card-body-select" class="card-body"
								style="padding: 5%; display: flex; flex-direction: column;">
								<div id="rating">
									<div id="rating-1">
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
										<svg xmlns="http://www.w3.org/2000/svg" width="13" height="13"
											fill="currentColor" class="bi bi-star-fill"
											viewBox="1 -1 16 16" style="margin-bottom: 15%;">
                                        <path
												d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                                    </svg>
										5.0
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

		<!-- 페이지네이션자리 -->
			<ul class="pagination d-flex justify-content-center mt-5">
				<c:choose>
					<c:when test="${itemsEntity.first}">
						<li class="page-item disabled"><a class="page-link"
							href="/item/list?page=${itemsEntity.number - 1}">&laquo;</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link"
							href="/item/list?page=${itemsEntity.number - 1}">&laquo;</a></li>
					</c:otherwise>
				</c:choose>

				<c:forEach begin="${startPage}" end="${endPage}" var="idx">
					<li class="page-item"><a class="page-link"
						href="/item/list?page=${idx-1}">${idx}</a></li>
				</c:forEach>

				<c:choose>
					<c:when test="${itemsEntity.last}">
						<li class="page-item disabled"><a class="page-link"
							href="/item/list?page=${param.page + 1}">&raquo;</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link"
							href="/item/list?page=${param.page + 1}">&raquo;</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</section>

	<aside-2>
	<p id="empty"></p>
	 <c:if test="${!empty itemsEntity.content[0].id }">
	<a id="product-move" href="/board/category/${itemsEntity.content[0].category.id }?page=0">리뷰보러가기 <svg id="move"
			xmlns="http://www.w3.org/2000/svg" width="23" height="23"
			fill="currentColor" class="bi bi-arrow-right-circle-fill"
			viewBox="0 0 16 16">
                <path
				d="M8 0a8 8 0 1 1 0 16A8 8 0 0 1 8 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z" />
            </svg>
	</a> 
	</c:if>
	</aside-2> 
	</body-2>
	<%@ include file="../layout/footer.jsp"%>
</body>

</html>