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

    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/animate.css">
    <link rel="stylesheet" href="./css/owl.carousel.min.css">
    <link rel="stylesheet" href="./css/aos.css">
    <link rel="stylesheet" href="./css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="./css/jquery.timepicker.css">
    <link rel="stylesheet" href="./css/fancybox.min.css">

    <link rel="stylesheet" href="./fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="./fonts/fontawesome/css/font-awesome.min.css">

    <!-- Theme Style -->
    <link rel="stylesheet" href="./css/style.css">
</head>
<body data-spy="scroll" data-target="#templateux-navbar" data-offset="100">

<%@include file="components/navigationBar.jsp" %>

<section class="site-hero overlay" style="background-image: url( images/1.jpg)"
         data-stellar-background-ratio="0.5" id="section-home">
    <div class="container">
        <div class="row site-hero-inner justify-content-center align-items-center">
            <div class="col-md-10 text-center" data-aos="fade-up">
                <h1 class="heading">  <fmt:message key="privacy.header"/></h1>
            </div>
        </div>
    </div>

    <a class="mouse smoothscroll" href="#next">
        <div class="mouse-icon">
            <span class="mouse-wheel"></span>
        </div>
    </a>
</section>

<div class="row pt-5 col-md-6 text-center" style="margin: auto;">

    <div>
        <p align="justify">
            <fmt:message key="privacy.first"/>
        </p>

        <p align="justify">
            <fmt:message key="privacy.second"/>
        </p>

        <p align="justify">
            <fmt:message key="privacy.third"/>
        </p>

        <p align="justify">
            <fmt:message key="privacy.four"/>

        </p>

        <p align="justify">
            <fmt:message key="privacy.five"/>

        </p>

        <p align="justify">
            <fmt:message key="privacy.six"/>

        </p>
    </div>
</div>


</p>


<%@include file="components/endPage.jsp" %>
<%@include file="components/scripts.jsp" %>


</body>
</html>
