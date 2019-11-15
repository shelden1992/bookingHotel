<!DOCTYPE HTML>
<html>
<head>
    <base href="${pageContext.request.contextPath}/ui/">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Booking hotel room</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" type="text/css"
          href="//fonts.googleapis.com/css?family=|Roboto+Sans:400,700|Playfair+Display:400,700">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/aos.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">
    <link rel="stylesheet" href="css/fancybox.min.css">

    <link rel="stylesheet" href="fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="fonts/fontawesome/css/font-awesome.min.css">

    <!-- Theme Style -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body data-spy="scroll" data-target="#templateux-navbar" data-offset="200">

<nav class="navbar navbar-expand-lg navbar-dark pb_navbar pb_scrolled-light" id="templateux-navbar">
    <div class="container">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/"><span class="text-danger">Booking</span>Hotel</a>
        <div class="site-menu-toggle js-site-menu-toggle  ml-auto" data-aos="fade" data-toggle="collapse"
             data-target="#templateux-navbar-nav" aria-controls="templateux-navbar-nav" aria-expanded="false"
             aria-label="Toggle navigation">
            <span></span>
            <span></span>
            <span></span>
        </div>
        <!-- END menu-toggle -->
<%--change--%>
        <div class="collapse navbar-collapse" id="templateux-navbar-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/about">About</a></li>
                <li class="nav-item"><a class="nav-link"
                                        href="${pageContext.request.contextPath}/selection-rooms">Rooms</a></li>
                <li class="nav-item"><a class="nav-link" href="#section-events">Events</a></li>
                <li class="nav-item"><a class="nav-link" href="#section-team">Team</a></li>
                <li class="nav-item"><a class="nav-link" href="#section-contact">Contact</a></li>
                <li class="nav-item cta-btn ml-xl-2 ml-lg-2 ml-md-0 ml-sm-0 ml-0">
                    <a class="nav-link" href="#"
                       target="_blank">
                        <span class="pb_rounded-4 px-4 rounded">Get Started</span></a>

                </li>
                <li class="nav-item cta-btn ml-xl-2 ml-lg-2 ml-md-0 ml-sm-0 ml-0">
                    <a class="nav-link" href="${pageContext.request.contextPath}/login"
                       data-target="_blank">
                        <span class="pb_rounded-4 px-4 rounded">Sign in</span></a>

                </li>
            </ul>
        </div>
<%--        /--%>
    </div>
</nav>
<!-- END nav -->

<section class="site-hero overlay" style="background-image: url(images/sea-view-1.jpg)"
         data-stellar-background-ratio="0.5" id="section-home">
    <div class="container">
        <div class="row site-hero-inner justify-content-center align-items-center">
            <div class="col-md-10 text-center" data-aos="fade-up">
                <h1 class="heading">Stay With Us &amp; Relax</h1>
            </div>
        </div>
    </div>

    <a class="mouse smoothscroll" href="#next">
        <div class="mouse-icon">
            <span class="mouse-wheel"></span>
        </div>
    </a>
</section>
<!-- END section -->

