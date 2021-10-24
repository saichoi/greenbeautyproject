<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="/css/reset.css" type="text/css" rel="stylesheet">
    <link href="/css/dayeon.css" type="text/css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="/js/dayeon.js"></script>
</head>

<body>
    <!-- 헤더자리 -->
<%@ include file="../layout/header.jsp"%> 

    <div id="section-content" style="max-width:80%; margin:0 auto;">
        <section style="max-width: 60%;">
            <div id="section-category">
                <p id="category"><small class="text-muted">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor"
                            class="bi bi-house-door-fill" viewBox="0 1 16 16">
                            <path
                                d="M6.5 14.5v-3.505c0-.245.25-.495.5-.495h2c.25 0 .5.25.5.5v3.5a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5z" />
                        </svg>
                        카테고리</small></p>
            </div>

            <div id="section-item">
                <div id="section-item-sub-1">
                    <div class="card shadow">
                        <img src="..." class="img-fluid rounded-start" alt="이미지자리">
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
                            <input type="range" oninput="drawStar(this)" value="1" step="1" min="0" max="10">
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