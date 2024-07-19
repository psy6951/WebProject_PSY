$(function () {
  $('.gnb').on('mouseenter', function () {
    $('#header').addClass('on');
  });
  $('#header').on('mouseleave', function () {
    $('#header').removeClass('on');
  });

  $('#header .lang_btn').on('click', function () {
    $('#header .lang_wrap').toggleClass('on');
  });

  // #header .gnb .depth2 a:hover 효과
  $('#header .gnb .depth2 li a').on('mouseenter', function () {
    $(this).addClass('on');
  });
  $('#header .gnb .depth2 li a').on('mouseleave', function () {
    $(this).removeClass('on');
  });

  // m_gnb 메뉴열기 버튼
  $('#header .open_btn').on('click', function () {
    $(this).toggleClass('on');
    $('#header .m_gnb_wrap').toggleClass('on');
    $('#header .dimmed_bg').toggleClass('on');
    $('.m_gnb::before').toggleClass('on');
  });

  // m_gnb 아코디언 메뉴
  $('.m_gnb>li>a').on('click', function () {
    $(this).parent().addClass('active');
    $(this).parent().siblings().removeClass('active');
  });

  // .main_business 슬라이더
  let mainBusiness = new Swiper('.main_business .swiper', {
    slidesPerView: 1,
    loop: true,
    autoplay: {
      delay: 3000,
      disableOnInteraction: false,
    },
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
    // 태블릿 분기점
    breakpoints: {
      768: {
        slidesPerView: 2,
      },
    },
  });

  // 푸터 패밀리버튼
  $('#footer .family_wrap .family_btn').on('click', function () {
    $('#footer .family_wrap').toggleClass('on');
  });

  // 탑버튼 클릭 시 상단으로 이동 (애니메이션)
  $('#footer .top_btn').on('click', function (e) {
    e.preventDefault();
    $('html, body').animate({ scrollTop: 0 });
  });

  // 탑버튼 fadeIn, fadeOut
  $(window).scroll(function () {
    if ($(this).scrollTop() > 100) {
      $('.top_btn').fadeIn();
    } else {
      $('.top_btn').fadeOut();
    }
  });
});
