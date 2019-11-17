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
<body data-spy="scroll" data-target="#templateux-navbar" data-offset="200">

<%@include file="../../ui/partOfPage/navigationBar.jsp" %>

<section class="site-hero overlay" style="background-image: url( ../images/room1/room1_img1.jpg)"
         data-stellar-background-ratio="0.5" id="section-home">
    <div class="container">
        <div class="row site-hero-inner justify-content-center align-items-center">
            <div class="col-md-10 text-center" data-aos="fade-up">
                <h1 class="heading">Choose your room</h1>
            </div>
        </div>
    </div>

    <a class="mouse smoothscroll" href="#next">
        <div class="mouse-icon">
            <span class="mouse-wheel"></span>
        </div>
    </a>
</section>

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
                        <img src="../images/img_1.jpg" alt="Free website template" class="img-fluid mb-3">
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
                        <img src="../images/img_2.jpg" alt="Free website template" class="img-fluid mb-3">
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
                        <img src="../images/img_3.jpg" alt="Free website template" class="img-fluid mb-3">
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
<%@include file="../partOfPage/endPage.jsp" %>
<%@include file="../partOfPage/scripts.jsp" %>


</body>
</html>

