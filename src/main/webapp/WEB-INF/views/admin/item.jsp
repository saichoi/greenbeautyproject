<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품관리</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<link href="/admin/css/styles.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
    crossorigin="anonymous"></script>
</head>
 <body class="sb-nav-fixed">

 <!-- 사이드 메뉴 시작 -->
    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <!-- Navbar Brand-->
        <a class="navbar-brand ps-3" href="/admin">GreenBeauty Admin</a>
        <!-- Sidebar Toggle-->
        <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i
                class="fas fa-bars"></i></button>
        <!-- Navbar Search-->
        <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
            <div class="input-group">
                <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..."
                    aria-describedby="btnNavbarSearch" />
                <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i
                        class="fas fa-search"></i></button>
            </div>
        </form>
        <!-- 네브바 시작-->
        <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown"
                    aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="/admin/login">로그인</a></li>
                    <li><hr class="dropdown-divider"/></li>
                    <li><a class="dropdown-item" href="/admin/join">회원가입</a></li>
                </ul>
            </li>
        </ul>
        <!-- 네브바 끝-->
    </nav>
     
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <div class="sb-sidenav-menu-heading">관리자 메뉴</div>
                        <a class="nav-link" href="/admin">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            대시보드
                        </a>
                        <a class="nav-link" href="/admin/charts">
                            <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                            사이트 통계
                        </a>
                        <a class="nav-link" href="/admin/user">
                            <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                            회원관리
                        </a>
                        <a class="nav-link" href="/admin/board">
                            <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                            리뷰관리
                        </a>
                        <a class="nav-link" href="/admin/brand">
                            <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                            브랜드관리
                        </a>
                        <a class="nav-link" href="/admin/item">
                            <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                            제품관리
                        </a>
                    </div>
                </div>
            </nav>
           <!-- 사이드 메뉴 끝-->
           
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">제품관리</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="/admin">대시보드</a></li>
                            <li class="breadcrumb-item active">제품관리</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                                <b>화장품을 분석하다</b> 제품관리 페이지
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                제품관리
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>제품명</th>
                                            <th>브랜드명</th>
                                            <th>만족도 평균</th>
                                            <th>보유 리뷰수</th>
                                            <th>제품 등록일</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>제품명</th>
                                            <th>브랜드명</th>
                                            <th>만족도 평균</th>
                                            <th>보유 리뷰수</th>
                                            <th>제품 등록일</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <th>샤넬미스트</th>
                                            <th>샤넬</th>
                                            <th>★★★</th>
                                            <th>456</th>
                                            <th>2021/10/01</th>
                                        </tr>
                                        <tr>
                                            <th>샤넬미스트</th>
                                            <th>샤넬</th>
                                            <th>★★★</th>
                                            <th>456</th>
                                            <th>2021/10/01</th>
                                        </tr>
                                        <tr>
                                            <th>샤넬미스트</th>
                                            <th>샤넬</th>
                                            <th>★★★</th>
                                            <th>456</th>
                                            <th>2021/10/01</th>
                                        </tr>
                                        <tr>
                                            <th>샤넬미스트</th>
                                            <th>샤넬</th>
                                            <th>★★★</th>
                                            <th>456</th>
                                            <th>2021/10/01</th>
                                        </tr>
                                        <tr>
                                            <th>샤넬미스트</th>
                                            <th>샤넬</th>
                                            <th>★★★</th>
                                            <th>456</th>
                                            <th>2021/10/01</th>
                                        </tr>
                                        <tr>
                                            <th>샤넬미스트</th>
                                            <th>샤넬</th>
                                            <th>★★★</th>
                                            <th>456</th>
                                            <th>2021/10/01</th>
                                        </tr>
                                        <tr>
                                            <th>샤넬미스트</th>
                                            <th>샤넬</th>
                                            <th>★★★</th>
                                            <th>456</th>
                                            <th>2021/10/01</th>
                                        </tr>
                                        <tr>
                                            <th>샤넬미스트</th>
                                            <th>샤넬</th>
                                            <th>★★★</th>
                                            <th>456</th>
                                            <th>2021/10/01</th>
                                        </tr>
                                        <tr>
                                            <th>샤넬미스트</th>
                                            <th>샤넬</th>
                                            <th>★★★</th>
                                            <th>456</th>
                                            <th>2021/10/01</th>
                                        </tr>
                                        <tr>
                                            <th>샤넬미스트</th>
                                            <th>샤넬</th>
                                            <th>★★★</th>
                                            <th>456</th>
                                            <th>2021/10/01</th>
                                        </tr>
                                        <tr>
                                            <th>샤넬미스트</th>
                                            <th>샤넬</th>
                                            <th>★★★</th>
                                            <th>456</th>
                                            <th>2021/10/01</th>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; GreenBeauty 2021</div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/admin/js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="/admin/js/datatables-simple-demo.js"></script>
    </body>
</html>