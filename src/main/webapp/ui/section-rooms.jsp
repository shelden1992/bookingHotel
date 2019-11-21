<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${locale}"/>
<fmt:setBundle basename="${bundle}"/>
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


<%@include file="components/navigationBar.jsp" %>

<section class="site-hero overlay" style="background-image: url( images/room1/room1_img1.jpg)"
         data-stellar-background-ratio="0.5" id="section-home">
    <div class="container">
        <div class="row site-hero-inner justify-content-center align-items-center">
            <div class="col-md-10 text-center" data-aos="fade-up">
                <h1 class="heading"><fmt:message key="selectionRooms.header.choose"/></h1>
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
                <h2 class="heading" data-aos="fade-up"><fmt:message key="selectionRooms.header.roomAndSuites"/></h2>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 col-lg-6" data-aos="fade-up">
                <a href="#" class="room">
                    <figure class="img-wrap">
                        <img src="images/img_1.jpg" alt="Free website template" class="img-fluid mb-3">
                    </figure>
                    <div class="p-3 text-center room-info">
                        <h2><fmt:message key="selectionRooms.header.roomTypeComfort"/></h2>
                        <span class="text-uppercase letter-spacing-1"><fmt:message
                                key="selectionRooms.header.roomPerNight90"/></span>
                    </div>
                </a>
            </div>

            <div class="col-md-6 col-lg-6" data-aos="fade-up">
                <a href="#" class="room">
                    <figure class="img-wrap">
                        <img src="images/img_2.jpg" alt="Free website template" class="img-fluid mb-3">
                    </figure>
                    <div class="p-3 text-center room-info">
                        <h2><fmt:message key="selectionRooms.header.roomTypeFamilyRest"/></h2>
                        <span class="text-uppercase letter-spacing-1"><fmt:message
                                key="selectionRooms.header.roomPerNight120"/></span>
                    </div>
                </a>
            </div>

            <div class="col-md-6 col-lg-6" data-aos="fade-up">
                <a href="#" class="room">
                    <figure class="img-wrap">
                        <img src="images/img_3.jpg" alt="Free website template" class="img-fluid mb-3">
                    </figure>
                    <div class="p-3 text-center room-info">
                        <h2><fmt:message key="selectionRooms.header.roomTypeLux"/></h2>
                        <span class="text-uppercase letter-spacing-1"><fmt:message
                                key="selectionRooms.header.roomPerNight250"/></span>
                    </div>
                </a>
            </div>
            <div class="col-md-6 col-lg-6" data-aos="fade-up">
                <a href="#" class="room">
                    <figure class="img-wrap">
                        <img src="images/img_3.jpg" alt="Free website template" class="img-fluid mb-3">
                    </figure>
                    <div class="p-3 text-center room-info">
                        <h2><fmt:message key="selectionRooms.header.roomTypeLux"/></h2>
                        <span class="text-uppercase letter-spacing-1"><fmt:message
                                key="selectionRooms.header.roomPerNight250"/></span>
                    </div>
                </a>
            </div>

            <div class="col-md-6 col-lg-6" data-aos="fade-up">
                <a href="#" class="room">
                    <figure class="img-wrap">
                        <img src="images/img_3.jpg" alt="Free website template" class="img-fluid mb-3">
                    </figure>
                    <div class="p-3 text-center room-info">
                        <h2><fmt:message key="selectionRooms.header.roomTypeLux"/></h2>
                        <span class="text-uppercase letter-spacing-1"><fmt:message
                                key="selectionRooms.header.roomPerNight250"/></span>
                    </div>
                </a>
            </div>
            <div class="col-md-6 col-lg-6" data-aos="fade-up">
                <a href="#" class="room">
                    <figure class="img-wrap">
                        <img src="images/img_3.jpg" alt="Free website template" class="img-fluid mb-3">
                    </figure>
                    <div class="p-3 text-center room-info">
                        <h2><fmt:message key="selectionRooms.header.roomTypeLux"/></h2>
                        <span class="text-uppercase letter-spacing-1"><fmt:message
                                key="selectionRooms.header.roomPerNight250"/></span>
                    </div>
                </a>
            </div>


        </div>
    </div>

</section>
<%@include file="components/endPage.jsp" %>
<%@include file="components/scripts.jsp" %>


</body>
</html>