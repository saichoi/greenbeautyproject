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
                        <span class="star" style="color: red;">
                            ★★★★★
                        </span>
                    </div>
                </div>
            </div>

            <div id="section-date" style="display: flex; justify-content: end;">
                2021.10.09
            </div>

            <div id="section-title">
                    <h2>글 제목</h2>
            </div>

            <div id="section-texteditor">
                <div class="card shadow" style="width: 100%; height: 100%">글 내용</div>
            </div>

            <div id="writer">
                작성자
            </div>

            <div id="section-button-like">
                <div id="section-button-sub">
                    <i class="bi bi-hand-thumbs-up"></i>
                    <!--<i class="bi bi-hand-thumbs-up-fill"></i>-->
                    123
                </div>
                <button type="button" class="btn btn-primary">수정하기</button>
            </div>

            <div class="card shadow" style="margin-top: 3%;">
            <div id="section-comment">
                <i class="bi bi-person-circle" style="font-size: 70px; margin-left: 8%; color: rgb(119, 119, 119);"></i>
                <div id="section-comment-sub-1">
                    <div id="section-comment-sub-2">
                        <div class="form-group" style="flex-grow: 1; margin:0;">
                            <textarea class="form-control" rows="1" placeholder="댓글을 남겨주세요"></textarea>
                        </div>
                        <button type="button" class="btn btn-primary">등록</button>
                    </div>
                </div>
            </div>
            </div>

            <div id="section-comment-list">
                <ul class="list-group shadow" style="margin-bottom: 10%;">
                    <li class="list-group-item d-flex justify-content-between">
                        <div>안녕하세요~!!!</div>
                        <div class="d-flex">
                            <div class="font-italic">작성자&nbsp;</div>
                            <button class="badge btn-secondary">삭제</button>
                        </div>
                    </li>
                </ul>
            </div>
    </section>
    </div>

  <%@ include file="../layout/footer.jsp"%>
</body>

</html>