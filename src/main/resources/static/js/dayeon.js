const drawStar = (target) => {
	document.querySelector(`.star span`).style.width = `${target.value * 10}%`;
	
	if(document.querySelector(`.star span`).style.width == '10%'){
		$("#section-rating #rating-3").text("0.5");
		$("#section-rating #rating-result").val("0.5");
	} else if(document.querySelector(`.star span`).style.width == '20%'){
		$("#section-rating #rating-3").text("1.0");
		$("#section-rating #rating-result").val("1.0");
	} else if(document.querySelector(`.star span`).style.width == '30%'){
		$("#section-rating #rating-3").text("1.5");
		$("#section-rating #rating-result").val("1.5");
	} else if(document.querySelector(`.star span`).style.width == '40%'){
		$("#section-rating #rating-3").text("2.0");
		$("#section-rating #rating-result").val("2.0");
	} else if(document.querySelector(`.star span`).style.width == '50%'){
		$("#section-rating #rating-3").text("2.5");
		$("#section-rating #rating-result").val("2.5");
	} else if(document.querySelector(`.star span`).style.width == '60%'){
		$("#section-rating #rating-3").text("3.0");
		$("#section-rating #rating-result").val("3.0");
	} else if(document.querySelector(`.star span`).style.width == '70%'){
		$("#section-rating #rating-3").text("3.5");
		$("#section-rating #rating-result").val("3.5");
	} else if(document.querySelector(`.star span`).style.width == '80%'){
		$("#section-rating #rating-3").text("4.0");
		$("#section-rating #rating-result").val("4.0");
	} else if(document.querySelector(`.star span`).style.width == '90%'){
		$("#section-rating #rating-3").text("4.5");
		$("#section-rating #rating-result").val("4.5");
	} else if(document.querySelector(`.star span`).style.width == '100%'){
		$("#section-rating #rating-3").text("5.0");
		$("#section-rating #rating-result").val("5.0");
	}
}

async function deleteWishlistById(event, itemId){
	event.stopImmediatePropagation()
	response = await fetch("http://localhost:8080/api/item/" + itemId + "/wish", {
		method: "delete"
	});
	let parseResponse = await response.json();
	if(parseResponse.code == 1){
		alert("위시리스트에서 삭제되었습니다.");
	 	location.reload();
	}else{
		alert("삭제에 실패하였습니다" + parseResponse.msg);
	}
}

async function wish(itemId){
	if(globalUserId == ""){
		alert("로그인을 먼저 진행해주세요");
		location.href = "/loginForm";
		return;
		}

	let response;
	$("#wish").toggleClass("bi-heart bi-heart-fill m_set_red");
 	 if($("#wish").attr("class") == "bi m_set_pointer bi-heart-fill m_set_red"){
		response = await fetch("http://localhost:8080/api/item/" + itemId + "/wish", {
			method: "post"
		});
	}
	else{
		response = await fetch("http://localhost:8080/api/item/" + itemId + "/wish", {
			method: "delete"
		});
	}
 	let parseResponse = await response.json();
 	
 	if(parseResponse.code == 1){
 		if(parseResponse.body == 1){
 			alert("위시리스트에 담겼습니다.")
 		}else{
 			alert("위시리스트에서 삭제되었습니다.")
 		}
	}else{
		alert("삭제에 실패하였습니다" + parseResponse.msg);
	}
}
	
async function like(boardId){
	if(globalUserId == ""){
		alert("로그인을 먼저 진행해주세요");
		location.href = "/loginForm";
		return;
		}

	let response
	$("#like").toggleClass("bi-hand-thumbs-up bi-hand-thumbs-up-fill");
	if($("#like").attr("class") == "bi m_set_pointer bi-hand-thumbs-up-fill"){
		response = await fetch("http://localhost:8080/api/board/" + boardId + "/like", {
			method: "post"
		});
	}
	else{
		response = await fetch("http://localhost:8080/api/board/" + boardId + "/like", {
			method: "delete"
		});
	
	}
	let parseResponse = await response.json();
	
	if(parseResponse.code == 1){
		$("#like").empty();
 		$("#like").text(parseResponse.body);
	}
}

function moveItemDetail(id){
	location.href = "/item/" + id + "/detail?page=0";
}

