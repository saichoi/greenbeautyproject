	
	// 리뷰 상세보기 페이지 이동
	function selectByBoardId(boardid){
		location.href = "/board/" + boardid + "/detail?page=0";
	}
	

$(document).ready(function () {

 // 햄버거 버튼 클릭 이벤트 
  var burger = $('.menu-trigger');

  burger.each(function (index) {
    var $this = $(this);

    $this.on('click', function (e) {
      e.preventDefault();
      $(this).toggleClass('active-' + (index + 1));
    })
  });

  var h = 0;

  $(burger).on("click", function () {
    if (h == 0) {
      $('.ham-con').animate({
        right:'0',
        opacity: 1
      }, 500);
      $(this).addClass('active-1');
      h++;
    } else if (h == 1) {
      $('.ham-con').animate({
        right :'-20%',
        opacity: 0
      }, 500);
      $(this).removeClass('active-1');
      h--;
    }
    $(window).scroll(function(){
      sct = $(window).scrollTop();
      if(sct>30){
        $('.ham-con').css({
          opacity: 0,
          right :'-20%'
        }, 500);
        $(burger).removeClass('active-1');
        h=0;
      }
    });
  })

  // 햄버거 메뉴 내부 - 상위 메뉴 클릭 시 하위메뉴 슬라이드 다운하게 만들기
  $(".ham-menu ul.ham-top-menu li").each(function (index) {
    $(this).attr('data-index', index);
  });
  $(".ham-menu ul.ham-sub-menu").hide();
  $(".ham-menu ul.ham-top-menu li").click(function () {
    var index = $(this).attr('data-index', index);

      $("ul", this).slideToggle("fast");
      $("i",$(this)).toggleClass("bi-caret-down-fill bi-caret-up-fill");
      
  });

// 말풍선 이벤트
  $('header .bi-person-fill').mouseenter(function () {
    $('.balloon').css({
      display: 'block'
    });
  });

  $('header .balloon').mouseover(function () {
    $('.balloon').css({
      display: 'block'
    });
  });

  $('header #balloon-wrap').mouseout(function () {
    $('.balloon').css({
      display: 'none'
    });
  });

  $('.bi-heart-fill, .ham-btn').mouseenter(function(){
    $('.balloon').css({
      display: 'none'
    });
  });
  
  // 로그인 
  loadProfile();

  function getLocalProfile(callback) {
    var profileReAuthEmail = localStorage.getItem("PROFILE_REAUTH_EMAIL");

    if (profileReAuthEmail !== null) {
      callback(profileReAuthEmail);
    }
  }

  function loadProfile() {
    if (!supportsHTML5Storage()) { return false; }
    getLocalProfile(function (profileReAuthEmail) {
      $("#reauth-email").html(profileReAuthEmail);
      $("#inputEmail").hide();
      $("#remember").hide();
    });
  }

  function supportsHTML5Storage() {
    try {
      return 'localStorage' in window && window['localStorage'] !== null;
    } catch (e) {
      return false;
    }
  }

    //회원가입 피부톤 팔레트
  	var pallet = ["#f3e077", "#dfc899", "#d8b17e", "#cca77b", "#bd9c8d"];
  	
    $(".colorBox").each(function (index) {
    	$(this).attr("pallet-index", index);
    	//$(this).eq(index).addClass("pallet-action");
    	$(this).css({
			backgroundColor:pallet[index]
		});
  	}).click(function(){
	    //var index = $(this).attr('pallet-index', index);
	    $(".colorBox").removeClass('pallet-action');
		$(this).addClass("pallet-action");
		var selected = $(this).text();
		var tag = "<input type='hidden' name='skinTone' id='skinTone' value='"+selected+"'>"
			$('input[name=skinTone]').eq(0).remove();
			$('#palletCon').append(tag);
	});
	
}); // end of document ready
