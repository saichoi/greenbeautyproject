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
		<form onsubmit="updateByBoardId(event, ${boardEntity.id})">
			<div id="section-category">
				<p class="detail-route">
					<i class="bi bi-house-door-fill"></i>
           				&gt; ${boardEntity.category.parent} &gt; ${boardEntity.category.cname}
      		  	</p>
            </div>

            <div id="section-item">
                <div id="section-item-sub-1">
                    <div class="card shadow">
                        <img src="${boardEntity.image}" class="img-fluid rounded-start" id="image"
							alt="이미지자리">
                    </div>
                </div>
                <div id="section-item-sub-2">
                    <div id="text">
                        <p>${boardEntity.brand.bname}</p>
                        <h2>${boardEntity.item.iname}</h2>
                    </div>
                </div>
            </div>

            <div id="section-rating">
                <div id="rating">
                    <div id="rating-1">만족도</div>
                    <div id="rating-2">
                 		<span class="star"> ★★★★★ <span style="width:calc(20%*${boardEntity.rating })">★★★★★</span> <input
							type="range" oninput="drawStar(this)" value="1" step="1" min="0"
							max="10">
						</span>
                    </div>
                    <div id="rating-3">${boardEntity.rating}</div>
					<input type="hidden" name="rating"  id="rating-result" value="${boardEntity.rating}"/>
                </div>
            </div>
            
           <div id="section-title">
                <div class="form-group">
                    <input type="text" name="title" class="form-control" id="title"
						value="${boardEntity.title}">
                </div>
            </div>
            
           	<div id="section-texteditor">
				<textarea id="up-content" class="board-content form-control" name="content">
					${boardEntity.content}
				</textarea>
			</div>

            <div id="section-date">
                ${boardEntity.createdAt}
            </div>

            <div id="section-button">
                <div id="button">
                    <button id="cancel" type="button" class="btn btn-danger">취소</button>
                    <button type="submit" class="btn btn-primary">완료</button>
                </div>
            </div>
            </form>
    </section>
    </div>

<%@ include file="../layout/footer.jsp"%>
</body>
<script>
	$("#cancel").click(()=>{
		alert("취소 되었습니다.");
		history.back();
	});
	//리뷰 수정하기 
	async function updateByBoardId(event, boardId) {
		event.preventDefault();
		let boardUpdateDto = {
			title: $("#title").val(),
			content: $("#up-content").val(),
			rating: $("#rating-result").val()
			//image: $("#image").attr(src)
		};
	
	//	alert(boardUpdateDto.rating);
	
		let response = await fetch("http://localhost:8080/api/board/" + boardId, {
			method: "PUT",
			body: JSON.stringify(boardUpdateDto),
			headers: {
				"Content-Type": "application/json; charset=utf-8"
			}
		});
	
		let parseResponse = await response.json();
	
		console.log(parseResponse);
	
		if (parseResponse.code == 1) {
			alert("업데이트 성공");
			location.href = "/board/"  + boardId + "/detail?page=0";
		} else {
			alert("업데이트 실패"+parseResponse.msg);
		}
	}
</script>
</html>