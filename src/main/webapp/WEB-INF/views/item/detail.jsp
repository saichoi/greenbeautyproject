<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%> 
<!-- 제품 상세 컨테이너 시작-->
<section class="item-detail-section mt-5 container">
    <div class="item-con container">
        <p class="detail-route">
            <i class="bi bi-house-door-fill"></i>
            &gt; 카테고리
        </p>
        <div class="detail-con">
            <div class="detail-left  card shadow">
                <img src="" alt="상품이미지">
            </div>
            <div class="detail-right">
                <div class="detail-title">
                    <div class="detail-brand-name">브랜드명</div>
                    <div class="detail-item-name">
                        <h1>샤넬 미스트</h1>
                    </div>
                    <div class="rating-con">
                        <div class="rating-box">
                            <span class="rating">
                                <span style="width:70%;">★★★★★</span> 5.0점 (62건)
                                <input type="range" oninput="drawStar(this)" value="1" step="1" min="0" max="10">
                            </span>
                        </div>
                    </div>
                    <div class="detail-price mb-2">9,000원</div>
                </div>
                <div class="item-content">넣는 것은 따뜻한 봄바람이다 풀밭에 속잎나고 가지에 싹이 트고 꽃 피고 새 우는 봄날의 천지는 얼마나 기쁘며 얼마나 아름다우냐?
                    이것을 얼음 속에서 불러 내는 것이 따뜻한 봄바람이다 인생에 따뜻한 봄바람을 불어 보내는</div>
            </div>
        </div>
        <div class="button-con">
            <!-- 좋아요 버튼 누르기 전 -->
            <button type="button" class="btn btn-secondary"><i class="bi bi-hand-thumbs-up"></i></button>
            <!-- 좋아요 버튼 누른 후-->
            <!-- <button type="button" class="btn btn-secondary"><i class="bi bi-hand-thumbs-up-fill"></i></button> -->
            <button type="button" class="btn btn-secondary">리뷰쓰기</button>
            <button type="button" class="btn btn-secondary">목록으로</button>
        </div>
    </div>
    <div class="related-con container">
        <div class="related-title">
            <h2>Related</h2>
        </div>
        <!-- 연관리스트 컨테이너 시작 -->
        <div class="related-list container mt-5">

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

        </div>
        <!-- 연관리스트 컨테이너 끝 -->
    </div>
</section>
<!-- 제품 상세 컨테이너 끝 -->
<%@ include file="../layout/footer.jsp"%> 