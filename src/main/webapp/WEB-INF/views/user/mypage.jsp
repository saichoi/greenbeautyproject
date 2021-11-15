<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<!-- 마이페이지 영역 시작 -->
<section>
	<div
		class="userinfo-container d-flex align-items-center justify-content-center">
		<div class="userinfo-con d-flex justify-content-center">
			<div class="left-info-con">
				<i class="bi bi-person-circle"></i>
			</div>
			<div class="right-info-con">
				<ul class="nickname-box d-flex justify-content-center">
					<li>
						<h3>${userEntity.nickname}</h3>
					</li>
					<li><a
						href="/api/user/${userEntity.id}/updateForm"><i
							class="bi bi-gear-fill"></i></a></li>
				</ul>
				<ul class="cnt-box d-flex justify-content-center">
					<li class="review-cnt-box">리뷰수
						${userEntity.reviewCnt}</li>
					<li class="like-cnt-box">좋아요 ${userEntity.likeCnt}</li>
				</ul>
			</div>
		</div>
	</div>

	<div class="mypage-nav container">

		<!-- 탭 메뉴 시작 -->
		<ul class="nav nav-tabs d-flex justify-content-center" id="myTab"
			role="tablist">
			<li class="nav-item w-25"><a
				class="nav-link d-flex justify-content-center active"
				id="userinfo-tab" data-bs-toggle="tab" data-bs-target="#userinfo"
				role="tab" aria-controls="userinfo" aria-selected="true"> <i
					class="bi bi-person-fill"></i>
			</a></li>
			<li class="nav-item  w-25"><a
				class="nav-link d-flex justify-content-center" id="myreview-tab"
				data-bs-toggle="tab" data-bs-target="#myreview" role="tab"
				aria-controls="myreview"> <i class="bi bi-pencil-fill"></i>
			</a></li>
			<li class="nav-item  w-25"><a
				class="nav-link d-flex justify-content-center" id="wishlist-tab"
				data-bs-toggle="tab" data-bs-target="#wishlist" role="tab"
				aria-controls="wishlist" aria-selected="false"> <i
					class="bi bi-heart-fill"></i>
			</a></li>
		</ul>
		<!-- 탭 메뉴 끝 -->

		<!-- 탭 메뉴 내용 시작 -->
		<div class="tab-content d-flex justify-content-center"
			id="myTabContent">

			<!-- 회원정보 영역  시작 -->
			<div class="tab-pane fade show active w-75 " id="userinfo"
				role="tabpanel" aria-labelledby="userinfo-tab">

				<div class="join-con container ">
					<div class="card card-container ">
						<h2>회원정보</h2>
						<form class="form-signin">
							<div class="join-value">
								<label for="username">ID</label> <input
									value="${userEntity.username}" type="text"
									id="username" class="form-control" size="30" readonly>
							</div>

							<div class="join-value">
								<label for="name">이름</label> <input
									value="${userEntity.name}" type="text" id="name"
									class="form-control" size="30">
							</div>

							<div class="join-value">
								<label for="nikcname">닉네임</label> <input
									value="${userEntity.nickname}" type="text"
									id="nickname" class="form-control" size="30">
							</div>

							<div class="join-value">
								<label for="email">이메일</label> <input
									value="${userEntity.email}" type="email" id="email"
									class="form-control" size="30">
							</div>

							<div class="join-value">
								<label for="bithdate">생년월일</label> <input
									value="${userEntity.birthday}" type="date"
									id="birthday" class="form-control">
							</div>

							<div class="join-value">
								<label for="gender">성별</label> <select id="gender"
									class="form-control" name="gender">
									<option value="남성"
										<c:if test="${userEntity.gender eq '남성'}">selected="selected"</c:if>>남성</option>
									<option value="여성"
										<c:if test="${userEntity.gender eq '여성'}">selected="selected"</c:if>>여성</option>
								</select>
							</div>

							<div class="join-value radiobox">
								<label>피부타입</label> <input type="radio" name="skinType"
									value="건성"
									<c:if test="${userEntity.skinType eq '건성'}">checked="checked"</c:if>>건성
								<input type="radio" name="skinType" value="중성"
									<c:if test="${userEntity.skinType eq '중성'}">checked="checked"</c:if>>중성
								<input type="radio" name="skinType" value="지성"
									<c:if test="${userEntity.skinType eq '지성'}">checked="checked"</c:if>>지성
								<input type="radio" name="skinType" value="복합성"
									<c:if test="${userEntity.skinType eq '복합성'}">checked="checked"</c:if>>복합성
							</div>

							<div class="join-value radiobox">
								<label>피부고민</label> <input type="radio" name="skinTrouble"
									value="여드름"
									<c:if test="${userEntity.skinTrouble eq '여드름'}">checked="checked"</c:if>>여드름
								<input type="radio" name="skinTrouble" value="민감성"
									<c:if test="${userEntity.skinTrouble eq '민감성'}">checked="checked"</c:if>>민감성
								<input type="radio" name="skinTrouble" value="흉터"
									<c:if test="${userEntity.skinTrouble eq '흉터'}">checked="checked"</c:if>>흉터
								<input type="radio" name="skinTrouble" value="혈관"
									<c:if test="${userEntity.skinTrouble eq '혈관'}">checked="checked"</c:if>>혈관
								<input type="radio" name="skinTrouble" value="색조"
									<c:if test="${userEntity.skinTrouble eq '색조'}">checked="checked"</c:if>>색조
								<input type="radio" name="skinTrouble" value="해당없음"
									<c:if test="${userEntity.skinTrouble eq '해당없음'}">checked="checked"</c:if>>해당없음
							</div>

							<div class="join-value">
								<label>피부톤</label>
								<div id="palletCon" class="color-con">
									<div id="palletBox" class="pallet">
										<div class="colorBox text-center">매우밝은</div>
										<div class="colorBox text-center">
											밝은<br>(21호)
										</div>
										<div class="colorBox text-center">
											중간밝은<br>(22호)
										</div>
										<div class="colorBox text-center">
											차분한<br>(23호)
										</div>
										<div class="colorBox text-center">매우차분한</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<!-- 회원정보 영역  끝 -->

			<!-- 내리뷰관리 영역  시작 -->
			<div class="tab-pane fade" style="width: 80%" id="myreview"
				role="tabpanel" aria-labelledby="myreview-tab";>
				<h2 class="text-center mb-5">내리뷰관리</h2>
				<!-- 내리뷰목록 시작 -->
				<c:forEach var="board" items="${userEntity.boardList }"
					begin="0" end="3">
					<div class="related-list container mt-3" style="width: 80%">

						<div id="board-card" class="card mb-3 shadow"
							onclick="moveBoardDetail(${board.id})" style="width: 100%;">
							<div class="row g-0">
								<div class="img-card col-md-3"
									style="border-right: 1px solid rgb(219, 219, 219);">
									<img src="${board.image}" class="img-fluid rounded-start"
										alt="상품이미지">
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
                                    </svg> &gt; ${board.category.parent} &gt;
												${board.category.cname}
											</small>
										</p>
										<h4 id="title">${board.title}</h4>
										<p id="writer">작성자 : ${board.user.nickname}</p>
										<div id="card-sub">
											<p id="skin-type">작성자의 피부타입 : ${board.user.skinType} /
												${board.user.skinTrouble} / ${board.user.skinTone}</p>
											<p id="date">${board.createdAt}</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				<!-- 내리뷰목록 끝 -->

				<!-- 페이징 시작 -->
				<nav aria-label="Page navigation example">
					<ul class="pagination d-flex justify-content-center mt-5 mb-5">
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								<span class="sr-only">Previous</span>
						</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
								class="sr-only">Next</span>
						</a></li>
					</ul>
				</nav>
				<!-- 페이징 끝 -->
			</div>
			<!-- 내리뷰관리 영역  끝 -->

			<!-- 위시리스트 영역  시작 -->
			<div class="tab-pane fade" style="width: 80%" id="wishlist"
				role="tabpanel" aria-labelledby="wishlist-tab">
				<h2 class="text-center mb-5">위시리스트</h2>
				<!-- 위시리스트 목록 시작 -->
				<c:forEach var="wish" items="${userEntity.wishList }"
					begin="0" end="3">
					<div class="related-list container mt-3" style="width: 80%">

						<div id="board-card" class="card mb-3 shadow"
							onclick="moveItemDetail(${wish.item.id})" style="width: 100%;">
							<div class="row g-0">
								<div class="img-card col-md-3"
									style="border-right: 1px solid rgb(219, 219, 219);">
									<img src="${wish.item.image}" class="img-fluid rounded-start"
										alt="상품이미지">
								</div>
								<div class="col-md-8">
									<div class="card-body  d-flex align-items-center">
										<div class="card-left" >
											<p class="category-rout">
												<small class="text-muted"> <i
													class="bi bi-house-door-fill"></i> &gt;
													${wish.item.category.parent} &gt; ${wish.item.category.cname}
												</small>
											</p>
											<p class="wishlist-brand">${wish.item.brand.bname}</p>
											<h4 class="whilist-item-title">${wish.item.iname}</h4>
										</div>
										<div class="card-right" style="text-align: right;" >
											<button type="button" class="btn btn-secondary mt-3 mb-5"
											onClick="deleteWishlistById(event, ${wish.item.id})">삭제</button>
											<p class="price" style="font-size:20px;">${wish.item.price}</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				<!-- 위시리스트 목록 끝 -->

				<!-- 페이징 시작 -->
				<nav aria-label="Page navigation example">
					<ul class="pagination d-flex justify-content-center mt-5 mb-5">
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								<span class="sr-only">Previous</span>
						</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
								class="sr-only">Next</span>
						</a></li>
					</ul>
				</nav>
				<!-- 페이징 끝 -->
			</div>
			<!-- 위시리스트 영역  끝 -->
		</div>
		<!-- 탭 메뉴 내용 끝 -->
	</div>
