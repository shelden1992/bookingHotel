<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${locale}"/>
<fmt:setBundle basename="${bundle}"/>
<c:set var="userDto" value="${requestScope.userDto}"/>
<c:set var="reservationDto" value="${userDto.reservationDto}"/>
<c:set var="listRooms" value="${userDto.listRooms}"/>
<c:set var="user" value="${sessionScope.user}"/>

<html>
<head>
    <base href="${pageContext.request.contextPath}/ui/">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Booking Form</title>
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
<section class="site-hero overlay" style="background-image: url( images/booking2.jpg)"
         data-stellar-background-ratio="0.5" id="section-home">


    <div class="container">
        <div class="row site-hero-inner justify-content-center align-items-center">
            <div class="col-md-10 text-center" data-aos="fade-up">

                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12" data-aos="fade-up" data-aos-delay="100">

                                    <form action="${pageContext.request.contextPath}/booking" method="post"
                                          class="bg-white p-4">
                                        <div class="row mb-4">
                                            <div class="col-12"><h2><fmt:message
                                                    key="navigation.bookingForm.booking"/></h2>

                                            </div>
                                           <%-- <div>
                                                <c:if test="${sessionScope.user == null}">
                                                    <h5><span class="text-danger"><fmt:message
                                                            key="navigation.bookingForm.please"/></span> <a
                                                            href="${pageContext.request.contextPath}/login-form"
                                                            class="text-danger">
                                                        <fmt:message
                                                                key="navigation.bookingForm.enter"/></a> <span
                                                            class="text-danger"><fmt:message
                                                            key="navigation.bookingForm.or"/></span>
                                                        <a class="text-danger"
                                                           href="${pageContext.request.contextPath}/register-form"><fmt:message
                                                                key="navigation.bookingForm.register"/></a></h5>
                                                </c:if>
                                            </div>--%>

                                            <c:if test="${sessionScope.user != null}">
                                        </div>


                                        <div class="row">
                                            <div class="col-md-12  text-center form-group">
                                                <div>
                                                    <label class="text-black font-weight-bold"><fmt:message
                                                            key="navigation.registerForm.name"/>
                                                    </label>
                                                </div>
                                                <div>
                                                    <a class="col-12,mb-5 text-black font-weight-bold"
                                                       style="font-size: xx-large;"> <c:out
                                                            value="${user.name}"/></a>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-12 text-center form-group">

                                                <div>
                                                    <label class="text-black font-weight-bold"><fmt:message
                                                            key="navigation.registerForm.surname"/></label>
                                                </div>
                                                <div>
                                                    <a class="col-12,mb-5 text-black font-weight-bold"
                                                       style="font-size: xx-large;"> <c:out
                                                            value="${user.surname}"/></a>
                                                </div>
                                            </div>
                                        </div>

                                            <%--                                            <div class="col-md-12 form-group">--%>
                                            <%--                                                <label class="text-black font-weight-bold"--%>
                                            <%--                                                       for="passwordLogin"><fmt:message--%>
                                            <%--                                                        key="navigation.registerForm.password"/></label>--%>
                                            <%--                                                <input type="password" id="passwordLogin" class="form-control "--%>
                                            <%--                                                       name="password" pattern=".{6,}" title="Six or more characters"--%>
                                            <%--                                                       required="required">--%>
                                            <%--                                            </div>--%>
                                        </c:if>
                                        <div class="row">
                                            <div class="d-flex justify-content-between align-content-end w-100 col-auto">

                                                <input type="submit" value="<fmt:message
            key="navigation.bookingForm.confirmBooking"/>"
                                                       style="right: auto; align-self: flex-end;"
                                                       class="btn btn-primary">
                                            </div>
                                        </div>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>
<%@include file="components/endPage.jsp" %>
<%@include file="components/scripts.jsp" %>
</body>
</html>