function toWrite(id){
	location.href = "/api/board/saveForm?itemId=" + id + "&page=0";
}

function toBoardList(id, page){
	location.href = "/board/category/" + id + "?page=" + page;
}

function toItemList(id, page){
	location.href = "/item/category/" + id + "?page=" + page;
}

async function deleteBoardById(id){
	let response = await fetch("http://localhost:8080/api/board/"+id,{
		method: "delete"
	}) 
	let parseResponse = await response.json();
	console.log(parseResponse);

	if(parseResponse.code == 1){
		alert("삭제 성공");
		location.href = "/";
	} else{
		alert(parseResponse.msg);
		location.href = "/";
	}
	
	return parseResponse;
}

async function deleteCommentById(commentId){
	let response = await fetch("http://localhost:8080/api/comment/" + commentId, {
		method:"delete"
	});
	let parseResponse = await response.json();
	if(parseResponse.code == 1){
		alert("댓글 삭제 완료");
		// location.reload();
		$("#reply-" + commentId).remove(); 
	}else{
		alert("댓글 삭제에 실패하였습니다" + parseResponse.msg);
	}
}

$(document).ready(function() {

	var i = 0;
	$('#clicktoggle1').click(function() {
		if (i == 0) {
			$('#menu1 i').removeClass('#menu1 bi-caret-down-fill');
			$('#menu1 i').addClass('#menu1 bi-caret-up-fill');
			$('#menu1 .top_menu').animate({
				height: 320,
			});
			$('.sub_menu', '#menu1 .top_menu').slideDown(100);
			i++;
		} else if (i == 1) {
			$('#menu1 i').removeClass('#menu1 bi-caret-up-fill');
			$('#menu1 i').addClass('#menu1 bi-caret-down-fill');
			$('#menu1 .top_menu').animate({
				height: 50,
			});
			$('#menu1 .sub_menu').slideUp(100);
			i--;
		}
	});

	var j = 0;
	$('#clicktoggle2').click(function() {
		if (j == 0) {
			$('#menu2 i').removeClass('#menu2 bi-caret-down-fill');
			$('#menu2 i').addClass('#menu2 bi-caret-up-fill');
			$('#menu2 .top_menu').animate({
				height: 240,
			});
			$('.sub_menu', '#menu2 .top_menu').slideDown(100);
			j++;
		} else if (j == 1) {
			$('#menu2 i').removeClass('#menu2 bi-caret-up-fill');
			$('#menu2 i').addClass('#menu2 bi-caret-down-fill');
			$('#menu2 .top_menu').animate({
				height: 50,
			});
			$('#menu2 .sub_menu').slideUp(100);
			j--;
		}
	});

	var k = 0;
	$('#clicktoggle3').click(function() {
		if (k == 0) {
			$('#menu3 i').removeClass('#menu3 bi-caret-down-fill');
			$('#menu3 i').addClass('#menu3 bi-caret-up-fill');
			$('#menu3 .top_menu').animate({
				height: 160,
			});
			$('.sub_menu', '#menu3 .top_menu').slideDown(100);
			k++;
		} else if (k == 1) {
			$('#menu3 i').removeClass('#menu3 bi-caret-up-fill');
			$('#menu3 i').addClass('#menu3 bi-caret-down-fill');
			$('#menu3 .top_menu').animate({
				height: 50,
			});
			$('#menu3 .sub_menu').slideUp(100);
			k--;
		}
	});

	var m = 0;
	$('#clicktoggle4').click(function() {
		if (m == 0) {
			$('#menu4 i').removeClass('#menu4 bi-caret-down-fill');
			$('#menu4 i').addClass('#menu4 bi-caret-up-fill');
			$('#menu4 .top_menu').animate({
				height: 250,
			});
			$('.sub_menu', '#menu4 .top_menu').slideDown(100);
			m++;
		} else if (m == 1) {
			$('#menu4 i').removeClass('#menu4 bi-caret-up-fill');
			$('#menu4 i').addClass('#menu4 bi-caret-down-fill');
			$('#menu4 .top_menu').animate({
				height: 50,
			});
			$('#menu4 .sub_menu').slideUp(100);
			m--;
		}
	});
	
	$('.board-content').summernote({
		height: 450
	});
});