<section class="section bg-light pb-0">
    <div class="container">

        <div class="row check-availabilty" id="next">
            <div class="block-32" data-aos="fade-up" data-aos-offset="-200">

                <form action="#">
                    <div class="row">
                        <div class="col-md-6 mb-3 mb-lg-0 col-lg-3">
                            <label for="checkin_date" class="font-weight-bold text-black">Check In</label>
                            <div class="field-icon-wrap">
                                <div class="icon"><span class="icon-calendar"></span></div>
                                <input type="text" id="checkin_date" class="form-control">
                            </div>
                        </div>
                        <div class="col-md-6 mb-3 mb-lg-0 col-lg-3">
                            <label for="checkout_date" class="font-weight-bold text-black">Check Out</label>
                            <div class="field-icon-wrap">
                                <div class="icon"><span class="icon-calendar"></span></div>
                                <input type="text" id="checkout_date" class="form-control">
                            </div>
                        </div>
                        <div class="col-md-6 mb-3 mb-md-0 col-lg-3">
                            <div class="row">
                                <div class="col-md-6 mb-3 mb-md-0">
                                    <label for="adults" class="font-weight-bold text-black">Adults</label>
                                    <div class="field-icon-wrap">
                                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                        <select name="" id="adults" class="form-control">
                                            <option value="">1</option>
                                            <option value="">2</option>
                                            <option value="">3</option>
                                            <option value="">4+</option>
                                        </select>
                                    </div>
                                </div>
                                <!--                                <div class="col-md-6 mb-3 mb-md-0">-->
                                <!--                                    <label for="children" class="font-weight-bold text-black">Children</label>-->
                                <!--                                    <div class="field-icon-wrap">-->
                                <!--                                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>-->
                                <!--                                        <select name="" id="children" class="form-control">-->
                                <!--                                            <option value="">1</option>-->
                                <!--                                            <option value="">2</option>-->
                                <!--                                            <option value="">3</option>-->
                                <!--                                            <option value="">4+</option>-->
                                <!--                                        </select>-->
                                <!--                                    </div>-->
                                <!--                                </div>-->
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3 align-self-end">
                            <button class="btn btn-primary btn-block text-white">Check Availabilty</button>
                        </div>
                    </div>
                </form>
            </div>


        </div>
    </div>
</section>

<!--describe hotel-->
<section class="py-5 bg-light" id="section-about">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-12 col-lg-7 ml-auto order-lg-2 position-relative mb-5" data-aos="fade-up">
                <img src="images/hero_4.jpg" alt="Image" class="img-fluid rounded">
            </div>
            <div class="col-md-12 col-lg-4 order-lg-1" data-aos="fade-up">
                <h2 class="heading mb-4">Hey there!</h2>
                <p class="mb-5">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia,
                    there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the
                    Semantics, a large language ocean.</p>
                <p><a href="https://vimeo.com/channels/staffpicks/93951774" data-fancybox
                      class="btn btn-primary text-white py-2 mr-3 text-uppercase letter-spacing-1">Watch the video</a>
                </p>
            </div>

        </div>
    </div>
</section>
<!-- END .block-1 -->

<!--allRooms-->
<section class="section" id="section-rooms">
    <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
                <h2 class="heading" data-aos="fade-up">Rooms &amp; Suites</h2>
                <p data-aos="fade-up" data-aos-delay="100">Far far away, behind the word mountains, far from the
                    countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove
                    right at the coast of the Semantics, a large language ocean.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
                <a href="#" class="room">
                    <figure class="img-wrap">
                        <img src="images/img_1.jpg" alt="Free website template" class="img-fluid mb-3">
                    </figure>
                    <div class="p-3 text-center room-info">
                        <h2>Single Room</h2>
                        <span class="text-uppercase letter-spacing-1">90$ / per night</span>
                    </div>
                </a>
            </div>

            <div class="col-md-6 col-lg-4" data-aos="fade-up">
                <a href="#" class="room">
                    <figure class="img-wrap">
                        <img src="images/img_2.jpg" alt="Free website template" class="img-fluid mb-3">
                    </figure>
                    <div class="p-3 text-center room-info">
                        <h2>Family Room</h2>
                        <span class="text-uppercase letter-spacing-1">120$ / per night</span>
                    </div>
                </a>
            </div>

            <div class="col-md-6 col-lg-4" data-aos="fade-up">
                <a href="#" class="room">
                    <figure class="img-wrap">
                        <img src="images/img_3.jpg" alt="Free website template" class="img-fluid mb-3">
                    </figure>
                    <div class="p-3 text-center room-info">
                        <h2>Presidential Room</h2>
                        <span class="text-uppercase letter-spacing-1">250$ / per night</span>
                    </div>
                </a>
            </div>


        </div>
    </div>

