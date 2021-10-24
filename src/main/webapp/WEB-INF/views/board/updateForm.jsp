<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
	<!-- 헤더자리 -->
	<%@ include file="../layout/header.jsp"%>

	<div id="section-content">
		<section style="max-width: 60%;">
			<div id="section-category">
				<p class="detail-route">
					<i class="bi bi-house-door-fill"></i>
           				 &gt; 카테고리
      		  	</p>
            </div>

            <div id="section-item">
                <div id="section-item-sub-1">
                    <div class="card shadow">
                        <img src="..." class="img-fluid rounded-start"
							alt="이미지자리">
                    </div>
                </div>
                <div id="section-item-sub-2">
                    <div id="text">
                        <p>브랜드</p>
                        <h2>제품명</h2>
                    </div>
                </div>
            </div>

            <div id="section-rating">
                <div id="rating">
                    <div id="rating-1">만족도</div>
                    <div id="rating-2">
                        <span class="star">
                            ★★★★★
                            <span>★★★★★</span>
                            <input type="range" oninput="drawStar(this)"
							value="1" step="1" min="0" max="10">
                        </span>
                    </div>
                </div>
            </div>
            
           <div id="section-title">
                <div class="form-group">
                    <input type="text" name="title" class="form-control"
						placeholder="제목을 입력해주세요">
                </div>
            </div>
            
           	<div id="section-texteditor">
				<textarea id="summernote" class="form-control" name="content"></textarea>
			</div>

            <div id="section-date">
                2021.10.09
            </div>

            <div id="section-button">
                <div id="button">
                    <button type="button" class="btn btn-danger">취소</button>
                    <button type="button" class="btn btn-primary">수정</button>
                </div>
            </div>
    </section>
    </div>

<%@ include file="../layout/footer.jsp"%>
</body>

</html>