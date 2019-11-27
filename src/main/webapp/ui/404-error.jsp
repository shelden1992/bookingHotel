<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!--<fmt:setLocale value="${locale}"/>-->
<!--<fmt:setBundle basename="${bundle}"/>-->
<!--<!DOCTYPE html>-->

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

    <link rel="stylesheet" href="css/ionicons.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Theme Style -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark pb_navbar pb_scrolled-light" id="templateux-navbar">
    <div class="container">
        <a class="navbar-brand" href="${pageContext.request.contextPath}"><span class="text-danger">Booking</span>Hotel</a>
        <div class="site-menu-toggle js-site-menu-toggle  ml-auto" data-aos="fade" data-toggle="collapse"
             data-target="#templateux-navbar-nav" aria-controls="templateux-navbar-nav" aria-expanded="false"
             aria-label="Toggle navigation">
            <span></span>
            <span></span>
            <span></span>
        </div>

        <div class="collapse navbar-collapse" id="templateux-navbar-nav">

            </ul>
            <div class="col-lg-6 col-sm-6 col-8 header-top-left">
                <a href="${pageContext.request.contextPath}/language?locale=en" class="text-uppercase">en</a>
                <a href="${pageContext.request.contextPath}/language?locale=ru" class="text-uppercase">ru</a>
            </div>

        </div>
    </div>
</nav>


<section class="site-hero overlay" style="background-image: url( images/404.png)"
         data-stellar-background-ratio="0.5" id="section-home">
    <div class="container">
        <div class="row site-hero-inner justify-content-center align-items-center">
            <div class="col-md-10 text-center" data-aos="fade-up">
                <h2 class="heading">Error 404<br></h2>
                <p>The page you are looking for might have been removed had its name changed or is temporarily
                    unavailable.
                    <a href="${pageContext.request.contextPath}">Back to homepage</a></p>
            </div>
        </div>

    </div>


</section>


</body>
<%@include file="components/scripts.jsp" %>
</html>