</section>
<!-- END .block-2 -->
<!--photos-->
<section class="section slider-section bg-light">
    <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
                <h2 class="heading" data-aos="fade-up">Photos</h2>
                <p data-aos="fade-up" data-aos-delay="100">Far far away, behind the word mountains, far from the
                    countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove
                    right at the coast of the Semantics, a large language ocean.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="home-slider major-caousel owl-carousel mb-5" data-aos="fade-up" data-aos-delay="200">
                    <div class="slider-item">
                        <a href="images/slider-1.jpg" data-fancybox="images" data-caption="Caption for this image"><img
                                src="images/slider-1.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="images/slider-2.jpg" data-fancybox="images" data-caption="Caption for this image"><img
                                src="images/slider-2.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="images/slider-3.jpg" data-fancybox="images" data-caption="Caption for this image"><img
                                src="images/slider-3.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="images/slider-4.jpg" data-fancybox="images" data-caption="Caption for this image"><img
                                src="images/slider-4.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="images/slider-5.jpg" data-fancybox="images" data-caption="Caption for this image"><img
                                src="images/slider-5.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="images/slider-6.jpg" data-fancybox="images" data-caption="Caption for this image"><img
                                src="images/slider-6.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="images/slider-7.jpg" data-fancybox="images" data-caption="Caption for this image"><img
                                src="images/slider-7.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                </div>
                <!-- END slider -->
            </div>

        </div>
    </div>
</section>
<!-- END section-4-->
<!--events-->
<section class="section blog-post-entry bg-light" id="section-events">
    <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
                <h2 class="heading" data-aos="fade-up">Events</h2>
                <p data-aos="fade-up">Far far away, behind the word mountains, far from the countries Vokalia and
                    Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of
                    the Semantics, a large language ocean.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">

                <div class="media media-custom d-block mb-4 h-100">
                    <a href="#" class="mb-4 d-block"><img src="images/img_1.jpg" alt="Image placeholder"
                                                          class="img-fluid"></a>
                    <div class="media-body">
                        <span class="meta-post">February 26, 2018</span>
                        <h2 class="mt-0 mb-3"><a href="#">Travel Hacks to Make Your Flight More Comfortable</a></h2>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia,
                            there live the blind texts.</p>
                    </div>
                </div>

            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="200">
                <div class="media media-custom d-block mb-4 h-100">
                    <a href="#" class="mb-4 d-block"><img src="images/img_2.jpg" alt="Image placeholder"
                                                          class="img-fluid"></a>
                    <div class="media-body">
                        <span class="meta-post">February 26, 2018</span>
                        <h2 class="mt-0 mb-3"><a href="#">5 Job Types That Aallow You To Earn As You Travel The
                            World</a></h2>
                        <p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language
                            ocean.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="300">
                <div class="media media-custom d-block mb-4 h-100">
                    <a href="#" class="mb-4 d-block"><img src="images/img_3.jpg" alt="Image placeholder"
                                                          class="img-fluid"></a>
                    <div class="media-body">
                        <span class="meta-post">February 26, 2018</span>
                        <h2 class="mt-0 mb-3"><a href="#">30 Great Ideas On Gifts For Travelers</a></h2>
                        <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.
                            t is a paradisematic country, in which roasted parts of sentences.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- END .block-3 -->


