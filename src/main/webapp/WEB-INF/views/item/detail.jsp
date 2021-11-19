<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%> 
<!-- 제품 상세 컨테이너 시작-->
<section class="item-detail-section mt-5 container" >
    <div class="item-con container" style="width:75%;">
        <p class="detail-route">
            <i class="bi bi-house-door-fill"></i>
             &gt; ${itemEntity.category.parent } &gt; <a href="/board/category/${itemEntity.category.id }?page=0" >${itemEntity.category.cname }</a>
        </p>
        <div class="detail-con">
            <div class="detail-left  card shadow">
                <img src=" ${itemEntity.image }" alt="상품이미지">
            </div>
            <div class="detail-right">
                <div class="detail-title">
                    <div class="detail-brand-name">${itemEntity.brand.bname }</div>
                    <div class="detail-item-name">
                        <h1>${itemEntity.iname }</h1>
                    </div>
                    <div>
                        <span class="star-2"> ★★★★★ <span style="width:calc(18.9%*${itemEntity.rating })">★★★★★</span></span>
                        <fmt:formatNumber value="${itemEntity.rating }" pattern="0.00"/> (${itemEntity.reviewCnt}건)
                    </div>
                    <div class="detail-price mb-2">${itemEntity.price }원</div>
                </div>
           
            </div>
        </div>
        <div class="button-con">
       		<!-- 현재 wish디비에 해당유저 제품있는지 없는지 체크후 위시 상태나타내기 -->
        	<c:choose>
				<c:when test="${wishCheck eq 1}">
					<i id="wish" class="bi bi-heart-fill m_set_pointer m_set_red" onclick="wish(${itemEntity.id})"></i>
				</c:when>
				<c:otherwise>
					<i id="wish" class="bi bi-heart m_set_pointer" onclick="wish(${itemEntity.id})"></i>
				</c:otherwise>
			</c:choose>
        	
            <button type="button" class="btn btn-secondary" onClick="toWrite(${itemEntity.id})"  style="margin-right:0.5%">리뷰쓰기</button>
            <button type="button" onClick="toItemList(${itemEntity.category.id}, ${page })"  class="btn btn-secondary">목록으로</button>
        </div>
    </div>
    <div class="related-con container" style="width:75%;">
        <div class="related-title">
            <h2>Related Review</h2>
        </div>
        <!-- 연관리스트 컨테이너 시작 -->
        <c:forEach var="board" items="${itemEntity.boards }" begin="0" end="3">
        	<div class="related-list container mt-3" style="width:80%">
        
			<div id="board-card" class="card mb-3 shadow" onclick="moveBoardDetail(${board.id},${param.page })" style="width:100%; ">
				<div class="row g-0 overflow-hidden" style="height:200px">
					<div class="img-card col-md-3" style="border-right: 1px solid rgb(219, 219, 219);">
						<img src="${board.content}" class="img-fluid rounded-start h-100" onerror="this.src='/image/default-image.png'" alt="상품이미지">
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
                                    </svg> &gt; ${board.category.parent} &gt; ${board.category.cname}
								</small>
							</p>
							<h4 id="title">${board.title}</h4>
							<p id="writer">작성자 : ${board.user.nickname}</p>
							<div id="card-sub">
								<p id="skin-type">작성자의 피부타입 :  ${board.user.skinType} / ${board.user.skinTrouble} / ${board.user.skinTone} </p>
								<p id="date">${board.createdAt}</p>
							</div>
						</div>
					</div>
				</div>
				</div>   	
     	 	   </div>
			</c:forEach>
        <!-- 연관리스트 컨테이너 끝 -->
    </div>
</section>
<!-- 제품 상세 컨테이너 끝 -->
<%@ include file="../layout/footer.jsp"%> 