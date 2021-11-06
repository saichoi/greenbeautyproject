const drawStar = (target) => {
	document.querySelector(`.star span`).style.width = `${target.value * 10}%`;
}

function selectById(id){
	location.href = "/item/" + id + "/detail?page=0";
}

function toWrite(id){
	location.href = "/board/saveForm?itemId=" + id + "&page=0";
}

function toList(id, page){
	location.href = "/item/category/" + id + "?page=" + page;
}

$(document).ready(function() {
	$(function() {

		var count0 = count1 = count2 = 0;

		timeCounter();

		function timeCounter() {

			id0 = setInterval(count0Fn, 1); //

			function count0Fn() {
				count0++;
				if (count0 > 756) {
					clearInterval(id0);
				} else {
					$(".number").eq(0).text(count0);
				}

			}

			id1 = setInterval(count1Fn, 1);

			function count1Fn() {
				count1++;
				if (count1 > 1235) {
					clearInterval(id1);
				} else {
					$(".number").eq(1).text(count1);
				}
			}

			id2 = setInterval(count2Fn, 1);

			function count2Fn() {
				count2++;
				if (count2 > 156) {
					clearInterval(id2);
				} else {
					$(".number").eq(2).text(count2);
				}
			}
		}
	});

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
	
	$('#summernote').summernote({
		height: 450
	});
});
