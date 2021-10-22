<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
    <!-- 마이페이지 영역 시작 -->
    <section>
        <div class="userinfo-container d-flex align-items-center justify-content-center">
            <div class="userinfo-con d-flex justify-content-center">
                <div class="left-info-con">
                    <i class="bi bi-person-circle"></i>
                </div>
                <div class="right-info-con">
                    <ul class="nickname-box d-flex justify-content-center">
                        <li>
                            <h3>파란머리연어</h3>
                        </li>
                        <li><i class="bi bi-gear-fill"></i></li>
                    </ul>
                    <ul class="cnt-box d-flex justify-content-center">
                        <li class="review-cnt-box">리뷰수 30</li>
                        <li class="like-cnt-box">좋아요 1034</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="mypage-nav container">
            <div class="row">
                <div class="col">
                    <!-- 탭 메뉴 시작 -->
                    <ul class="nav nav-tabs d-flex justify-content-center">
                        <li class="nav-item w-25">
                            <a class="nav-link d-flex justify-content-center active" data-toggle="tab" href="#userinfo">
                                <i class="bi bi-person-fill"></i>
                            </a>
                        </li>
                        <li class="nav-item  w-25">
                            <a class="nav-link d-flex justify-content-center" data-toggle="tab" href="#myreview"><i
                                    class="bi bi-pencil-fill"></i></a>
                        </li>
                        <li class="nav-item  w-25">
                            <a class="nav-link d-flex justify-content-center" data-toggle="tab" href="#wishlist"><i
                                    class="bi bi-heart-fill"></i></a>
                        </li>
                    </ul>
                    <!-- 탭 메뉴 끝 -->

                    <!-- 탭 메뉴 내용 시작 -->
                    <div class="tab-content d-flex justify-content-center">
                        
                        <!-- 회원정보 영역  시작 -->
                        <div class="tab-pane fade show active" id="userinfo">

                                <div class="join-con container ">
                                    <div class="card card-container ">
                                        <h2>회원정보</h2>
                                        <form class="form-signin">
                                            <div class="join-value">
                                                <label for="username">ID</label>
                                                <input placeholder="ID를 입력하세요" autofocus type="text" id="username"
                                                    class="form-control" size="30">
                                            </div>

                                            <div class="join-value">
                                                <label for="password">비밀번호</label>
                                                <input type="password" id="password" class="form-control" size="30">
                                            </div>

                                            <div class="join-value">
                                                <label for="name">이름</label>
                                                <input placeholder="이름을 입력하세요" autofocus type="text" id="name"
                                                    class="form-control" size="30">
                                            </div>

                                            <div class="join-value">
                                                <label for="nikcname">닉네임</label>
                                                <input placeholder="닉네임을 입력하세요" autofocus type="text" id="nickname"
                                                    class="form-control" size="30">
                                            </div>

                                            <div class="join-value">
                                                <label for="email">이메일</label>
                                                <input required type="email" id="email" class="form-control" size="30">
                                                <!-- required 필수로 입력 -->
                                            </div>

                                            <div class="join-value">
                                                <label for="bithdate">생년월일</label>
                                                <input type="date" id="birthdate" class="form-control">
                                            </div>

                                            <div class="join-value">
                                                <label for="gender">성별</label>
                                                <select id="gender" class="form-control">
                                                    <option value="male">남성</option>
                                                    <option value="female" selected>여성</option>
                                                </select>
                                            </div>

                                            <div class="join-value checkboxs">
                                                <label>피부타입</label>
                                                <input type="checkbox" value="skinType">건성
                                                <input type="checkbox" value="skinType">중성
                                                <input type="checkbox" value="skinType">지성
                                                <input type="checkbox" value="skinType">복합성
                                            </div>

                                            <div class="join-value checkboxs">
                                                <label>피부고민</label>
                                                <input type="checkbox" value="skinWorry">여드름
                                                <input type="checkbox" value="skinWorry">민감성
                                                <input type="checkbox" value="skinWorry">흉터
                                                <input type="checkbox" value="skinWorry">혈관
                                                <input type="checkbox" value="skinWorry">색조
                                                <input type="checkbox" value="skinWorry">해당없음
                                            </div>

                                            <div class="join-value">
                                                <label>피부톤</label>
                                                <div id="palletCon" class="color-con">
                                                    <div id="palletBox" class="pallet">
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                        </div>
                        <!-- 회원정보 영역  끝 -->

                        <!-- 내리뷰관리 영역  시작 -->
                        <div class="tab-pane fade w-75" id="myreview">
                            <h2 class="text-center mb-5">내리뷰관리</h2>
                            <!-- 내리뷰목록 시작 -->
                            <div class="card mb-3 shadow">
                                <div class="row g-0">
                                    <div class="col-md-4">
                                        <img src="..." class="img-fluid rounded-start" alt="이미지자리">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body  d-flex align-items-center ">
                                            <div class="card-left">
                                                <p class="category-rout">
                                                    <small class="text-muted">
                                                        <i class="bi bi-house-door-fill"></i>
                                                        카테고리
                                                    </small>
                                                </p>
                                                <h4 class="myreview-title">Title</h4>
                                                <p class="myreview-writer">작성자</p>
                                                <p class="skin-type">피부타입</p>
                                            </div>
                                            <div class="card-right">
                                                <button type="button" class="btn btn-secondary mt-3 mb-5">수정</button>
                                                <p class="date">2021.10.9</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card mb-3 shadow">
                                <div class="row g-0">
                                    <div class="col-md-4">
                                        <img src="..." class="img-fluid rounded-start" alt="이미지자리">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body  d-flex align-items-center ">
                                            <div class="card-left">
                                                <p class="category-rout">
                                                    <small class="text-muted">
                                                        <i class="bi bi-house-door-fill"></i>
                                                        카테고리
                                                    </small>
                                                </p>
                                                <h4 class="myreview-title">Title</h4>
                                                <p class="myreview-writer">작성자</p>
                                                <p class="skin-type">피부타입</p>
                                            </div>
                                            <div class="card-right">
                                                <button type="button" class="btn btn-secondary mt-3 mb-5">수정</button>
                                                <p class="date">2021.10.9</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card mb-3 shadow">
                                <div class="row g-0">
                                    <div class="col-md-4">
                                        <img src="..." class="img-fluid rounded-start" alt="이미지자리">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body  d-flex align-items-center ">
                                            <div class="card-left">
                                                <p class="category-rout">
                                                    <small class="text-muted">
                                                        <i class="bi bi-house-door-fill"></i>
                                                        카테고리
                                                    </small>
                                                </p>
                                                <h4 class="myreview-title">Title</h4>
                                                <p class="myreview-writer">작성자</p>
                                                <p class="skin-type">피부타입</p>
                                            </div>
                                            <div class="card-right">
                                                <button type="button" class="btn btn-secondary mt-3 mb-5">수정</button>
                                                <p class="date">2021.10.9</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card mb-3 shadow">
                                <div class="row g-0">
                                    <div class="col-md-4">
                                        <img src="..." class="img-fluid rounded-start" alt="이미지자리">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body  d-flex align-items-center ">
                                            <div class="card-left">
                                                <p class="category-rout">
                                                    <small class="text-muted">
                                                        <i class="bi bi-house-door-fill"></i>
                                                        카테고리
                                                    </small>
                                                </p>
                                                <h4 class="myreview-title">Title</h4>
                                                <p class="myreview-writer">작성자</p>
                                                <p class="skin-type">피부타입</p>
                                            </div>
                                            <div class="card-right">
                                                <button type="button" class="btn btn-secondary mt-3 mb-5">수정</button>
                                                <p class="date">2021.10.9</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 내리뷰목록 끝 -->

                            <!-- 페이징 시작 -->
                            <nav aria-label="Page navigation example">
                                <ul class="pagination d-flex justify-content-center mt-5 mb-5">
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                            <!-- 페이징 끝 -->
                        </div>
                        <!-- 내리뷰관리 영역  끝 -->

                        <!-- 위시리스트 영역  시작 -->
                        <div class="tab-pane fade  w-75" id="wishlist">
                            <h2 class="text-center mb-5">위시리스트</h2>
                            <!-- 위시리스트 목록 시작 -->
                            <div class="card mb-3 shadow">
                                <div class="row g-0">
                                    <div class="col-md-4">
                                        <img src="..." class="img-fluid rounded-start" alt="이미지자리">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body  d-flex align-items-center ">
                                            <div class="card-left">
                                                <p class="category-rout">
                                                    <small class="text-muted">
                                                        <i class="bi bi-house-door-fill"></i>
                                                        카테고리
                                                    </small>
                                                </p>
                                                <p class="wishlist-brand">브랜드</p>
                                                <h4 class="whilist-item-title">제품명</h4>
                                            </div>
                                            <div class="card-right">
                                                <button type="button" class="btn btn-secondary mt-3 mb-5">삭제</button>
                                                <p class="price">9,000원</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card mb-3 shadow">
                                <div class="row g-0">
                                    <div class="col-md-4">
                                        <img src="..." class="img-fluid rounded-start" alt="이미지자리">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body  d-flex align-items-center ">
                                            <div class="card-left">
                                                <p class="category-rout">
                                                    <small class="text-muted">
                                                        <i class="bi bi-house-door-fill"></i>
                                                        카테고리
                                                    </small>
                                                </p>
                                                <p class="wishlist-brand">브랜드</p>
                                                <h4 class="whilist-item-title">제품명</h4>
                                            </div>
                                            <div class="card-right">
                                                <button type="button" class="btn btn-secondary mt-3 mb-5">삭제</button>
                                                <p class="price">9,000원</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card mb-3 shadow">
                                <div class="row g-0">
                                    <div class="col-md-4">
                                        <img src="..." class="img-fluid rounded-start" alt="이미지자리">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body  d-flex align-items-center ">
                                            <div class="card-left">
                                                <p class="category-rout">
                                                    <small class="text-muted">
                                                        <i class="bi bi-house-door-fill"></i>
                                                        카테고리
                                                    </small>
                                                </p>
                                                <p class="wishlist-brand">브랜드</p>
                                                <h4 class="whilist-item-title">제품명</h4>
                                            </div>
                                            <div class="card-right">
                                                <button type="button" class="btn btn-secondary mt-3 mb-5">삭제</button>
                                                <p class="price">9,000원</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card mb-3 shadow">
                                <div class="row g-0">
                                    <div class="col-md-4">
                                        <img src="..." class="img-fluid rounded-start" alt="이미지자리">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body  d-flex align-items-center ">
                                            <div class="card-left">
                                                <p class="category-rout">
                                                    <small class="text-muted">
                                                        <i class="bi bi-house-door-fill"></i>
                                                        카테고리
                                                    </small>
                                                </p>
                                                <p class="wishlist-brand">브랜드</p>
                                                <h4 class="whilist-item-title">제품명</h4>
                                            </div>
                                            <div class="card-right">
                                                <button type="button" class="btn btn-secondary mt-3 mb-5">삭제</button>
                                                <p class="price">9,000원</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 위시리스트 목록 끝 -->

                            <!-- 페이징 시작 -->
                            <nav aria-label="Page navigation example">
                                <ul class="pagination d-flex justify-content-center mt-5 mb-5">
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                            <!-- 페이징 끝 -->
                        </div>
                        <!-- 위시리스트 영역  끝 -->
                    </div>
                    <!-- 탭 메뉴 내용 끝 -->
                </div>
            </div>
        </div>
    </section>
    <!-- 마이페이지 영역 끝 -->
<%@ include file="../layout/footer.jsp"%>