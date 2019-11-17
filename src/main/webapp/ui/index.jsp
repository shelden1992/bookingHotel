<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
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

<%@include file="../ui/partOfPage/navigationBar.jsp" %>


<section class="site-hero overlay" style="background-image: url(images/sea-view-1.jpg)"
         data-stellar-background-ratio="0.5" id="section-home">
    <div class="container">
        <div class="row site-hero-inner justify-content-center align-items-center">
            <div class="col-md-10 text-center" data-aos="fade-up">
                <h1 class="heading">Stay With Us &amp; Relax</h1>
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

                <form action="#">
                    <div class="row">
                        <div class="col-md-6 mb-3 mb-lg-0 col-lg-3">
                            <label for="checkin_date" class="font-weight-bold text-black">Check In</label>
                            <div class="field-icon-wrap">
                                <div class="icon"><span class="icon-calendar"></span></div>
                                <input type="text" id="checkin_date" class="form-control">
                            </div>
                        </div>
                        <div class="col-md-6 mb-3 mb-lg-0 col-lg-3">
                            <label for="checkout_date" class="font-weight-bold text-black">Check Out</label>
                            <div class="field-icon-wrap">
                                <div class="icon"><span class="icon-calendar"></span></div>
                                <input type="text" id="checkout_date" class="form-control">
                            </div>
                        </div>
                        <div class="col-md-6 mb-3 mb-md-0 col-lg-3">
                            <div class="row">
                                <div class="col-md-6 mb-3 mb-md-0">
                                    <label for="adults" class="font-weight-bold text-black">Adults</label>
                                    <div class="field-icon-wrap">
                                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                        <select name="" id="adults" class="form-control">
                                            <option value="">1</option>
                                            <option value="">2</option>
                                            <option value="">3</option>
                                            <option value="">4+</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3 align-self-end">
                            <button class="btn btn-primary btn-block text-white">Check Availabilty</button>
                        </div>
                    </div>
                </form>
            </div>


        </div>
    </div>
</section>

<!--describe hotel-->
<%@include file="../ui/partOfPage/about.jsp" %>
<!-- END .block-1 -->

<!--photos-->
<section class="section slider-section bg-light">
    <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
                <h2 class="heading" data-aos="fade-up">Photos</h2>
<%--                <p data-aos="fade-up" data-aos-delay="100"> </p>--%>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="home-slider major-caousel owl-carousel mb-5" data-aos="fade-up" data-aos-delay="200">
                    <div class="slider-item">
                        <a href="images/room1/room1_img1.jpg" data-fancybox="images" data-caption="Caption for this image"><img
                                src="images/room1/room1_img1.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="images/room2/room2_img4.jpg" data-fancybox="images" data-caption="Caption for this image"><img
                                src="images/room2/room2_img4.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="images/room3/room3_img2.jpg" data-fancybox="images" data-caption="Caption for this image"><img
                                src="images/room3/room3_img2.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="images/room4/room4_img3.jpg" data-fancybox="images" data-caption="Caption for this image"><img
                                src="images/room4/room4_img3.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="images/room5/room5_img1.jpg" data-fancybox="images" data-caption="Caption for this image"><img
                                src="images/room5/room5_img1.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="images/room6/room6_img2.jpg" data-fancybox="images" data-caption="Caption for this image"><img
                                src="images/room6/room6_img2.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
<%--                    <div class="slider-item">--%>
<%--                        <a href="images/room2/room2_img1.jpg" data-fancybox="images" data-caption="Caption for this image"><img--%>
<%--                                src="images/room2/room2_img1.jpg" alt="Image placeholder" class="img-fluid"></a>--%>
<%--                    </div>--%>
                </div>
                <!-- END slider -->
            </div>

        </div>
    </div>
</section>
<!-- END section-2-->

