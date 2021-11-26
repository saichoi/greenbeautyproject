<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<!-- 회원가입 컨테이너 시작 -->
<section class="join-section" >
    <div class="join-con container ">
        <div class="card card-container ">
            <h2>회원가입</h2>
            
            <div class="form-signin">
            <form action="/join" method="post">
            
                <div class="join-value">
                    <label for="username" class="label">ID</label>
                    <input placeholder="ID를 입력하세요" type="text" id="username"  
                    class="form-control" name="username" value="admin" size="30" >
                </div>

                <div class="join-value">
                    <label for="password" class="label">비밀번호</label>
                    <input placeholder="비밀번호를 입력하세요" type="password" id="password" 
                     class="form-control" name="password"  value="1234" size="30" >
                </div>

                <div class="join-value">
                    <label for="name" class="label">이름</label>
                    <input placeholder="이름을 입력하세요"  type="text" id="name"  
                    class="form-control" name="name" value="관리자"  size="30" >
                </div>

                <div class="join-value">
                    <label for="nickname" class="label">닉네임</label>
                    <input placeholder="닉네임을 입력하세요" type="text" id="nickname"  
                    class="form-control" name="nickname" value="관리자" size="30" >
                </div>

                <div class="join-value">
                    <label for="email" class="label">이메일</label>
                    <input placeholder="이메일을 입력하세요" type="email" id="email"  
                    class="form-control" name="email" size="30"  value="admin@naver.com">
                </div>

                <div class="join-value">
                    <label for="bithday" class="label">생년월일</label>
                    <input type="date" id="birthday" class="form-control" name="birthday"  value="1993-04-24">
                </div>

                <div class="join-value">
                    <label for="gender" class="label">성별</label>
                    <select id="gender"  class="form-control" name="gender">
                        <option value="남성">남성</option>
                        <option value="여성" selected>여성</option>
                    </select>
                </div>

                <div class="join-value radiobox">
                    <label class="label">피부타입</label>
                    <label><input type="radio" name="skinType" value="건성" checked>건성</label>
                    <label><input type="radio" name="skinType" value="중성">중성</label>
                    <label><input type="radio" name="skinType" value="지성">지성</label>
                    <label><input type="radio" name="skinType" value="복합성">복합성</label>
                </div>

                <div class="join-value radiobox">
                	<label class="label">피부고민</label>
					<label><input type="radio" name="skinTrouble" value="여드름" checked>여드름</label>
                    <label><input type="radio" name="skinTrouble" value="민감성">민감성</label>
                    <label><input type="radio" name="skinTrouble" value="흉터">흉터</label>
                    <label><input type="radio" name="skinTrouble" value="혈관">혈관</label>
                    <label><input type="radio" name="skinTrouble" value="색조">색조</label>
                    <label><input type="radio" name="skinTrouble" value="해당없음">해당없음</label>

                </div>
                
                <div class="join-value">
                    <label class="label">피부톤</label>
                    <div id="palletCon" class="color-con" >
                        <div id="palletBox" class="pallet">
                        	<div class="colorBox text-center">매우밝은</div>
                        	<div class="colorBox text-center pallet-action">밝은<br>(21호)</div>
                        	<div class="colorBox text-center">중간밝은<br>(22호)</div>
                        	<div class="colorBox text-center">차분한<br>(23호)</div>
                        	<div class="colorBox text-center">매우차분한</div>
                        </div>
                      </div>
                </div>

                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">회원가입</button>
				</form>
            </div>
        </div>
    </div>
</section>
<!-- 회원가입 컨테이너 끝-->

<%@ include file="../layout/footer.jsp"%>
