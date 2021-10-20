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
 	color:black;
}
</style>

</head>

<body style="max-width:80%; margin:0 auto;">
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

		<!-- 선택창자리 -->
		<div id="section1">
			<div class="card w-75" style="width:100%; height:100%; border: none;">
				<div class="card-body">
					<h5 class="card-title">찾고 싶은 피부 타입을 선택해주세요.</h5>
					<p class="card-text">
					<form id="search-container">
						<div id="search-container-sub1">
							<div id="select-type1">
								<input type="checkbox" id="select1"> <label
									for="select1">건성</label> <input type="checkbox" id="select2">
								<label for="select2">중성</label> <input type="checkbox"
									id="select3"> <label for="select3">지성</label> <input
									type="checkbox" id="select4"> <label for="select4">복합성</label>
							</div>
							<div id="select-type2">
								<input type="checkbox" id="select5"> <label
									for="select5">여드름</label> <input type="checkbox" id="select6">
								<label for="select6">민감성</label> <input type="checkbox"
									id="select7"> <label for="select7">흉터</label> <input
									type="checkbox" id="select8"> <label for="select8">혈관</label>
								<input type="checkbox" id="select9"> <label
									for="select9">색조</label>
							</div>
						</div>
						<button id="search-container-sub2" type="submit"
							class="btn btn-secondary">검색</button>
					</form>
					</p>
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
			<div class="card mb-3 shadow" style="width:100%; ">
				<div class="row g-0">
					<div class="col-md-4" style="border-right: 1px solid rgb(219, 219, 219);">
						<img src="..." class="img-fluid rounded-start" alt="이미지자리">
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
                                    </svg> 카테고리
								</small>
							</p>
							<h4 id="title">Title</h4>
							<p id="writer">작성자</p>
							<div id="card-sub">
								<p id="skin-type">피부타입</p>
								<p id="date">2021.10.9</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="card mb-3 shadow" style="width: 100%;">
				<div class="row g-0">
					<div class="col-md-4" style="border-right: 1px solid rgb(219, 219, 219);">
						<img src="..." class="img-fluid rounded-start" alt="이미지자리">
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
                                    </svg> 카테고리
								</small>
							</p>
							<h4 id="title">Title</h4>
							<p id="writer">작성자</p>
							<div id="card-sub">
								<p id="skin-type">피부타입</p>
								<p id="date">2021.10.9</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="card mb-3 shadow" style="width: 100%;">
				<div class="row g-0">
					<div class="col-md-4" style="border-right: 1px solid rgb(219, 219, 219);">
						<img src="..." class="img-fluid rounded-start" alt="이미지자리">
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
                                    </svg> 카테고리
								</small>
							</p>
							<h4 id="title">Title</h4>
							<p id="writer">작성자</p>
							<div id="card-sub">
								<p id="skin-type">피부타입</p>
								<p id="date">2021.10.9</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="card mb-3 shadow" style="width: 100%;">
				<div class="row g-0">
					<div class="col-md-4" style="border-right: 1px solid rgb(219, 219, 219);">
						<img src="..." class="img-fluid rounded-start" alt="이미지자리">
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
                                    </svg> 카테고리
								</small>
							</p>
							<h4 id="title">Title</h4>
							<p id="writer">작성자</p>
							<div id="card-sub">
								<p id="skin-type">피부타입</p>
								<p id="date">2021.10.9</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- 페이지네이션자리 -->
			<nav aria-label="Page navigation example">
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