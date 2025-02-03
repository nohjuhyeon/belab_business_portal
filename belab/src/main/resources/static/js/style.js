/* butti-N1 */
(function () {
  $(function () {
    $(".butti-N1[id='unm5z1y12U']").each(function () {
      const $block = $(this);

      // Header Mobile 1Depth Click
      if (window.innerWidth <= 992) {
        $block.find(".header-gnbitem").each(function () {
          const $gnblink = $(this).find(".header-gnblink");
          const $sublist = $(this).find(".header-sublist");
          if ($sublist.length) {
            $gnblink.attr("href", "javascript:void(0);");
          }
        });
      }

      const $headerTop = $block.find(".header-top");
      const $gnbList = $block.find(".header-gnbitem");
      if ($headerTop.length && $gnbList.length) {
        $block.addClass("top-menu-active");
      }

      // Mobile Lang
      $block.find(".header-langbtn").off("click").on("click", function () {
        $(this).parent().toggleClass("lang-active");
      });

      // Mobile Top
      $block.find(".btn-momenu").off("click").on("click", function (e) {
        e.stopPropagation(); // 이벤트 전파 방지
        console.log("햄버거 버튼 클릭됨"); // 디버깅 로그

        if (!$block.hasClass("block-active")) {
          $block.addClass("block-active");
          console.log("block-active 추가됨");
        } else {
          $block.removeClass("block-active");
          console.log("block-active 제거됨");
        }

        $block.find(".header-gnbitem").removeClass("item-active");
        $block.find(".header-sublist").removeAttr("style");
      });

      // Mobile Gnb
      function handleGnbEvents() {
        $block.find(".header-gnbitem").each(function () {
          const $this = $(this);
          const $thislink = $this.find(".header-gnblink");
          const $sublist = $this.find(".header-sublist");

          $thislink.off("click");
          if (window.innerWidth < 992) {
            $thislink.on("click", function (e) {
              e.preventDefault(); // 기본 동작 방지
              const $clickedItem = $(this).parents(".header-gnbitem");
              if (!$clickedItem.hasClass("item-active")) {
                $block.find(".header-gnbitem").removeClass("item-active");
                $block.find(".header-sublist").stop().slideUp(300);
              }
              $clickedItem.toggleClass("item-active");
              $sublist.stop().slideToggle(300);
            });
          } else {
            $sublist.removeAttr("style");
            $block.removeClass("block-active");
            $block.find(".header-gnbitem").removeClass("item-active");
          }
        });
      }

      handleGnbEvents();

      $(window).on("resize", function () {
        handleGnbEvents();
      });

      // 스크롤 위치가 최상단일 경우에만 상단 메뉴 활성화
      if ($(window).scrollTop() === 0) {
        $block.addClass("header-top-active");
      }

      $(window).scroll(function () {
        if ($(window).scrollTop() > 0) {
          $block.removeClass("header-top-active");
        } else {
          $block.addClass("header-top-active");
        }
      });

      // Full Gnb
      $block.find(".btn-allmenu").off("click").on("click", function () {
        $block.find(".header-fullmenu").addClass("fullmenu-active");
      });

      $block.find(".fullmenu-close").off("click").on("click", function () {
        $block.find(".header-fullmenu").removeClass("fullmenu-active");
      });

      // Full Gnb DecoLine
      $block.find(".fullmenu-gnbitem").each(function () {
        const $this = $(this);
        $this.off("mouseover mouseout");
        $this.on("mouseover", function () {
          if (window.innerWidth > 992) {
            $this.find(".fullmenu-gnblink").addClass("on");
          }
        });
        $this.on("mouseout", function () {
          if (window.innerWidth > 992) {
            $this.find(".fullmenu-gnblink").removeClass("on");
          }
        });
      });

      // Gnb Hover
      $block.find(".header-gnb").off("mouseenter mouseleave").hover(
        function () {
          $block.addClass("gnb-active");
        },
        function () {
          $block.removeClass("gnb-active");
        }
      );
    });
  });
})();

/* basic-N1 */
(function() {
  $(function() {
    $(".basic-N1[id=\'AIM5Z21Bh6\']").each(function() {
      const $block = $(this);
      // Header Mobile 1Depth Click
      if (window.innerWidth <= 992) {
        $block.find(".header-gnbitem").each(function() {
          const $gnblink = $(this).find(".header-gnblink");
          const $sublist = $(this).find(".header-sublist");
          if ($sublist.length) {
            $gnblink.attr("href", "javascript:void(0);");
          }
        });
      }
      // Mobile Top
      $block.find(".btn-momenu").on("click", function() {
        $block.toggleClass("block-active");
        $block.find(".header-gnbitem").removeClass("item-active");
        $block.find(".header-sublist").removeAttr('style');
      });
      // Mobile Gnb
      function handleGnbEvents() {
        $block.find(".header-gnbitem").each(function() {
          const $this = $(this);
          const $thislink = $this.find(".header-gnblink");
          const $sublist = $this.find(".header-sublist");
          $thislink.off("click");
          if (window.innerWidth < 992) {
            $thislink.on("click", function() {
              const $clickedItem = $(this).parents(".header-gnbitem");
              if (!$clickedItem.hasClass("item-active")) {
                $block.find(".header-gnbitem").removeClass("item-active");
                $block.find(".header-sublist").stop().slideUp(300);
              }
              $clickedItem.toggleClass("item-active");
              $sublist.stop().slideToggle(300);
            });
          } else {
            $sublist.removeAttr('style');
            $block.removeClass("block-active");
            $block.find(".header-gnbitem").removeClass("item-active");
          }
        });
      }
      handleGnbEvents();
      $(window).on("resize", function() {
        handleGnbEvents();
      });
      // Scroll Header
      $(window).scroll(function() {
        if ($(window).scrollTop() > 0) {
          $block.addClass('header-top-active');
        } else {
          $block.removeClass('header-top-active');
        }
      });
      // Full Gnb
      $block.find(".btn-allmenu").on("click", function() {
        $block.find(".header-fullmenu").addClass("fullmenu-active");
      });
      $block.find(".fullmenu-close").on("click", function() {
        $block.find(".header-fullmenu").removeClass("fullmenu-active");
      });
      // Full Gnb DecoLine
      $block.find(".fullmenu-gnbitem").each(function() {
        const $this = $(this);
        $this.on("mouseover", function() {
          if (window.innerWidth > 992) {
            $this.find(".fullmenu-gnblink").addClass("on");
          }
        });
        $this.on("mouseout", function() {
          if (window.innerWidth > 992) {
            $this.find(".fullmenu-gnblink").removeClass("on");
          }
        });
      });
    });
  });
})();

/* futurebiz-N42 */
(function() {
  $(function() {
    $(".futurebiz-N42[id=\'bMM6ojerkN\']").each(function() {
      const $block = $(this);
      // Swiper
      const swiper = new Swiper(".futurebiz-N42[id=\'bMM6ojerkN\'] .contents-swiper", {
        slidesPerView: 'auto',
        spaceBetween: 0,
        loop: true,
        autoplay: {
          delay: 5000,
        },
        navigation: {
          nextEl: ".futurebiz-N42[id=\'bMM6ojerkN\'] .swiper-button-next",
          prevEl: ".futurebiz-N42[id=\'bMM6ojerkN\'] .swiper-button-prev",
        },
        pagination: {
          type: "progressbar",
          el: ".futurebiz-N42[id=\'bMM6ojerkN\'] .swiper-pagination",
          clickable: true,
        },
      });
    });
  });
})();