<!--reviews-->
<section class="section testimonial-section">
    <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
                <h2 class="heading" data-aos="fade-up">People Says</h2>
            </div>
        </div>
        <div class="row">
            <div class="js-carousel-2 owl-carousel mb-5" data-aos="fade-up" data-aos-delay="200">

                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="images/person_1.jpg" alt="Image placeholder" class="rounded-circle mx-auto">
                    </div>
                    <blockquote>

                        <p>&ldquo;I can safely recommend it. I wanted to mention the excellent staff.&rdquo;</p>
                    </blockquote>
                    <p><em>&mdash; Jean Smith</em></p>
                </div>

                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="images/person_2.jpg" alt="Image placeholder" class="rounded-circle mx-auto">
                    </div>
                    <blockquote>
                        <p>&ldquo;Really grate place!&rdquo;</p>
                    </blockquote>
                    <p><em>&mdash; Dian Doe</em></p>
                </div>

                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="images/person_10.png" alt="Image placeholder" class="rounded-circle mx-auto">
                    </div>
                    <blockquote>

                        <p>&ldquo;I was relaxing with my family - everything is super.&rdquo;</p>
                    </blockquote>
                    <p><em>&mdash; Jonin Warshawskii</em></p>
                </div>


                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="images/person_11.jpeg" alt="Image placeholder" class="rounded-circle mx-auto">
                    </div>
                    <blockquote>

                        <p>&ldquo;Great hotel for business.&rdquo;</p>
                    </blockquote>
                    <p><em>&mdash; Rosa Len</em></p>
                </div>

                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="images/person_12.jpg" alt="Image placeholder" class="rounded-circle mx-auto">
                    </div>
                    <blockquote>
                        <p>&ldquo;Super, super, super. Highly recommend.&rdquo;</p>
                    </blockquote>
                    <p><em>&mdash; Denis Mark</em></p>
                </div>

                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="images/person_14.jpg" alt="Image placeholder" class="rounded-circle mx-auto">
                    </div>
                    <blockquote>

                        <p>&ldquo;I did not want to bother. Feel at home. Very nice and comfortable.&rdquo;</p>
                    </blockquote>
                    <p><em>&mdash; Barbar Straiz</em></p>
                </div>

            </div>
            <!-- END slider -->
        </div>

    </div>
</section>
<!-- END .block35 -->

<!--contact last-->
<section class="section contact-section" id="section-contact">
    <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
                <h2 class="heading" data-aos="fade-up">Contact Us</h2>
                <p data-aos="fade-up">If you have any questions for which you did not find the answer, call write to us.
                    Our support service is open 24/7.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-7" data-aos="fade-up" data-aos-delay="100">

                <form method="post" class="bg-white p-md-5 p-4 mb-5 border">
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label for="name">Name</label>
                            <input type="text" name="name" id="name" class="form-control ">
                        </div>
                        <div class="col-md-6 form-group">
                            <label for="phone">Phone</label>
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
                            <label for="message">Write Message</label>
                            <textarea name="message" id="message" class="form-control " cols="30"
                                      rows="8"></textarea>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <input type="submit" value="Send Message"
                                   class="btn btn-primary text-white font-weight-bold">
                            <div class="submitting"></div>
                        </div>
                    </div>


                </form>


            </div>
            <div class="col-md-5" data-aos="fade-up" data-aos-delay="200">
                <div class="row">
                    <div class="col-md-10 ml-auto contact-info">
                        <p><span class="d-block">Address:</span> <span class="text-black"> Khreschatyk St, 15/4 Kyiv, 01001</span>
                        </p>
                        <p><span class="d-block">Phone:</span> <span class="text-black"> +38(050)208-75-69</span></p>
                        <p><span class="d-block">Email:</span> <span
                                class="text-black"> booking_hotelShel@gmail.com</span></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- END .block-5 -->

<%@include file="../ui/partOfPage/endPage.jsp" %>

<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/jquery-migrate-3.0.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.stellar.min.js"></script>
<script src="js/jquery.fancybox.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/aos.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script src="js/jquery.timepicker.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>