<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<!-- 회원가입 컨테이너 시작 -->
<section class="join-section">
    <div class="join-con container ">
        <div class="card card-container ">
            <h2>회원가입</h2>
            <form class="form-signin">
                <div class="join-value">
                    <label for="username">ID</label>
                    <input placeholder="ID를 입력하세요" autofocus type="text" id="username"  class="form-control" size="30" >
                </div>

                <div class="join-value">
                    <label for="password">비밀번호</label>
                    <input type="password" id="password"  class="form-control" size="30" >
                </div>

                <div class="join-value">
                    <label for="name">이름</label>
                    <input placeholder="이름을 입력하세요" autofocus type="text" id="name"  class="form-control" size="30" >
                </div>

                <div class="join-value">
                    <label for="nikcname">닉네임</label>
                    <input placeholder="닉네임을 입력하세요" autofocus type="text" id="nickname"  class="form-control" size="30" >
                </div>

                <div class="join-value">
                    <label for="email">이메일</label>
                    <input required type="email" id="email"  class="form-control" size="30" > <!-- required 필수로 입력 -->
                </div>

                <div class="join-value">
                    <label for="bithdate">생년월일</label>
                    <input type="date" id="birthdate"   class="form-control">
                </div>

                <div class="join-value">
                    <label for="gender">성별</label>
                    <select id="gender"  class="form-control">
                        <option value="male">남성</option>
                        <option value="female" selected>여성</option>
                    </select>
                </div>

                <div class="join-value checkboxs">
                    <label >피부타입</label>
                    <input type="checkbox" value="skinType" >건성
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
                    <div id="palletCon" class="color-con" >
                        <div id="palletBox" class="pallet">
                        </div>
                      </div>
                </div>

                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">회원가입</button>
                

            </form>
        </div>
    </div>
</section>
<!-- 회원가입 컨테이너 끝-->

<%@ include file="../layout/footer.jsp"%>