<!--reviews-->
<section class="section testimonial-section">
    <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
                <h2 class="heading" data-aos="fade-up">People Says</h2>
            </div>
        </div>
        <div class="row">
            <div class="js-carousel-2 owl-carousel mb-5" data-aos="fade-up" data-aos-delay="200">

                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="images/person_1.jpg" alt="Image placeholder" class="rounded-circle mx-auto">
                    </div>
                    <blockquote>

                        <p>&ldquo;A small river named Duden flows by their place and supplies it with the necessary
                            regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your
                            mouth.&rdquo;</p>
                    </blockquote>
                    <p><em>&mdash; Jean Smith</em></p>
                </div>

                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="images/person_2.jpg" alt="Image placeholder" class="rounded-circle mx-auto">
                    </div>
                    <blockquote>
                        <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an almost
                            unorthographic life One day however a small line of blind text by the name of Lorem Ipsum
                            decided to leave for the far World of Grammar.&rdquo;</p>
                    </blockquote>
                    <p><em>&mdash; John Doe</em></p>
                </div>

                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="images/person_3.jpg" alt="Image placeholder" class="rounded-circle mx-auto">
                    </div>
                    <blockquote>

                        <p>&ldquo;When she reached the first hills of the Italic Mountains, she had a last view back on
                            the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline
                            of her own road, the Line Lane.&rdquo;</p>
                    </blockquote>
                    <p><em>&mdash; John Doe</em></p>
                </div>


                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="images/person_1.jpg" alt="Image placeholder" class="rounded-circle mx-auto">
                    </div>
                    <blockquote>

                        <p>&ldquo;A small river named Duden flows by their place and supplies it with the necessary
                            regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your
                            mouth.&rdquo;</p>
                    </blockquote>
                    <p><em>&mdash; Jean Smith</em></p>
                </div>

                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="images/person_2.jpg" alt="Image placeholder" class="rounded-circle mx-auto">
                    </div>
                    <blockquote>
                        <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an almost
                            unorthographic life One day however a small line of blind text by the name of Lorem Ipsum
                            decided to leave for the far World of Grammar.&rdquo;</p>
                    </blockquote>
                    <p><em>&mdash; John Doe</em></p>
                </div>

                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="images/person_3.jpg" alt="Image placeholder" class="rounded-circle mx-auto">
                    </div>
                    <blockquote>

                        <p>&ldquo;When she reached the first hills of the Italic Mountains, she had a last view back on
                            the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline
                            of her own road, the Line Lane.&rdquo;</p>
                    </blockquote>
                    <p><em>&mdash; John Doe</em></p>
                </div>

            </div>
            <!-- END slider -->
        </div>

    </div>
