<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- Stylesheet -->
<link href="/css/reset.css" type="text/css" rel="stylesheet">
<link href="/css/dahye.css" type="text/css" rel="stylesheet">
<link href="/css/dayeon.css" type="text/css" rel="stylesheet">

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="/js/dahye.js"></script>
<script src="/js/dayeon.js"></script>

<!-- BootStrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"  integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<!-- SummerNote -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<body>

<!-- 헤더 시작 -->
<header>
    <!-- 네브바 시작 -->
    <nav class="header navbar navbar-expand-lg navbar-light d-flex">

        <!-- 왼쪽 메뉴 -->

        <div class="left-nav d-flex flex-row p2">
            <div class="logo p-2">
                <a class="navbar-brand" href="/board">
               		뷰티모아
                </a>
            </div>

            <div class="collapse navbar-collapse p-2" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="/board">리뷰보기</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/item/list">제품보기</a>
                    </li>
                </ul>
            </div>
        </div>

        <!-- 오른쪽 메뉴 -->
        <div class="right-nav ml-auto p-2">
            <ul class="navbar-nav">
                <li class="nav-item mr-3">
                    <a class="nav-link" href="/api/user/{userId}/mypage?key=wishlist">
                        <i class="bi bi-heart-fill"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/api/user/{userId}/mypage?key=userinfo">
                        <i class="bi bi-person-fill"></i>
                    </a>
                </li>

                <!-- 햄버거 버튼 -->
                <li class="ham-btn">
                    <a class="menu-trigger" href="#">
                        <span></span>
                        <span></span>
                        <span></span>
                    </a>
                </li>
            </ul>
        </div>

    </nav>
    <!-- 네브바 끝 -->


    <!-- 햄버거 메뉴 시작 -->
    <div class="ham-wrap">
        <div class="ham-con">

            <div class="navbar-nav">
                <div class="search-con d-flex justify-content-center">
                    <input type="text" placeholder="검색어를 입력해주세요." />
                    <i class="bi bi-search"></i>
                </div>
            </div>

            <div id="ham-menu-wrap">

                <div class="ham-menu mt-5">
                    <ul class="ham-top-menu">
                        <li><a href="#">리뷰보기<i class="bi bi-caret-down-fill"></i></a>
                            <ul class="ham-sub-menu">
                                <li><a href="/board/1">스킨케어</a></li>
                                <li><a href="/board/2">클렌징</a></li>
                                <li><a href="/board/3">선케어</a></li>
                                <li><a href="/board/4">메이크업</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="ham-top-menu">
                        <li><a href="#">제품보기<i class="bi bi-caret-down-fill"></i></a>
                            <ul class="ham-sub-menu">
                                <li><a href="/item/category/1">스킨케어</a></li>
                                <li><a href="/item/category/2">클렌징</a></li>
                                <li><a href="/item/category/3">선케어</a></li>
                                <li><a href="/item/category/3">메이크업</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
        <!-- 햄버거 메뉴 끝 -->

        <!-- 로그인 전 말풍선 -->
        <div id="balloon-wrap">
            <ul class="balloon">
                <li><a href="/loginForm">로그인</a></li>
                <li><a href="/joinForm">회원 가입</a></li>
            </ul>
            <!-- 로그인 후 말풍선 -->
            <!-- <ul class="balloon">
            <li><a href="/logout">로그아웃</a></li>
            <li><a href="/api/user/{userId}/mypage?key=userinfo">마이페이지</a></li>
            <li><a href="/board/saveForm">리뷰쓰기</a></li>
        </ul> -->
        </div>

</header>
<!-- 헤더 끝 -->