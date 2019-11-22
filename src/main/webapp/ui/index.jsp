<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${locale}"/>
<fmt:setBundle basename="${bundle}"/>
<html>
<head>
    <base href="${pageContext.request.contextPath}/ui/">
    <title>Booking Hotel</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
<!-- END nav -->

<section class="site-hero overlay" style="background-image: url(./images/sea-view-1.jpg)"
         data-stellar-background-ratio="0.5" id="section-home">
    <div class="container">
        <div class="row site-hero-inner justify-content-center align-items-center">
            <div class="col-md-10 text-center" data-aos="fade-up">
                <h1 class="heading"><fmt:message key="home.banner.header"/></h1>
            </div>
        </div>
    </div>

    <a class="mouse smoothscroll" href="#next">
        <div class="mouse-icon">
            <span class="mouse-wheel"></span>
        </div>
    </a>
</section>

<section class="section bg-light pb-0">
    <div class="container">

        <div class="row check-availabilty" id="next">
            <div class="block-32" data-aos="fade-up" data-aos-offset="-200">

                <form action="${pageContext.request.contextPath}/check-availabilty" method="post">
                    <div class="row">
                        <div class="col-md-6 mb-3 mb-lg-0 col-lg-3">
                            <label for="checkin_date" name="checkin_date" class="font-weight-bold text-black"><fmt:message
                                    key="navigation.bookingForm.dataCheckIn"/> </label>
                            <div class="field-icon-wrap">
                                <div class="icon"><span class="icon-calendar"></span></div>
                                <input type="text" id="checkin_date" name="checkin-date" class="form-control">
                            </div>
                        </div>
                        <div class="col-md-6 mb-3 mb-lg-0 col-lg-3">
                            <label for="checkout_date"  class="font-weight-bold text-black"><fmt:message
                                    key="navigation.bookingForm.dataCheckOut"/> </label>
                            <div class="field-icon-wrap">
                                <div class="icon"><span class="icon-calendar"></span></div>
                                <input type="text" id="checkout_date" name="checkout-date" class="form-control">
                            </div>
                        </div>
                        <div class="col-md-6 mb-3 mb-md-0 col-lg-3">
                            <div class="row">
                                <div class="col-md-6 mb-3 mb-md-0">
                                    <label for="adults" class="font-weight-bold text-black"><fmt:message
                                            key="navigation.bookingForm.adults"/></label>
                                    <div class="field-icon-wrap">
                                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                        <select name="adults" id="adults" class="form-control">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4+</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6 form-group">
                                    <label for="roomType" class="font-weight-bold text-black" ><fmt:message
                                            key="navigation.bookingForm.roomType"/></label>
                                    <div class="field-icon-wrap" onclick="">
                                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                        <select name="roomType" id="roomType" class="form-control">
                                            <option value="ALL" name="ALL"><fmt:message
                                                    key="selectionRooms.header.all"/></option>
                                            <option value="COMFORT"><fmt:message
                                                    key="selectionRooms.header.roomTypeComfort"/></option>
                                            <option value="FAMILY REST" name="FAMILY REST"><fmt:message
                                                    key="selectionRooms.header.roomTypeFamilyRest"/></option>
                                            <option value="RELAX"><fmt:message
                                                    key="selectionRooms.header.roomTypeRelax"/></option>
                                            <option value="BUSINESS"><fmt:message
                                                    key="selectionRooms.header.roomTypeBusiness"/></option>
                                            <option value="LUX"><fmt:message
                                                    key="selectionRooms.header.roomTypeLux"/></option>

                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-3 align-self-center">
                            <button class="btn btn-primary btn-block text-white"><fmt:message
                                    key="navigation.bookingForm.checkAvailabilty"/></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<%--<!--describe hotel-->--%>
<%@include file="components/about.jsp" %>
<%--<!-- END .block-1 -->--%>