</section>
<!-- END .block-5 -->
<!--Leadership-->
<div class="container section" id="section-team">

    <div class="row justify-content-center text-center mb-5">
        <div class="col-md-7 mb-5">
            <h2 class="heading" data-aos="fade-up">Leadership</h2>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="100">
            <div class="block-2">
                <div class="flipper">
                    <div class="front" style="background-image: url(images/person_3.jpg);">
                        <div class="box">
                            <h2>Will Smith</h2>
                            <p>President</p>
                        </div>
                    </div>
                    <div class="back">
                        <!-- back content -->
                        <blockquote>
                            <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an
                                almost unorthographic life One day however a small line of blind text by the name of
                                Lorem Ipsum decided to leave for the far World of Grammar.&rdquo;</p>
                        </blockquote>
                        <div class="author d-flex">
                            <div class="image mr-3 align-self-center">
                                <img src="images/person_3.jpg" alt="">
                            </div>
                            <div class="name align-self-center">Will Smith <span class="position">President</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- .flip-container -->
        </div>

        <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="200">
            <div class="block-2"> <!-- .hover -->
                <div class="flipper">
                    <div class="front" style="background-image: url(images/person_1.jpg);">
                        <div class="box">
                            <h2>Claire Williams</h2>
                            <p>Business Manager</p>
                        </div>
                    </div>
                    <div class="back">
                        <!-- back content -->
                        <blockquote>
                            <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an
                                almost unorthographic life One day however a small line of blind text by the name of
                                Lorem Ipsum decided to leave for the far World of Grammar.&rdquo;</p>
                        </blockquote>
                        <div class="author d-flex">
                            <div class="image mr-3 align-self-center">
                                <img src="images/person_1.jpg" alt="">
                            </div>
                            <div class="name align-self-center">Claire Williams <span
                                    class="position">Business Manager</span></div>
                        </div>
                    </div>
                </div>
            </div> <!-- .flip-container -->
        </div>

        <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="300">
            <div class="block-2">
                <div class="flipper">
                    <div class="front" style="background-image: url(images/person_2.jpg);">
                        <div class="box">
                            <h2>Jane Johnson</h2>
                            <p>Marketing Director</p>
                        </div>
                    </div>
                    <div class="back">
                        <!-- back content -->
                        <blockquote>
                            <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an
                                almost unorthographic life One day however a small line of blind text by the name of
                                Lorem Ipsum decided to leave for the far World of Grammar.&rdquo;</p>
                        </blockquote>
                        <div class="author d-flex">
                            <div class="image mr-3 align-self-center">
                                <img src="images/person_2.jpg" alt="">
                            </div>
                            <div class="name align-self-center">Jane Johnson <span
                                    class="position">Marketing Director</span></div>
                        </div>
                    </div>
                </div>
            </div> <!-- .flip-container -->
        </div>


        <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="100">
            <div class="block-2">
                <div class="flipper">
                    <div class="front" style="background-image: url(images/person_3.jpg);">
                        <div class="box">
                            <h2>Will Smith</h2>
                            <p>President</p>
                        </div>
                    </div>
                    <div class="back">
                        <!-- back content -->
                        <blockquote>
                            <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an
                                almost unorthographic life One day however a small line of blind text by the name of
                                Lorem Ipsum decided to leave for the far World of Grammar.&rdquo;</p>
                        </blockquote>
                        <div class="author d-flex">
                            <div class="image mr-3 align-self-center">
                                <img src="images/person_3.jpg" alt="">
                            </div>
                            <div class="name align-self-center">Will Smith <span class="position">President</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- .flip-container -->
        </div>

        <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="200">
            <div class="block-2"> <!-- .hover -->
                <div class="flipper">
                    <div class="front" style="background-image: url(images/person_1.jpg);">
                        <div class="box">
                            <h2>Claire Williams</h2>
                            <p>Business Manager</p>
                        </div>
                    </div>
                    <div class="back">
                        <!-- back content -->
                        <blockquote>
                            <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an
                                almost unorthographic life One day however a small line of blind text by the name of
                                Lorem Ipsum decided to leave for the far World of Grammar.&rdquo;</p>
                        </blockquote>
                        <div class="author d-flex">
                            <div class="image mr-3 align-self-center">
                                <img src="images/person_1.jpg" alt="">
                            </div>
                            <div class="name align-self-center">Claire Williams <span
                                    class="position">Business Manager</span></div>
                        </div>
                    </div>
                </div>
            </div> <!-- .flip-container -->
        </div>

        <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="300">
            <div class="block-2">
                <div class="flipper">
                    <div class="front" style="background-image: url(images/person_2.jpg);">
                        <div class="box">
                            <h2>Jane Johnson</h2>
                            <p>Marketing Director</p>
                        </div>
                    </div>
                    <div class="back">
                        <!-- back content -->
                        <blockquote>
                            <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an
                                almost unorthographic life One day however a small line of blind text by the name of
                                Lorem Ipsum decided to leave for the far World of Grammar.&rdquo;</p>
                        </blockquote>
                        <div class="author d-flex">
                            <div class="image mr-3 align-self-center">
                                <img src="images/person_2.jpg" alt="">
                            </div>
                            <div class="name align-self-center">Jane Johnson <span
                                    class="position">Marketing Director</span></div>
                        </div>
                    </div>
                </div>
            </div> <!-- .flip-container -->
        </div>

    </div>
