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
<section class="site-hero overlay" style="background-image: url( images/bar2.jpg)"
         data-stellar-background-ratio="0.5" id="section-home">
    <div class="container">
        <div class="row site-hero-inner justify-content-center align-items-center">
            <div class="col-md-10 text-center" data-aos="fade-up">
                <h1 class="heading"><fmt:message key="gallery.header.photoGallery"/></h1>
            </div>
        </div>
    </div>

    <a class="mouse smoothscroll" href="#next">
        <div class="mouse-icon">
            <span class="mouse-wheel"></span>
        </div>
    </a>
</section>

<section class="section slider-section bg-light">
    <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
                <h2 class="heading" data-aos="fade-up"><fmt:message key="gallery.header.photos"/></h2>
                <%--                <p data-aos="fade-up" data-aos-delay="100"> </p>--%>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <div class="home-slider major-caousel owl-carousel mb-5" data-aos="fade-up" data-aos-delay="200">
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}images/event.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/event.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}images/room2/room2_img1.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room2/room2_img1.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}images/image_6.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/image_6.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}images/room4/room4_img3.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room4/room4_img3.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}images/room5/room5_img1.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room5/room5_img1.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}images/room6/room6_img2.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room6/room6_img2.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                </div>
                <!-- END slider -->
            </div>
            <div class="col-md-6">

                <div class="home-slider major-caousel owl-carousel mb-5" data-aos="fade-up" data-aos-delay="200">
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}images/room3/room3_img1.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room3/room3_img1.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}images/image_5.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/image_5.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}images/room1/room1_img2.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room1/room1_img2.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}images/room4/room4_img3.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room4/room4_img3.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}images/room5/room5_img2.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room5/room5_img2.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}images/room6/room6_img2.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room6/room6_img2.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                </div>
                <!-- END slider -->
            </div>
            <div class="col-md-6">
                <div class="home-slider major-caousel owl-carousel mb-5" data-aos="fade-up" data-aos-delay="200">
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}images/room1/room1_img1.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room1/room1_img1.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}images/room2/room2_img3.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room2/room2_img3.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}images/room3/room3_img1.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room3/room3_img1.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}images/room4/room4_img3.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room4/room4_img3.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}images/room5/room5_img4.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room5/room5_img4.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}images/sea-view-1.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/sea-view-1.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                </div>
                <!-- END slider -->
            </div>
            <div class="col-md-6">
                <div class="home-slider major-caousel owl-carousel mb-5" data-aos="fade-up" data-aos-delay="200">
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}images/image_7.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/image_7.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}images/room1/room1_img3.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room1/room1_img3.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}images/room3/room3_img2.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room3/room3_img2.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}images/room4/room4_img3.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room4/room4_img3.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}images/room5/room5_img1.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room5/room5_img1.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}images/room6/room6_img2.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room6/room6_img2.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                </div>
                <!-- END slider -->
            </div>

        </div>
    </div>
</section>
<%@include file="components/endPage.jsp" %>
<%@include file="components/scripts.jsp" %>


</body>
</html>