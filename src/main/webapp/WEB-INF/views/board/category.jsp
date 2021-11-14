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

    <!-- 메인자리 -->
    <main>
        <!-- 케러셀자리 -->
        <div id="carouselExampleIndicators" class="carousel carousel slide carousel-fade" data-bs-ride="carousel"  style="overflow: hidden; z-index: -9">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                    aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                    aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="/image/review1.jpg" class="d-block w-100" alt="">
                </div>
                <div class="carousel-item">
                    <img src="/image/review2.jpg" class="d-block w-100" alt="">
                </div>
                <div class="carousel-item">
                    <img src="/image/review3.jpg" class="d-block w-100" alt="">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </main>

	<body-2 style="max-width:90%; margin:0 auto;">
    <aside-1>
        <!-- 서브메뉴자리 -->
		<%@ include file="../layout/boardSidebar.jsp"%>
    </aside-1>

    <section class="mb-3">
        <!-- 검색창자리 -->
        <form class="input-group">
            <input type="text" class="form-control" name="searchText"
            value="${param.searchText}" style="height: 100%">
            <div class="input-group-append">
                <button class="btn btn-secondary" type="submit">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor"
                        class="bi bi-search" viewBox="0 0 16 16">
                        <path
                            d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                    </svg>
                </button>
            </div>
        </form>

        <!-- 선택창자리 -->
        <div id="section1">
            <div class="card w-75" style="border: none;">
                <div class="card-body">
                    <h5 class="card-title">찾고 싶은 피부 타입을 선택해주세요.</h5>
                    <p class="card-text">
                    <form id="search-container">
                        <div id="search-container-sub1">
                            <div id="select-type1">
                                <input type="checkbox" id="select1">
                                <label for="select1">건성</label>
                                <input type="checkbox" id="select2">
                                <label for="select2">중성</label>
                                <input type="checkbox" id="select3">
                                <label for="select3">지성</label>
                                <input type="checkbox" id="select4">
                                <label for="select4">복합성</label>
                            </div>
                            <div id="select-type2">
                                <input type="checkbox" id="select5">
                                <label for="select5">여드름</label>
                                <input type="checkbox" id="select6">
                                <label for="select6">민감성</label>
                                <input type="checkbox" id="select7">
                                <label for="select7">흉터</label>
                                <input type="checkbox" id="select8">
                                <label for="select8">혈관</label>
                                <input type="checkbox" id="select9">
                                <label for="select9">색조</label>
                            </div>
                        </div>
                        <button id="search-container-sub2" type="submit" class="btn btn-secondary">검색</button>
                    </form>
                    </p>
                </div>
            </div>

            <!-- 콤보박스자리 -->
            <select class="form-select" aria-label="Default select example">
                <option selected>좋아요순</option>
                <option value="1">댓글순</option>
                <option value="2">평점순</option>
            </select>
        </div>

        <div id="section2">
            <!-- 리뷰리스트자리 -->
          <!-- 리뷰리스트자리 -->
			<c:forEach var="board" items="${boardsEntity.content}">
			<div id="board-card" class="card mb-3 shadow" onclick="moveBoardDetail(${board.id})" style="width:100%; ">
				<div class="row g-0">
					<div class="img-card col-md-3" style="border-right: 1px solid rgb(219, 219, 219);">
						<img src="${board.content}" class="img-fluid rounded-start h-100" 
						onerror="this.src='/image/default-image.png'" alt="리뷰이미지" >

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
                                    </svg>  &gt; ${board.category.parent} &gt; ${board.category.cname}
								</small>
							</p>
							<h4 id="title">${board.title}</h4>
							<p id="writer">작성자 : ${board.user.nickname} </p>
							<div id="card-sub">
								<p id="skin-type">작성자의 피부타입 : ${board.user.skinType} / ${board.user.skinTrouble} / ${board.user.skinTone}</p>
								<p id="date">${board.createdAt}</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>

            <!-- 페이지네이션자리 -->
			<ul class="pagination d-flex justify-content-center mt-5">
				<c:choose>
					<c:when test="${boardsEntity.first}">
						<li class="page-item disabled"><a class="page-link"
							href="/board/category/${categoryId}?page=${boardsEntity.number - 1}&searchText=${param.searchText}">&laquo;</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link"
							href="/board/category/${categoryId}?page=${boardsEntity.number - 1}&searchText=${param.searchText}">&laquo;</a></li>
					</c:otherwise>
				</c:choose>
				
				<c:forEach begin="${startPage}" end="${endPage}" var="idx">
					<c:choose>
						<c:when test="${idx eq nowPage}">
							<li class="page-item disabled"><a class="page-link page-active"
								href="/board/category/${categoryId}?page=${idx-1}&searchText=${param.searchText}">${idx}</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link"
									href="/board/category/${categoryId}?page=${idx-1}&searchText=${param.searchText}">${idx}</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				
				<c:choose>
					<c:when test="${boardsEntity.last}">
						<li class="page-item disabled"><a class="page-link"
							href="/board/category/${categoryId}?page=${param.page + 1}&searchText=${param.searchText}">&raquo;</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link"
							href="/board/category/${categoryId}?page=${param.page + 1}&searchText=${param.searchText}">&raquo;</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
    </section>

    <aside-2>
        <p id="empty"></p>
        <c:if test="${!empty boardsEntity.content[0].id }">
        <a id="product-move" href="/item/category/${boardsEntity.content[0].category.id }?page=0">제품보러가기
            <svg id="move" xmlns="http://www.w3.org/2000/svg" width="23" height="23" fill="currentColor"
                class="bi bi-arrow-right-circle-fill" viewBox="0 0 16 16">
                <path
                    d="M8 0a8 8 0 1 1 0 16A8 8 0 0 1 8 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z" />
            </svg>
        </a>
        </c:if>
    </aside-2>
	</body-2>
<%@ include file="../layout/footer.jsp"%>
</body>

</html>