</div>
<!-- END .block-6 -->
<!--contact last-->
<section class="section contact-section" id="section-contact">
    <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
                <h2 class="heading" data-aos="fade-up">Contact Us</h2>
                <p data-aos="fade-up">Far far away, behind the word mountains, far from the countries Vokalia and
                    Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of
                    the Semantics, a large language ocean.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-7" data-aos="fade-up" data-aos-delay="100">

                <form method="post" class="bg-white p-md-5 p-4 mb-5 border">
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label for="name">Name</label>
                            <input type="text" name="name" id="name" class="form-control ">
                        </div>
                        <div class="col-md-6 form-group">
                            <label for="phone">Phone</label>
                            <input type="text" name="phone" id="phone" class="form-control ">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12 form-group">
                            <label for="email">Email</label>
                            <input type="email" name="email" id="email" class="form-control ">
                        </div>
                    </div>
                    <div class="row mb-4">
                        <div class="col-md-12 form-group">
                            <label for="message">Write Message</label>
                            <textarea name="message" name="message" id="message" class="form-control " cols="30"
                                      rows="8"></textarea>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <input type="submit" value="Send Message"
                                   class="btn btn-primary text-white font-weight-bold">
                            <div class="submitting"></div>
                        </div>
                    </div>


                </form>


            </div>
            <div class="col-md-5" data-aos="fade-up" data-aos-delay="200">
                <div class="row">
                    <div class="col-md-10 ml-auto contact-info">
                        <p><span class="d-block">Address:</span> <span class="text-black"> 98 West 21th Street, Suite 721 New York NY 10016</span>
                        </p>
                        <p><span class="d-block">Phone:</span> <span class="text-black"> (+1) 234 4567 8910</span></p>
                        <p><span class="d-block">Email:</span> <span class="text-black"> info@yourdomain.com</span></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- END .block-7 -->

<section class="section bg-image overlay" style="background-image: url('images/hero_4.jpg');">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-12 col-md-6 text-center mb-4 mb-md-0 text-md-left" data-aos="fade-up">
                <h2 class="text-white font-weight-bold">A Best Place To Stay. Reserve Now!</h2>
            </div>
            <div class="col-12 col-md-6 text-center text-md-right" data-aos="fade-up" data-aos-delay="200">
                <!-- Extra large modal -->
                <a href="#" class="btn btn-outline-white-primary py-3 text-white px-5" data-toggle="modal"
                   data-target="#reservation-form">Reserve Now</a>
            </div>
        </div>
    </div>
</section>

<footer class="section footer-section">
    <div class="container">
        <div class="row mb-4">
            <div class="col-md-3 mb-5">
                <ul class="list-unstyled link">
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Rooms</a></li>
                    <li><a href="#">Terms &amp; Conditions</a></li>
                    <li><a href="#">Privacy Policy</a></li>

                </ul>
            </div>
            <div class="col-md-3 mb-5">
                <ul class="list-unstyled link">
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">The Rooms &amp; Suites</a></li>
                    <li><a href="#">Contact Us</a></li>
                </ul>
            </div>
            <div class="col-md-3 mb-5 pr-md-5 contact-info">
                <!-- <li>198 West 21th Street, <br> Suite 721 New York NY 10016</li> -->
                <p><span class="d-block"><span class="ion-ios-location h5 mr-3 text-primary"></span>Address:</span>
                    <span> 198 West 21th Street, <br> Suite 721 New York NY 10016</span></p>
                <p><span class="d-block"><span class="ion-ios-telephone h5 mr-3 text-primary"></span>Phone:</span>
                    <span> +38(050)208-75-69</span></p>
                <p><span class="d-block"><span class="ion-ios-email h5 mr-3 text-primary"></span>Email:</span> <span> booking_hotelShel@gmail.com</span>
                </p>
            </div>
            <div class="col-md-3 mb-5">
                <p>Sign up for our newsletter</p>
                <form action="#" class="footer-newsletter">
                    <div class="form-group">
                        <input type="email" class="form-control" placeholder="Email...">
                        <button type="submit" class="btn"><span class="fa fa-paper-plane"></span></button>
                    </div>
                </form>
            </div>
        </div>
        <div class="row pt-5">
            <p class="col-md-8 text-left">
                <!-- copyright. -->
                Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                All rights reserved | by <a
                    target="_blank">Denys Shelupets</a>
                <!--  -->
            </p>

            <p class="col-md-4 text-right social">
                <a href="#"><span class="fa fa-tripadvisor"></span></a>
                <a href="#"><span class="fa fa-facebook"></span></a>
                <a href="#"><span class="fa fa-twitter"></span></a>
                <a href="#"><span class="fa fa-linkedin"></span></a>
                <a href="#"><span class="fa fa-vimeo"></span></a>
            </p>
        </div>
    </div>
