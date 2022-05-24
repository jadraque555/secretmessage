(function ($) {
    "use strict";

    /*-------------------------------------------------------------------------------
	  Navbar 
	-------------------------------------------------------------------------------*/ 
    function navbarFixed() {
        if ($('.header_area').length) {
            $(window).scroll(function () {
                var scroll = $(window).scrollTop();
                if (scroll) {
                    $(".header_area").addClass("navbar_fixed");
                } else {
                    $(".header_area").removeClass("navbar_fixed");
                }
            });
        }
    }
    navbarFixed();

  

    /*-------------------------------------------------------------------------------
	  WOW js
	-------------------------------------------------------------------------------*/
    function wowAnimation() {
        new WOW({
            offset: 100,
            mobile: true
        }).init()
    }
    wowAnimation()

    /*-------------------------------------------------------------------------------
	  progress bar js
	-------------------------------------------------------------------------------*/
    function circle_progress() {
        if ($('.circle').length) {
            $(".circle").each(function () {
                $(".circle").appear(function () {
                    $('.circle').circleProgress({
                        startAngle: -14.1,
                        size: 200,
                        duration: 9000,
                        easing: "circleProgressEase",
                        emptyFill: '#f1f1fa ',
                        lineCap: 'round',
                        thickness: 10,
                    })
                }, {
                    triggerOnce: true,
                    offset: 'bottom-in-view'
                })
            })
        }
    }
    circle_progress();

    /*-------------------------------------------------------------------------------
	  preloader js
	-------------------------------------------------------------------------------*/
    function loader() {
        $(window).on('load', function () {
            $('#ctn-preloader').addClass('loaded');
            // Una vez haya terminado el preloader aparezca el scroll

            if ($('#ctn-preloader').hasClass('loaded')) {
                // Es para que una vez que se haya ido el preloader se elimine toda la seccion preloader
                $('#preloader').delay(900).queue(function () {
                    $(this).remove();
                });
            }
        });
    }
    loader();

 
    /*-------------------------------------------------------------------------------
	  active dropdown
	-------------------------------------------------------------------------------*/
    function active_dropdown() {
        if ($(window).width() < 992) {
            $('.menu li.submenu > a').on('click', function (event) {
                event.preventDefault()
                $(this).parent().find('ul').first().toggle(700);
                $(this).parent().siblings().find('ul').hide(700);
            });
        }
    }
    active_dropdown();


    /*-------------------------------------------------------------------------------
	  hamberger menu
	-------------------------------------------------------------------------------*/
    function hamberger_menu() {
        if ($('.burger_menu').length) {
            $('.burger_menu').on('click', function () {
                $(this).toggleClass('open')
                $('body').removeClass('menu-is-closed').addClass('menu-is-opened');
            });
            $('.close, .click-capture').on('click', function () {
                $('body').removeClass('menu-is-opened').addClass('menu-is-closed');
            });
        }
    }
    hamberger_menu();
	
	function share() {
            // TODO fix native share
			
			$( "#other" ).click(function() {
			  if (navigator.share) {
                navigator.share({
                        text: `Play online Flames Game Now`,
                        url: siteUrl
                    }).then(() => {
                        console.log('Thanks for sharing!');
                    })
                    .catch(err => {
                        console.log(`Couldn't share because of`, err.message);
                    });
            } else {
                console.log('Web share not supported');
            }
			});	
        }
	share()	

})(jQuery)