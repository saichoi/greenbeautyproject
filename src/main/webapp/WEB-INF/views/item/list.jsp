<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/css/reset.css" type="text/css" rel="stylesheet">
<link href="/css/dayeon.css" type="text/css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="/js/dayeon.js"></script>

<style>
a {
	text-decoration: none;
	color: black;
}
</style>
</head>

<body style="max-width: 80%; margin: 0 auto;">
	<!-- 헤더자리 -->
	<%@ include file="../layout/header.jsp"%>

	<!-- 메인자리 -->
	<main>
		<!-- 메인컨테이너자리 -->
		<div id="maincontainer">
			<div id="ci1">
				<!-- 아이콘 -->
				<div id="i1">
					<svg xmlns="http://www.w3.org/2000/svg" width="150" height="150"
						fill="currentColor" class="bi bi-pencil-square shadow"
						viewBox="0 0 16 16">
                        <path
							d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z" />
                        <path fill-rule="evenodd"
							d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z" />
                    </svg>
				</div>
				<!-- 텍스트 -->
				<div id="ct1">
					<div class="number">756</div>
					<div class="text">누적리뷰수</div>
				</div>
			</div>

			<div id="ci2">
				<!-- 아이콘 -->
				<div id="i2">
					<svg xmlns="http://www.w3.org/2000/svg" width="150" height="150"
						fill="currentColor" class="bi bi-bucket shadow"
						viewBox="0 0 16 16">
                        <path
							d="M2.522 5H2a.5.5 0 0 0-.494.574l1.372 9.149A1.5 1.5 0 0 0 4.36 16h7.278a1.5 1.5 0 0 0 1.483-1.277l1.373-9.149A.5.5 0 0 0 14 5h-.522A5.5 5.5 0 0 0 2.522 5zm1.005 0a4.5 4.5 0 0 1 8.945 0H3.527zm9.892 1-1.286 8.574a.5.5 0 0 1-.494.426H4.36a.5.5 0 0 1-.494-.426L2.58 6h10.838z" />
                    </svg>
				</div>
				<!-- 텍스트 -->
				<div id="ct2">
					<div class="number">1235</div>
					<div class="text">등록제품수</div>
				</div>
			</div>

			<div id="ci3">
				<!-- 아이콘 -->
				<div id="i3">
					<svg xmlns="http://www.w3.org/2000/svg" width="150" height="150"
						fill="currentColor" class="bi bi-building shadow"
						viewBox="0 0 16 16">
                        <path fill-rule="evenodd"
							d="M14.763.075A.5.5 0 0 1 15 .5v15a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1-.5-.5V14h-1v1.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V10a.5.5 0 0 1 .342-.474L6 7.64V4.5a.5.5 0 0 1 .276-.447l8-4a.5.5 0 0 1 .487.022zM6 8.694 1 10.36V15h5V8.694zM7 15h2v-1.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 .5.5V15h2V1.309l-7 3.5V15z" />
                        <path
							d="M2 11h1v1H2v-1zm2 0h1v1H4v-1zm-2 2h1v1H2v-1zm2 0h1v1H4v-1zm4-4h1v1H8V9zm2 0h1v1h-1V9zm-2 2h1v1H8v-1zm2 0h1v1h-1v-1zm2-2h1v1h-1V9zm0 2h1v1h-1v-1zM8 7h1v1H8V7zm2 0h1v1h-1V7zm2 0h1v1h-1V7zM8 5h1v1H8V5zm2 0h1v1h-1V5zm2 0h1v1h-1V5zm0-2h1v1h-1V3z" />
                    </svg>
				</div>
				<!-- 텍스트 -->
				<div id="ct3">
					<div class="number">156</div>
					<div class="text">브랜드수</div>
				</div>
			</div>

		</div>
	</main>

	<aside-1> <!-- 서브메뉴자리 -->
	<div id="main_menu">
		<div id="menu1">
			<div class="top_menu">
				<span id="clicktoggle1">스킨케어<i class="bi bi-caret-down-fill"></i></span>
				<div class="sub_menu">
					<div class="select-menu">
						<a href="#">스킨/토너</a>
					</div>
					<div class="select-menu">
						<a href="#">로션/에멀젼</a>
					</div>
					<div class="select-menu">
						<a href="#">에센스/세럼</a>
					</div>
					<div class="select-menu">
						<a href="#">크림</a>
					</div>
					<div class="select-menu">
						<a href="#">미스트</a>
					</div>
					<div class="select-menu">
						<a href="#">마스크/팩</a>
					</div>
					<div class="select-menu">
						<a href="#">페이스오일</a>
					</div>
				</div>
			</div>
		</div>

		<div id="menu2">
			<div class="top_menu">
				<span id="clicktoggle2">클렌징<i class="bi bi-caret-down-fill"></i></span>
				<div class="sub_menu">
					<div class="select-menu">
						<a href="#">클렌징폼</a>
					</div>
					<div class="select-menu">
						<a href="#">클렌징워터</a>
					</div>
					<div class="select-menu">
						<a href="#">클렌징오일</a>
					</div>
					<div class="select-menu">
						<a href="#">클렌징티슈</a>
					</div>
					<div class="select-menu">
						<a href="#">메이크업리무버</a>
					</div>
				</div>
			</div>
		</div>

		<div id="menu3">
			<div class="top_menu">
				<span id="clicktoggle3">선케어<i class="bi bi-caret-down-fill"></i></span>
				<div class="sub_menu">
					<div class="select-menu">
						<a href="#">선블럭</a>
					</div>
					<div class="select-menu">
						<a href="#">선스프레이</a>
					</div>
					<div class="select-menu">
						<a href="#">선스틱</a>
					</div>
				</div>
			</div>
		</div>

		<div id="menu4">
			<div class="top_menu">
				<span id="clicktoggle4">메이크업<i class="bi bi-caret-down-fill"></i></span>
				<div class="sub_menu">
					<div class="select-menu">
						<a href="#">페이스</a>
					</div>
					<div class="select-menu">
						<a href="#">립</a>
					</div>
					<div class="select-menu">
						<a href="#">아이</a>
					</div>
					<div class="select-menu">
						<a href="#">치크</a>
					</div>
					<div class="select-menu">
						<a href="#">네일</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</aside-1>

	<section>
		<!-- 검색창자리 -->
		<div class="input-group">
			<input type="text" class="form-control" placeholder="Search">
			<div class="input-group-append">
				<button class="btn btn-secondary" type="button">
					<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
						fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                        <path
							d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                    </svg>
				</button>
			</div>
		</div>
		<div id="section1">
			<div id="item-count">3,456개의 제품</div>

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
				<div class="col">
					<div class="card h-100 shadow">
						<div id="item-image">
							<img src="..." class="card-img-top" alt="제품이미지">
						</div>
						<div class="card-body"
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
								브랜드</div>
							<h5 id="item-name"
								style="width: 100%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">제품명</h5>
							<div id="price">9,900원</div>
						</div>
					</div>
				</div>

				<div class="col">
					<div class="card h-100 shadow">
						<div id="item-image">
							<img src="..." class="card-img-top" alt="제품이미지">
						</div>
						<div class="card-body"
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
								브랜드</div>
							<h5 id="item-name"
								style="width: 100%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">제품명</h5>
							<div id="price">9,900원</div>
						</div>
					</div>
				</div>

				<div class="col">
					<div class="card h-100 shadow">
						<div id="item-image">
							<img src="..." class="card-img-top" alt="제품이미지">
						</div>
						<div class="card-body"
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
								브랜드</div>
							<h5 id="item-name"
								style="width: 100%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">제품명</h5>
							<div id="price">9,900원</div>
						</div>
					</div>
				</div>

				<div class="col">
					<div class="card h-100 shadow">
						<div id="item-image">
							<img src="..." class="card-img-top" alt="제품이미지">
						</div>
						<div class="card-body"
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
								브랜드</div>
							<h5 id="item-name"
								style="width: 100%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">제품명</h5>
							<div id="price">9,900원</div>
						</div>
					</div>
				</div>

				<div class="col">
					<div class="card h-100 shadow">
						<div id="item-image">
							<img src="..." class="card-img-top" alt="제품이미지">
						</div>
						<div class="card-body"
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
								브랜드</div>
							<h5 id="item-name"
								style="width: 100%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">제품명</h5>
							<div id="price">9,900원</div>
						</div>
					</div>
				</div>

				<div class="col">
					<div class="card h-100 shadow">
						<div id="item-image">
							<img src="..." class="card-img-top" alt="제품이미지">
						</div>
						<div class="card-body"
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
								브랜드</div>
							<h5 id="item-name"
								style="width: 100%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">제품명</h5>
							<div id="price">9,900원</div>
						</div>
					</div>
				</div>

				<div class="col">
					<div class="card h-100 shadow">
						<div id="item-image">
							<img src="..." class="card-img-top" alt="제품이미지">
						</div>
						<div class="card-body"
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
								브랜드</div>
							<h5 id="item-name"
								style="width: 100%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">제품명</h5>
							<div id="price">9,900원</div>
						</div>
					</div>
				</div>

				<div class="col">
					<div class="card h-100 shadow">
						<div id="item-image">
							<img src="..." class="card-img-top" alt="제품이미지">
						</div>
						<div class="card-body"
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
								브랜드</div>
							<h5 id="item-name"
								style="width: 100%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">제품명</h5>
							<div id="price">9,900원</div>
						</div>
					</div>
				</div>

				<div class="col">
					<div class="card h-100 shadow">
						<div id="item-image">
							<img src="..." class="card-img-top" alt="제품이미지">
						</div>
						<div class="card-body"
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
								브랜드</div>
							<h5 id="item-name"
								style="width: 100%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">제품명</h5>
							<div id="price">9,900원</div>
						</div>
					</div>
				</div>

				<div class="col">
					<div class="card h-100 shadow">
						<div id="item-image">
							<img src="..." class="card-img-top" alt="제품이미지">
						</div>
						<div class="card-body"
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
								브랜드</div>
							<h5 id="item-name"
								style="width: 100%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">제품명</h5>
							<div id="price">9,900원</div>
						</div>
					</div>
				</div>

				<div class="col">
					<div class="card h-100 shadow">
						<div id="item-image">
							<img src="..." class="card-img-top" alt="제품이미지">
						</div>
						<div class="card-body"
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
								브랜드</div>
							<h5 id="item-name"
								style="width: 100%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">제품명</h5>
							<div id="price">9,900원</div>
						</div>
					</div>
				</div>

				<div class="col">
					<div class="card h-100 shadow">
						<div id="item-image">
							<img src="..." class="card-img-top" alt="제품이미지">
						</div>
						<div class="card-body"
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
								브랜드</div>
							<h5 id="item-name"
								style="width: 100%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">제품명</h5>
							<div id="price">9,900원</div>
						</div>
					</div>
				</div>
			</div>

			<!-- 페이지네이션자리 -->
			<nav aria-label="Page navigation example" style="margin-top: 10%;">
				<ul class="pagination">
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</nav>
		</div>
	</section>

	<aside-2> </aside-2>

	<%@ include file="../layout/footer.jsp"%>
</body>

</html>