</section>
<!-- 마이페이지 영역 끝 -->

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
	
	// 마이페이지 피부타입 데이터 바인딩
	/* var pSkinType ="${sessionScope.principal.skinType}";
	if(pSkinType=="건성"){
		$("input:radio[name='skinType']:radio[value='건성']").prop('checked', true); 
	}else if(pSkinType=="중성"){
		$("input:radio[name='skinType']:radio[value='중성']").prop('checked', true); 
	}else if(pSkinType=="지성"){
		$("input:radio[name='skinType']:radio[value='지성']").prop('checked', true); 
	}else if(pSkinType=="복합성"){
		$("input:radio[name='skinType']:radio[value='복합성']").prop('checked', true); 
	} */
	
	// 마이페이지 피부고민 데이터 바인딩
/* 	var pSkinTrouble ="${sessionScope.principal.skinTrouble}";
	if(pSkinTrouble=="여드름"){
		$("input:radio[name='skinTrouble']:radio[value='여드름']").prop('checked', true); 
	}else if(pSkinTrouble=="민감성"){
		$("input:radio[name='skinTrouble']:radio[value='민감성']").prop('checked', true); 
	}else if(pSkinTrouble=="흉터"){
		$("input:radio[name='skinTrouble']:radio[value='흉터']").prop('checked', true); 
	}else if(pSkinTrouble=="혈관"){
		$("input:radio[name='skinTrouble']:radio[value='혈관']").prop('checked', true); 
	}else if(pSkinTrouble=="색조"){
		$("input:radio[name='skinTrouble']:radio[value='색조']").prop('checked', true); 
	}else if(pSkinTrouble=="해당없음"){
		$("input:radio[name='skinTrouble']:radio[value='해당없음']").prop('checked', true); 
	} */
	
	// 마이페이지 피부톤 팔레트 데이터 바인딩
	var pSkinTone ="${userEntity.skinTone}";
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
	
</script>