</footer>
<!--login-->

<div class="modal fade " id="reservation-form" tabindex="-1" role="dialog" aria-labelledby="singIn"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">

            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12" data-aos="fade-up" data-aos-delay="100">

                        <form action="index.jsp" method="post" class="bg-white p-4">
                            <div class="row mb-4">
                                <div class="col-12"><h2>Sign in</h2></div>
                            </div>


                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <label class="text-black font-weight-bold" for="name">Name</label>
                                    <input type="text" id="name" class="form-control ">
                                </div>
                                <div class="col-md-6 form-group">
                                    <label class="text-black font-weight-bold" for="surname">Surname</label>
                                    <input type="text" id="surname" class="form-control ">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 form-group">
                                    <label class="text-black font-weight-bold" for="password">Password</label>
                                    <input type="email" id="password" class="form-control ">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 form-group">
                                    <label class="text-black font-weight-bold" for="email">Email</label>
                                    <input type="email" id="email" class="form-control ">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 form-group">
                                    <label class="text-black font-weight-bold" for="email">Phone</label>
                                    <input type="email" id="phone" class="form-control ">
                                </div>
                            </div>

                        </form>

                    </div>

                </div>
            </div>

        </div>
    </div>
</div>
<!--end_login-->
<!-- Modal -->
<div class="modal fade " id="reservation-form" tabindex="-1" role="dialog" aria-labelledby="reservationFormTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">

            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12" data-aos="fade-up" data-aos-delay="100">

                        <form action="index.jsp" method="post" class="bg-white p-4">
                            <div class="row mb-4">
                                <div class="col-12"><h2>Reservation</h2></div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <label class="text-black font-weight-bold" for="name">Name</label>
                                    <input type="text" id="name" class="form-control ">
                                </div>
                                <div class="col-md-6 form-group">
                                    <label class="text-black font-weight-bold" for="phone">Phone</label>
                                    <input type="text" id="phone" class="form-control ">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12 form-group">
                                    <label class="text-black font-weight-bold" for="email">Email</label>
                                    <input type="email" id="email" class="form-control ">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <label class="text-black font-weight-bold" for="checkin_date">Date Check In</label>
                                    <input type="text" id="checkin_date" class="form-control">
                                </div>
                                <div class="col-md-6 form-group">
                                    <label class="text-black font-weight-bold" for="checkout_date">Date Check
                                        Out</label>
                                    <input type="text" id="checkout_date" class="form-control">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <label for="adults" class="font-weight-bold text-black">Adults</label>
                                    <div class="field-icon-wrap">
                                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                        <select name="" id="adults" class="form-control">
                                            <option value="">1</option>
                                            <option value="">2</option>
                                            <option value="">3</option>
                                            <option value="">4+</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6 form-group">
                                    <label for="children" class="font-weight-bold text-black">Children</label>
                                    <div class="field-icon-wrap">
                                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                        <select name="" id="children" class="form-control">
                                            <option value="">1</option>
                                            <option value="">2</option>
                                            <option value="">3</option>
                                            <option value="">4+</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-4">
                                <div class="col-md-12 form-group">
                                    <label class="text-black font-weight-bold" for="message">Notes</label>
                                    <textarea name="message" id="message" class="form-control " cols="30"
                                              rows="8"></textarea>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <input type="submit" value="Reserve Now"
                                           class="btn btn-primary text-white py-3 px-5 font-weight-bold">
                                </div>
                            </div>
                        </form>

                    </div>

                </div>
            </div>

        </div>
    </div>
</div>

<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/jquery-migrate-3.0.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.stellar.min.js"></script>
<script src="js/jquery.fancybox.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>


<script src="js/aos.js"></script>

<script src="js/bootstrap-datepicker.js"></script>
<script src="js/jquery.timepicker.min.js"></script>

<script src="js/main.js"></script>
</body>
</html>