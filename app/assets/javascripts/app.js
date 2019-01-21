/*

Template: REINTIVE | Agency Business Responsive Bootstrap 4 Landing Page Template
Author: bulltheme.com
Version: 1.0
Design and Developed by: bulltheme.com

*/

/*====================================
[ JS TABLE CONTENT ]
------------------------------------
    1.0 - Off Canvas
    2.0 - Mobile Menu Collapse
    3.0 - Header Social Follow
    4.0 - Smooth Link
    5.0 - Scrollspy
    6.0 - Home Slider
    7.0 - Home Scroller Animation
    8.0 - Typed Effect
    9.0 - Text Rotate
   10.0 - Background Video
   11.0 - Partner Slider
   12.0 - Testimonial Slider
   13.0 - Team Slider
   14.0 - Latest News Slider
   15.0 - Counter
   16.0 - Portfolio Filter
   17.0 - Magnific Popup
   18.0 - Accordion add Active Class
   19.0 - Input Style
   20.0 - Form Validator
   21.0 - Google Map
   22.0 - Back to Top
   23.0 - Full Page Animation 
   24.0 - Pre Loader 
   25.0 - Header Sticky 
-------------------------------------
[ JS CSS TABLE CONTENT ]
=====================================*/

(function($) {
    "use strict";


    jQuery(document).ready(function($) {

        /* =============================================
            1.0 - Off Canvas
        ============================================= */
        var myOffcanvas = Froffcanvas();

        /* =============================================
            2.0 - Mobile Menu Collapse
        ============================================= */
        $(".navbar-nav .nav-link").on('click', function(){
            $(".navbar-collapse").removeClass("show");
        });

        /* =============================================
            3.0 - Header Social Follow
        ============================================= */
        $('.header-follow').on('click', function(event) {
            event.preventDefault();
            $('.header-social').toggleClass('is-visible');
        });
        $('.header-follow-close').on('click', function(event) {
            event.preventDefault();
            $( '.header-social' ).toggleClass( 'is-visible' );
        });

        /* =============================================
            4.0 - Smooth Link
        ============================================= */
        $('.page-scroll').on('click', function(event) {
            var $anchor = $(this);
            $('html, body').stop().animate({
                scrollTop: $($anchor.attr('href')).offset().top
            }, 1500, 'easeInOutExpo');
            event.preventDefault();
        });

        /* =============================================
            5.0 - Scrollspy
        ============================================= */
        $("#navbarCollapse").scrollspy({ offset: 0});

        /* =============================================
            6.0 - Home Slider
        ============================================= */
        $('#home-slider').owlCarousel({
            loop : true,
            nav : true,
            navText: ['<span class="ti-angle-left"></span>' ,'<span class="ti-angle-right"></span>'],
            dots : false,
            items : 1,
            autoplay : true,
            autoHeight : true,
            responsiveCla1ss :true,
        });

        /* =============================================
            7.0 - Home Scroller Animation
        ============================================= */
        reanimate();
        function reanimate() {
            $('.home-scroller').animate({
                bottom: 50
            }, 1000).animate({
                bottom: 65
            }, 1000, function () {
                setTimeout(reanimate, 100);
            });
        }

        /* =============================================
            8.0 - Typed Effect
        ============================================= */
        $(".element").each(function(){
            var $this = $(this);
                $this.typed({
                strings: $this.attr('data-elements').split(','),
                typeSpeed: 100,
                loop: true,
                startDelay: 1000,
                backDelay: 1000,
            });
        });

        /* =============================================
            9.0 - Text Rotate
        ============================================= */
        $(".text-rotate").textrotator({
            animation: "flipUp",
            speed: 1750
        });

        /* =============================================
            10.0 - Background Video
        ============================================= */
        $(".bg-video-player").YTPlayer();

        /* =============================================
            11.0 - Partner Slider
        ============================================= */
        $('#partner-slider-1, #partner-slider-2').owlCarousel({
            loop : true,
            dots : false,
            nav : false,
            autoplay : true,
            autoplayHoverPause : true,
            autoHeight : true,
            responsiveCla1ss :true,
            responsive : {
                0 : {
                    items: 2
                },
                540 : {
                    items: 2,
                },
                720 : {
                    items: 3,
                },
                992 : {
                    items: 3,
                },
                1140 : {
                    items: 4,
                },
            }
        });

        /* =============================================
            12.0 - Testimonial Slider
        ============================================= */
        $('#testimonial-slider').owlCarousel({
            loop : true,
            dots : false,
            nav : false,
            autoplay : true,
            autoplayHoverPause : true,
            autoHeight : true,
            responsiveClass :true,
            responsive : {
                0 : {
                    items: 1
                },
                540 : {
                    items: 1,
                },
                720 : {
                    items: 1,
                },
                992 : {
                    items: 2,
                },
                1140 : {
                    items: 2,
                },
            }
        });

        /* =============================================
            13.0 - Team Slider
        ============================================= */
        $('#team-slider').owlCarousel({
            loop : true,
            dots : false,
            nav : false,
            autoplay : true,
            autoplayHoverPause : true,
            autoHeight : true,
            responsiveClass :true,
            responsive : {
                0 : {
                    items: 1
                },
                540 : {
                    items: 1,
                },
                720 : {
                    items: 2,
                },
                992 : {
                    items: 3,
                },
                1140 : {
                    items: 3,
                },
            }
        });

        /* =============================================
            14.0 - Latest News Slider
        ============================================= */
        $('#blog-slider').owlCarousel({
            loop : true,
            dots : false,
            nav : false,
            autoplay : true,
            autoplayHoverPause : true,
            autoHeight : true,
            responsiveClass :true,
            responsive : {
                0 : {
                    items: 1
                },
                540 : {
                    items: 1,
                },
                720 : {
                    items: 2,
                },
                992 : {
                    items: 3,
                },
                1140 : {
                    items: 3,
                },
            }
        });

        /* =============================================
            15.0 - Counter
        ============================================= */
        $('.counter-value').counterUp({
            delay: 10,
            time: 1000
        });

        /* =============================================
            16.0 - Portfolio Filter
        ============================================= */
        var $grid = $('.portfolio-row').imagesLoaded( function() {
            $grid.isotope({
                itemSelector: '.portfolio-col',
                layoutMode: 'fitRows',
                percentPosition: true,
                filter: '*'
            });
        });

        $('.portfolio-filter li').on( 'click', function() {
            var filterValue = $(this).attr('data-filter');
            $grid.isotope({ filter: filterValue });
        });

        $('.portfolio-filter li').on('click', function (e) {
            e.preventDefault();
            $('.portfolio-filter li').removeClass('active');
            $(this).addClass('active');
            var groupName = $(this).attr('data-group');
            $grid.isotope('shuffle', groupName );
        });

        /* =============================================
            17.0 - Magnific Popup
        ============================================= */
        $('.popup-image').magnificPopup({
            type: 'image',
            mainClass: 'mfp-fade',
            removalDelay: 160,
            fixedContentPos: false
        // other options
        });

        $('.popup-youtube, .popup-vimeo, .popup-gmaps').magnificPopup({
            disableOn: 700,
            type: 'iframe',
            mainClass: 'mfp-fade',
            removalDelay: 160,
            preloader: false,
            fixedContentPos: false
        });

        /* =============================================
            18.0 - Accordion add Active Class
        ============================================= */
        $(".card").on("show.bs.collapse hide.bs.collapse", function(e) {
            if (e.type=='show'){
                $(this).addClass('active');
            }
            else{
                $(this).removeClass('active');
            }
        });

        /* =============================================
            19.0 - Input Style
        ============================================= */
        $(document).on("focusout",".form-control",function(){
            if($(this).val() != ""){
                $(this).addClass("has-content");
            }else{
                $(this).removeClass("has-content");
            }
        });

        /* =============================================
            20.0 - Form Validator
        ============================================= */
        $(function () {
            $('.needs-validation').validator();
            $('.needs-validation').on('submit', function (e) {
                if (!e.isDefaultPrevented()) {
                    var url = "contact.php";
                    $.ajax({
                        type: "POST",
                        url: url,
                        data: $(this).serialize(),
                        success: function (data)
                        {
                            var messageAlert = 'alert-' + data.type;
                            var messageText = data.message;
                            var alertBox = '<div class="alert mb-40 '+messageAlert+' alert-dismissible fade show" role="alert">'+ messageText +'<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>';
                            if (messageAlert && messageText) {
                                $('.needs-validation').find('.messages').hide().html(alertBox).fadeIn('slow');
                                $('.needs-validation')[0].reset();
                            }
                        }
                    });
                    return false;
                }
            })
        });

        /* =============================================
            21.0 - Google Map
        ============================================= */
        var map = new google.maps.Map(document.getElementById('map'), {
            center: {lat: 51.508530, lng: 0.076132},
            zoom: 13,
            styles:
            [
            {"featureType": "administrative", "elementType": "labels.text.fill", "stylers": [{"color": "#444444"}]},
            {"featureType": "landscape", "elementType": "all", "stylers": [{"color": "#f2f2f2"}]},
            {"featureType": "poi", "elementType": "all", "stylers": [{"visibility": "off"}]},
            {"featureType": "road", "elementType": "all", "stylers": [{"saturation": -100}, {"lightness": 45}]},
            {"featureType": "road.highway", "elementType": "all","stylers": [{"visibility": "simplified"}]},
            {"featureType": "road.arterial", "elementType": "labels.icon", "stylers": [{"visibility": "off"}]},
            {"featureType": "transit","elementType": "all","stylers": [{"visibility": "off"}]},
            {"featureType": "water","elementType": "all","stylers": [{"color": "#f1f1f1"},{"visibility": "on"}]}
            ]
        });

        var marker = new google.maps.Marker({
            position: new google.maps.LatLng(51.508530, 0.076132),
            icon: 'images/map-pin.svg',
            map: map,
        });

        var contentString = '<div class="text-center"><h5 class="text-uppercase font-weight-bold text-black"><span class="text-uppercase fw-2">Re<span class="fw-8 text-blue">intive</span></span></h5><p>4461 Cedar Street Moro, AR 72368</p></div>';

        var infowindow = new google.maps.InfoWindow({
            content: contentString
        });

        marker.addListener('click', function() {
            infowindow.open(map, marker);
        });

        /* =============================================
            22.0 - Back to Top
        ============================================= */
        $(window).on("scroll", function() {
            if ($(this).scrollTop() > 100) { 
                $('#back-to-top').fadeIn(); 
            } else { 
                $('#back-to-top').fadeOut(); 
            } 
        }); 
        $("#back-to-top").on("click", function(){
            $("html, body").animate({ scrollTop: 0 }, 1000); 
            return false; 
        });


        /* =============================================
            23.0 - Full Page Animation
        ============================================= */
        var wow = new WOW({
            boxClass:     'wow',      // animated element css class (default is wow)
            animateClass: 'animated', // animation css class (default is animated)
            offset:       100,          // distance to the element when triggering the animation (default is 0)
            mobile:       true,       // trigger animations on mobile devices (default is true)
            live:         true,       // act on asynchronously loaded content (default is true)
        });
        wow.init();

    });

    
    
    jQuery(window).on('load', function() {

        /* =============================================
            24.0 - Pre Loader
        ============================================= */
        $('body').imagesLoaded( function() {
            $('#pre-loader').fadeOut();
            $('body').css({"overflow": "visible"});
        });

    });


    jQuery(window).on('scroll', function() {

        /* =============================================
            25.0 - Header Sticky
        ============================================= */
        var scroll = $(window).scrollTop();
        if (scroll >= 100) {
            $(".header").addClass("header-sticky");
        } else {
            $(".header").removeClass("header-sticky");
        }

    });


}(jQuery));