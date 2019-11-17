<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="${pageContext.request.contextPath}/ui/pages/">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Booking hotel room</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" type="text/css"
          href="//fonts.googleapis.com/css?family=|Roboto+Sans:400,700|Playfair+Display:400,700">

    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/animate.css">
    <link rel="stylesheet" href="../css/owl.carousel.min.css">
    <link rel="stylesheet" href="../css/aos.css">
    <link rel="stylesheet" href="../css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="../css/jquery.timepicker.css">
    <link rel="stylesheet" href="../css/fancybox.min.css">

    <link rel="stylesheet" href="../fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="../fonts/fontawesome/css/font-awesome.min.css">

    <!-- Theme Style -->
    <link rel="stylesheet" href="../css/style.css">
</head>
<body data-spy="scroll" data-target="#templateux-navbar" data-offset="100">
<%@include file="../../ui/partOfPage/navigationBar.jsp" %>
<section class="site-hero overlay" style="background-image: url( ../images/team.jpg)"
         data-stellar-background-ratio="0.5" id="section-home">
    <div class="container">
        <div class="row site-hero-inner justify-content-center align-items-center">
            <div class="col-md-10 text-center" data-aos="fade-up">
                <h1 class="heading">Doing Business With Us</h1>
            </div>
        </div>
    </div>

    <a class="mouse smoothscroll" href="#next">
        <div class="mouse-icon">
            <span class="mouse-wheel"></span>
        </div>
    </a>
</section>
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
                    <div class="front" style="background-image: url(../images/hero_7.jpg);">
                        <div class="box">
                            <h2>Boris Donson</h2>
                            <p>President</p>
                        </div>
                    </div>
                    <div class="back">
                        <!-- back content -->
                        <blockquote>
                            <p>&ldquo;Our goal is your comfort and coziness. Our team is professionals and like-minded
                                people.&rdquo;</p>
                        </blockquote>
                        <div class="author d-flex">
                            <div class="image mr-3 align-self-center">
                                <img src="${pageContext.request.contextPath}/ui/images/hero_7.jpg" alt="">
                            </div>
                            <div class="name align-self-center">Boris Donson<span class="position">President</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- .flip-container -->
        </div>
        <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="200">
            <div class="block-2"> <!-- .hover -->
                <div class="flipper">
                    <div class="front" style="background-image: url(../images/hero_9.png);">
                        <div class="box">
                            <h2>Daniel Merion</h2>
                            <p>Manager</p>
                        </div>
                    </div>
                    <div class="back">
                        <!-- back content -->
                        <blockquote>
                            <p>&ldquo;Every day we become better for our guests.&rdquo;</p>
                        </blockquote>
                        <div class="author d-flex">
                            <div class="image mr-3 align-self-center">
                                <img src="${pageContext.request.contextPath}/ui/images/hero_9.png" alt="">
                            </div>
                            <div class="name align-self-center">Daniel Merion <span
                                    class="position">Manager</span></div>
                        </div>
                    </div>
                </div>
            </div> <!-- .flip-container -->
        </div>
        <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="300">
            <div class="block-2">
                <div class="flipper">
                    <div class="front" style="background-image: url(../images/hero_8.webp);">
                        <div class="box">
                            <h2>Oleg Sencov</h2>
                            <p>SMM Head</p>
                        </div>
                    </div>
                    <div class="back">
                        <!-- back content -->
                        <blockquote>
                            <p>&ldquo;24 hours 7 days a week we are open to you.&rdquo;</p>
                        </blockquote>
                        <div class="author d-flex">
                            <div class="image mr-3 align-self-center">
                                <img src="${pageContext.request.contextPath}/ui/images/hero_8.webp" alt="">
                            </div>
                            <div class="name align-self-center">Oleg Sencov<span
                                    class="position">SMM Head</span></div>
                        </div>
                    </div>
                </div>
            </div> <!-- .flip-container -->
        </div>
        <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="300">
            <div class="block-2">
                <div class="flipper">
                    <div class="front" style="background-image: url(../images/hero_2.jpg);">
                        <div class="box">
                            <h2>Jane Johnson</h2>
                            <p>Marketing Director</p>
                        </div>
                    </div>
                    <div class="back">
                        <!-- back content -->
                        <blockquote>
                            <p>&ldquo;Each employee is part of a large family. And we are always happy to help our
                                guests.&rdquo;</p>
                        </blockquote>
                        <div class="author d-flex">
                            <div class="image mr-3 align-self-center">
                                <img src="${pageContext.request.contextPath}/ui/images/hero_2.jpg" alt="">
                            </div>
                            <div class="name align-self-center">Jane Johnson <span
                                    class="position">Marketing Director</span></div>
                        </div>
                    </div>
                </div>
            </div> <!-- .flip-container -->
        </div>
        <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="200">
            <div class="block-2"> <!-- .hover -->
                <div class="flipper">
                    <div class="front" style="background-image: url(../images/hero_1.jpg);">
                        <div class="box">
                            <h2>Nick William</h2>
                            <p>Business Manager</p>
                        </div>
                    </div>
                    <div class="back">
                        <!-- back content -->
                        <blockquote>
                            <p>&ldquo;The best reward for us is when our guest returns again.&rdquo;</p>
                        </blockquote>
                        <div class="author d-flex">
                            <div class="image mr-3 align-self-center">
                                <img src="${pageContext.request.contextPath}/ui/images/hero_1.jpg" alt="">
                            </div>
                            <div class="name align-self-center">Nick William<span
                                    class="position">Business Manager</span></div>
                        </div>
                    </div>
                </div>
            </div> <!-- .flip-container -->
        </div>
        <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="100">
            <div class="block-2">
                <div class="flipper">
                    <div class="front" style="background-image: url(../images/hero_6.jpg);">
                        <div class="box">
                            <h2>Uriy Byckov</h2>
                            <p>Manager</p>
                        </div>
                    </div>
                    <div class="back">
                        <!-- back content -->
                        <blockquote>
                            <p>&ldquo;Each member team has its own tasks, but we are all united by one goal.&rdquo;</p>
                        </blockquote>
                        <div class="author d-flex">
                            <div class="image mr-3 align-self-center">
                                <img src="${pageContext.request.contextPath}/ui/images/hero_6.jpg" alt="">
                            </div>
                            <div class="name align-self-center">Uriy Bycko <span class="position">Manager</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- .flip-container -->
        </div>

    </div>
</div>
<%@include file="../partOfPage/endPage.jsp" %>
<%@include file="../partOfPage/scripts.jsp" %>


</body>
</html>