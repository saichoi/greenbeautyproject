<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<body>
	<!-- 헤더자리 -->
	<%@ include file="../layout/header.jsp"%>

	<div id="section-content">
		<section style="max-width: 60%;">
		<form action="/api/board"  method="post">
			<input type="hidden" name="image" value="${itemEntity.image }" />
			<input type="hidden" name="categoryId" value="${itemEntity.category.id }" />
			<input type="hidden" name="brandId" value="${itemEntity.brand.id }" />
			<input type="hidden" name="itemId" value="${itemEntity.id }" />
			<input type="hidden" name="page" value="${page }" />
			<div id="section-category">
				<p class="detail-route">
					<i class="bi bi-house-door-fill"></i> &gt; ${itemEntity.category.parent } &gt; ${itemEntity.category.cname }
				</p>
			</div>

			<div id="section-item">
				<div id="section-item-sub-1">
					<div class="card shadow">
						<img src="${itemEntity.image }" class="img-fluid rounded-start"
							alt="이미지자리">
					</div>
				</div>
				<div id="section-item-sub-2">
					<div id="text">
						<p>${itemEntity.brand.bname }</p>
						<h2>${itemEntity.iname }</h2>
					</div>
				</div>
			</div>
			
			<div id="section-rating">
				<div id="rating">
					<div id="rating-1">만족도</div>
					<div id="rating-2">
						<span class="star"> ★★★★★ <span>★★★★★</span> <input
							type="range" oninput="drawStar(this)" value="1" step="1" min="0"
							max="10">
						</span>
					</div>
					<div id="rating-3">0.0</div>
					<input type="hidden" name="rating"  id="rating-result" value="0.0"/>
				</div>
			</div>

			<div id="section-title">
				<div class="form-group">
					<input type="text" name="title" class="form-control"
						placeholder="제목을 입력해주세요">
				</div>
			</div>

			<div id="section-texteditor">
				<textarea id="sa-content" class="board-content  form-control" name="content"></textarea>
			</div>

			<div id="section-date">${date }</div>

			<div id="section-button">
				<div id="button">
					<button id="cancel" type="button" class="btn btn-danger">취소</button>
					<button type="submit" class="btn btn-primary">등록</button>
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
</script>
</html>