<!--reviews-->
<section class="section testimonial-section">
    <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
                <h2 class="heading" data-aos="fade-up"><fmt:message key="home.banner.peopleSay"/></h2>
            </div>
        </div>
        <div class="row">
            <div class="js-carousel-2 owl-carousel mb-5" data-aos="fade-up" data-aos-delay="200">

                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="./images/person_1.jpg" alt="Image placeholder"
                             class="rounded-circle mx-auto">
                    </div>
                    <blockquote>

                        <p><fmt:message key="home.banner.peopleSay1"/></p>
                    </blockquote>
                    <p><em>&mdash; Jean Smith</em></p>
                </div>

                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="./images/person_2.jpg" alt="Image placeholder"
                             class="rounded-circle mx-auto">
                    </div>
                    <blockquote>
                        <p><fmt:message key="home.banner.peopleSay2"/></p>
                    </blockquote>
                    <p><em>&mdash; Dian Doe</em></p>
                </div>

                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="./images/person_10.png" alt="Image placeholder"
                             class="rounded-circle mx-auto">
                    </div>
                    <blockquote>

                        <p><fmt:message key="home.banner.peopleSay3"/></p>
                    </blockquote>
                    <p><em>&mdash; Jonin Warshawskii</em></p>
                </div>


                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="./images/person_11.jpeg" alt="Image placeholder"
                             class="rounded-circle mx-auto">
                    </div>
                    <blockquote>

                        <p><fmt:message key="home.banner.peopleSay4"/></p>
                    </blockquote>
                    <p><em>&mdash; Rosa Len</em></p>
                </div>

                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="./images/person_12.jpg" alt="Image placeholder"
                             class="rounded-circle mx-auto">
                    </div>
                    <blockquote>
                        <p><fmt:message key="home.banner.peopleSay5"/></p>
                    </blockquote>
                    <p><em>&mdash; Denis Mark</em></p>
                </div>

                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="./images/person_14.jpg" alt="Image placeholder"
                             class="rounded-circle mx-auto">
                    </div>
                    <blockquote>

                        <p><fmt:message key="home.banner.peopleSay6"/></p>
                    </blockquote>
                    <p><em>&mdash; Barbar Straiz</em></p>
                </div>

            </div>
            <!-- END slider -->
        </div>

    </div>
</section>

<section class="section contact-section" id="section-contact">
    <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
                <h2 class="heading" data-aos="fade-up"><fmt:message key="home.banner.contactUs"/></h2>
                <p data-aos="fade-up"><fmt:message key="home.banner.contactUsIfYouHave"/></p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-7" data-aos="fade-up" data-aos-delay="100">
                <form method="post" class="bg-white p-md-5 p-4 mb-5 border">
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label for="name"><fmt:message key="navigation.bookingForm.name"/></label>
                            <input type="text" name="name" id="name" class="form-control ">
                        </div>
                        <div class="col-md-6 form-group">
                            <label for="phone"><fmt:message key="navigation.bookingForm.phone"/></label>
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
                            <label for="message"><fmt:message key="home.banner.writeMessage"/></label>
                            <textarea name="message" id="message" class="form-control " cols="30"
                                      rows="8"></textarea>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <input type="submit" value="<fmt:message key="home.banner.sendMessage"/>"
                                   class="btn btn-primary text-white font-weight-bold">
                            <div class="submitting"></div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-5" data-aos="fade-up" data-aos-delay="200">
                <div class="row">
                    <div class="col-md-10 ml-auto contact-info">
                        <p><span class="d-block"><fmt:message key="endPage.banner.address"/></span> <span
                                class="text-black"> Khreschatyk St, 15/4 Kyiv, 01001</span>
                        </p>
                        <p><span class="d-block"><fmt:message key="endPage.banner.phone"/></span> <span
                                class="text-black"> +38(050)208-75-69</span></p>
                        <p><span class="d-block">Email:</span> <span
                                class="text-black"> booking_hotelShel@gmail.com</span></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- END .block-5 -->

<%@include file="components/endPage.jsp" %>
<%@include file="components/scripts.jsp" %>


</body>
</html>