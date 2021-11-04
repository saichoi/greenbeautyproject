<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<!-- 회원수정 컨테이너 시작 -->
<section class="join-section">
	<div class="join-con container ">
		<div class="card card-container ">
			<h2>회원수정</h2>
			<div class="form-signin">
				<form onsubmit="update(event,${sessionScope.principal.id})">
					<div class="join-value">
						<label for="username">ID</label> 
						<input value="${sessionScope.principal.username}" type="text"
							id="username" class="form-control" size="30" readonly>
					</div>

					<div class="join-value">
						<label for="password">비밀번호</label> 
						<input value="${sessionScope.principal.password}" type="password"
							id="password" class="form-control" size="30">
					</div>

					<div class="join-value">
						<label for="name">이름</label> 
						<input value="${sessionScope.principal.name}" type="text" id="name"
							class="form-control" size="30">
					</div>

					<div class="join-value">
						<label for="nikcname">닉네임</label> 
						<input value="${sessionScope.principal.nickname}" type="text"
							id="nickname" class="form-control" size="30">
					</div>

					<div class="join-value">
						<label for="email">이메일</label> 
						<input value="${sessionScope.principal.email}" type="email" id="email"
							class="form-control" size="30">
					</div>

					<div class="join-value">
						<label for="bithdate">생년월일</label> 
						<input value="${sessionScope.principal.birthday}" type="date"
							id="birthday" class="form-control">
					</div>

					<div class="join-value">
						<label for="gender">성별</label> 
						 	<select id="gender"  class="form-control" name="gender">
		                        <option value="남성" 
		                        	<c:if test="${sessionScope.principal.gender eq '남성'}">selected="selected"</c:if>>남성</option>
		                        <option value="여성" 
		                        	<c:if test="${sessionScope.principal.gender eq '여성'}">selected="selected"</c:if>>여성</option>
	                    	</select>
					</div>

					<div class="join-value radiobox">
						<label>피부타입</label> 
						<input type="radio" name="skinType" value="건성"  
							<c:if test="${sessionScope.principal.skinType eq '건성'}">checked="checked"</c:if>>건성 
						<input type="radio" name="skinType" value="중성" 
							<c:if test="${sessionScope.principal.skinType eq '중성'}">checked="checked"</c:if>>중성 
						<input type="radio"name="skinType" value="지성" 
							<c:if test="${sessionScope.principal.skinType eq '지성'}">checked="checked"</c:if>>지성 
						<input type="radio"name="skinType" value="복합성" 
							<c:if test="${sessionScope.principal.skinType eq '복합성'}">checked="checked"</c:if>>복합성
					</div>

					<div class="join-value radiobox">
						<label>피부고민</label> 
						<input type="radio" name="skinTrouble" value="여드름" 
							<c:if test="${sessionScope.principal.skinTrouble eq '여드름'}">checked="checked"</c:if>>여드름 
						<input type="radio" name="skinTrouble" value="민감성" 
							<c:if test="${sessionScope.principal.skinTrouble eq '민감성'}">checked="checked"</c:if>>민감성 
						<input type="radio" name="skinTrouble" value="흉터" 
							<c:if test="${sessionScope.principal.skinTrouble eq '흉터'}">checked="checked"</c:if>>흉터 
						<input type="radio" name="skinTrouble" value="혈관" 
							<c:if test="${sessionScope.principal.skinTrouble eq '혈관'}">checked="checked"</c:if>>혈관 
						<input type="radio" name="skinTrouble" value="색조" 
							<c:if test="${sessionScope.principal.skinTrouble eq '색조'}">checked="checked"</c:if>>색조 
						<input type="radio" name="skinTrouble" value="해당없음" 
							<c:if test="${sessionScope.principal.skinTrouble eq '해당없음'}">checked="checked"</c:if>>해당없음
					</div>

					<div class="join-value">
						<label>피부톤</label>
						<div id="palletCon" class="color-con">
							<div id="palletBox" class="pallet">
								<div class="colorBox text-center">매우밝은</div>
								<div class="colorBox text-center">밝은<br>(21호)</div>
								<div class="colorBox text-center">중간밝은<br>(22호)</div>
								<div class="colorBox text-center">차분한<br>(23호)</div>
								<div class="colorBox text-center">매우차분한</div>
							</div>
						</div>
					</div>

					<div class="update-btn d-flex">
						<button class="btn btn-lg btn-danger w-25" >취소</button>
						<button class="btn btn-lg btn-primary btn-signin w-25"
							type="submit">저장</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
<!-- 회원수정 컨테이너 끝 -->
<%@ include file="../layout/footer.jsp"%>

<script>

	// 마이페이지 탭 조작
	let key = "${param.key}";
	if (key === "userinfo") {
	
		$("#myreview-tab").removeClass("active");
		$("#wishlist-tab").removeClass("active");
		$("#userinfo-tab").addClass("active");
	
		$("#myreview").removeClass("show active");
		$("#wishlist").removeClass("show active");
		$("#userinfo").addClass("show active");
	
	} else if (key === "myreview") {
	
		$("#wishlist-tab").removeClass("active");
		$("#userinfo-tab").removeClass("active");
		$("#myreview-tab").addClass("active");
	
		$("#userinfo").removeClass("show active");
		$("#wishlist").removeClass("show active");
		$("#myreview").addClass("show active");
	
	} else if (key === "wishlist") {
	
		$("#userinfo-tab").removeClass("active");
		$("#myreview-tab").removeClass("active");
		$("#wishlist-tab").addClass("active");
	
		$("#myreview").removeClass("show active");
		$("#userinfo").removeClass("show active");
		$("#wishlist").addClass("show active");
	
	}
	
	// 마이페이지 피부톤 팔레트 데이터 바인딩
	var pSkinTone ="${sessionScope.principal.skinTone}";
	if(pSkinTone=="매우밝은"){
		$(".colorBox").removeClass("pallet-action");
		$(".colorBox").eq(0).addClass("pallet-action")
	}else if(pSkinTone=="밝은(21호)"){
		$(".colorBox").removeClass("pallet-action");
		$(".colorBox").eq(1).addClass("pallet-action")
	}else if(pSkinTone=="중간밝은(22호)"){
		$(".colorBox").removeClass("pallet-action");
		$(".colorBox").eq(2).addClass("pallet-action")
	}else if(pSkinTone=="차분한(23호)"){
		$(".colorBox").removeClass("pallet-action");
		$(".colorBox").eq(3).addClass("pallet-action")
	}else if(pSkinTone=="매우차분한"){
		$(".colorBox").removeClass("pallet-action");
		$(".colorBox").eq(4).addClass("pallet-action")
	}
	
	// 회원정보 수정
	async function update(event, id){ 
          event.preventDefault();
          let userUpdateDto = {
        		name : $("#name").val(),
        		nickname : $("#nickname").val(),
                email : $("#email").val(),
                birthday : $("#birthday").val(),
                gender : $("#gender").val(),
                skinType : $('input[name="skinType"]:checked').val(),
                skinTrouble : $('input[name="skinTrouble"]:checked').val(),
                skinTone : $("#skinTone").val(),
          };
          
          let response = await fetch("http://localhost:8080/api/user/"+id, {
                method: "put",
                body: JSON.stringify(userUpdateDto), 
                headers: {
                   "Content-Type": "application/json; charset=utf-8"
                }
             });
             
             let parseResponse = await response.json();
             
             if(parseResponse.code == 1){
                alert("업데이트 성공");
                	location.href="/";
             }else{
                alert("업데이트 실패 : " + parseResponse.msg);
             }
       }
  
	
</script>