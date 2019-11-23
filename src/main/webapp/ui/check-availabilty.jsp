<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${locale}"/>
<fmt:setBundle basename="${bundle}"/>
<c:set var="listRooms" value="${requestScope.listCheckAvailabiltyRooms}"/>
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


<section class="site-hero overlay" style="background-image: url( images/check-availabillty.jpg)"
         data-stellar-background-ratio="0.5" id="section-home">

    <div class="container">
        <div class="row site-hero-inner justify-content-center align-items-center">
            <div class="col-md-10 text-center" data-aos="fade-up">
                <c:if test="${empty listRooms}">
                <h3 class="heading"><fmt:message key="navigation.bookingForm.unfortunatelyCaseCheckFreeRooms"/></h3>
                <h3><a href="${pageContext.request.contextPath}#section-contact"><fmt:message
                        key="navigation.bookingForm.orContactUs"/> </a>
                    <h3
                    </c:if>
                    <c:if test="${not empty listRooms}">
                    <h1 class="heading"><fmt:message key="navigation.bookingForm.allFreeRooms"/></h1>
                    </c:if>
            </div>
        </div>
    </div>


    <a class="mouse smoothscroll" href="#next">
        <div class="mouse-icon">
            <span class="mouse-wheel"></span>
        </div>
    </a>
</section>


<c:if test="${not empty listRooms}">
    <section class="section" id="section-rooms">
        <div class="container">
            <div class="row justify-content-center text-center mb-5">
                <div class="col-md-7">
                    <h2 class="heading" data-aos="fade-up"><fmt:message
                            key="selectionRooms.header.roomAndSuites"/></h2>
                </div>
            </div>
            <c:forEach items="${listRooms}" var="room" varStatus="loop">
                <div class="row">
                    <div class="col-md-6">
                        <div class="home-slider major-caousel owl-carousel mb-5" data-aos="fade-up"
                             data-aos-delay="200">

                            <c:forEach items="${room.photoList}" var="photo">
                                <div class="slider-item">
                                    <a href="${pageContext.request.contextPath}/ui/${photo.photoLink}"
                                       data-fancybox="images"
                                       data-caption="Caption for this image"><img src="${photo.photoLink}"
                                                                                  alt="Image placeholder"
                                                                                  class="img-fluid"></a>
                                </div>
                            </c:forEach>
                        </div>
                    </div>

                    <div class="p-5 text-center room-info">
                        <h2><c:out value="${room.roomType.name}"/></h2>
                        <span class="text-uppercase letter-spacing-1"><c:out value="${room.price}"/> </span>
                        <fmt:message key="selectionRooms.header.roomPerNight"/>
                    </div>
                </div>

            </c:forEach>
        </div>
    </section>

</c:if>


<%@include file="components/endPage.jsp" %>
<%@include file="components/scripts.jsp" %>


</body>
</html>
