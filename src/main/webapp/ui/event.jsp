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
<body data-spy="scroll" data-target="#templateux-navbar" data-offset="100">
<%@include file="components/navigationBar.jsp" %>
<section class="site-hero overlay" style="background-image: url( images/event.jpg)"
         data-stellar-background-ratio="0.5" id="section-home">
    <div class="container">
        <div class="row site-hero-inner justify-content-center align-items-center">
            <div class="col-md-10 text-center" data-aos="fade-up">
                <h1 class="heading"><fmt:message key="event.start.message"/></h1>
            </div>
        </div>
    </div>

    <a class="mouse smoothscroll" href="#next">
        <div class="mouse-icon">
            <span class="mouse-wheel"></span>
        </div>
    </a>
</section>

<!--events-->
<section class="section blog-post-entry bg-light" id="section-events">
    <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
                <h2 class="heading" data-aos="fade-up"><fmt:message key="event.start.events"/></h2>
                <p data-aos="fade-up"><fmt:message key="event.start.conferenceMeeting"/></p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-6 post" data-aos="fade-up" data-aos-delay="100">

                <div class="media media-custom d-block mb-4 h-70">
                    <a href="${pageContext.request.contextPath}#section-contact" class="mb-4 d-block"><img
                            src="images/banquets.jpg" alt="Image placeholder"
                            class="img-fluid"></a>
                    <div class="media-body">
                        <%--                        <span class="meta-post">February 26, 2018</span>--%>
                        <h2 class="mt-0 mb-3"><a href="#"><fmt:message key="event.start.banquets"/></a></h2>
                        <p><fmt:message key="event.start.banquetsDescr"/></p>
                    </div>
                </div>
            </div>

            <div class="col-lg-6 col-md-6 col-sm-6 col-6 post" data-aos="fade-up" data-aos-delay="200">
                <div class="media media-custom d-block mb-4 h-70">
                    <a href="${pageContext.request.contextPath}#section-contact" class="mb-4 d-block"><img
                            src="images/wedding.jpg" alt="Image placeholder"
                            class="img-fluid"></a>
                    <div class="media-body">
                        <%--                        <span class="meta-post">February 26, 2018</span>--%>
                        <h2 class="mt-0 mb-3"><a href="#"><fmt:message key="event.start.weddings"/></a></h2>
                        <p><fmt:message key="event.start.weddingsDescr"/></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-6 post" data-aos="fade-up" data-aos-delay="300">
                <div class="media media-custom d-block mb-4 h-70">
                    <a href="${pageContext.request.contextPath}#section-contact" class="mb-4 d-block"><img
                            src="images/confer.jpg" alt="Image placeholder"
                            class="img-fluid"></a>
                    <div class="media-body">
                        <%--                        <span class="meta-post">February 26, 2018</span>--%>
                        <h2 class="mt-0 mb-3"><a href="#"><fmt:message key="event.start.conference"/></a></h2>
                        <p><fmt:message key="event.start.conferenceDescr"/></p>
                    </div>
                </div>
            </div>

            <div class="col-lg-6 col-md-6 col-sm-6 col-6 post" data-aos="fade-up" data-aos-delay="300">
                <div class="media media-custom d-block mb-4 h-70">
                    <a href="${pageContext.request.contextPath}#section-contact" class="mb-4 d-block"><img
                            src="images/catering.jpg" alt="Image placeholder"
                            class="img-fluid"></a>
                    <div class="media-body">
                        <%--                        <span class="meta-post">February 26, 2018</span>--%>
                        <h2 class="mt-0 mb-3"><a href="#"><fmt:message key="event.start.catering"/></a></h2>
                        <p><fmt:message key="event.start.cateringDescr"/></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>
<!-- END .block-3 -->
<%@include file="components/endPage.jsp" %>
<%@include file="components/scripts.jsp" %>


</body>
</html>