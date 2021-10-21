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
        right:'10%',
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
      $('.ham-con').css({
        opacity: 0,
        right :'-20%'
      }, 500);
      $(burger).removeClass('active-1');
      h=0;
    });
  })

  // 햄버거 메뉴 내부 - 상위 메뉴 클릭 시 하위메뉴 슬라이드 다운하게 만들기
  var j = 0;
  $('.ham-clicktoggle').each(function (index) {
    $(this).attr('data-index', index)
  }).click(function () {
    var index = $(this).attr('data-index');
    if (j == 0) {
      $('.ham-menu i').eq(index).removeClass('.ham-menu bi-caret-down-fill');
      $('.ham-menu i').eq(index).addClass('.ham-menu bi-caret-up-fill');
      $('.ham-top-menu').eq(index).animate({
        height: '300px',
      });
      $('.ham-sub-menu').eq(index).slideDown(100);
      j++;
    } else if (j == 1) {
      $('.ham-menu i').eq(index).removeClass('.ham-menu bi-caret-up-fill');
      $('.ham-menu i').eq(index).addClass('.ham-menu bi-caret-down-fill');
      $('.ham-top-menu').eq(index).animate({
        height: 50,
      });
      $('.ham-sub-menu').eq(index).slideUp(100);

      j--;
    }
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

  function init() {
    //2차원 배열 파레트 데이터
    var pallet = ["#f3e077", "#dfc899", "#d8b17e", "#cca77b", "#bd9c8d"];
    var palletText = ['매우밝은', '밝은<br>(21호)', '중간밝은<br>(22호)', '차분한<br>(23호)', '매우차분한'];
    var tag = "";
    for (i = 0; i < pallet.length; i++) {
      tag += "<div id="
        + pallet[i]
        + " class='colorBox text-center' style='line-height:40px;' onclick=''>"
        + palletText[i]
        + "</div>";
    }
    //파레트 파싱
    document.getElementById("palletBox").innerHTML = tag;

    //색상 입히기
    var colorBox = document.getElementsByClassName("colorBox");
    for (i = 0; i < colorBox.length; i++) {
      colorBox[i].style.background = colorBox[i].id;
    }
  }

  init();

}); // end of document ready