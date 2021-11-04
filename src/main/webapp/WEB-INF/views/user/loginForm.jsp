<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
 
<!-- 로그인 컨테이너 시작 -->
<section class="login-section">
    <div class="login-con container">
        <div class="card card-container">
            <div class="login-person d-flex justify-content-center"><i class="bi bi-person-circle"></i></div>
            <div class="form-signin">
            <form action="/login" method="post">
                <span id="reauth-email" class="reauth-email"></span>
                <input type="text" id="inputUsername" class="form-control" name="username" placeholder="아이디" required
                    autofocus>
                <input type="password" id="inputPassword" class="form-control" name="password" placeholder="비밀번호" required>
                <div id="remember" class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me"> 아이디 저장
                    </label>
                </div>
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">로그인</button>
            </form>
            </div>
            <a href="/joinForm" class="get-join">
                회원가입
            </a>
        </div>
    </div>
</section>
<!-- 로그인 컨테이너 끝 -->

<%@ include file="../layout/footer.jsp"%>