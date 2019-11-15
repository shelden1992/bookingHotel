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

<nav class="navbar navbar-expand-lg navbar-dark pb_navbar pb_scrolled-light" id="templateux-navbar">
    <div class="container">
        <a class="navbar-brand" href="${pageContext.request.contextPath}"><span class="text-danger">Roo</span>ms</a>
        <div class="site-menu-toggle js-site-menu-toggle  ml-auto" data-aos="fade" data-toggle="collapse"
             data-target="#templateux-navbar-nav" aria-controls="templateux-navbar-nav" aria-expanded="false"
             aria-label="Toggle navigation">
            <span></span>
            <span></span>
            <span></span>
        </div>
        <!-- END menu-toggle -->

        <%--        navigation--%>
        <div class="collapse navbar-collapse" id="templateux-navbar-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href=${pageContext.request.contextPath}>Home</a></li>
                <li class="nav-item"><a class="nav-link" href=${pageContext.request.contextPath}/about>About</a></li>
                <li class="nav-item"><a class="nav-link"
                                        href="${pageContext.request.contextPath}/selection-rooms">Rooms</a>
                </li>
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/events">Events</a>
                </li>
                <li class="nav-item"><a class="nav-link" href="#${pageContext.request.contextPath}/team">Team</a></li>
                <li class="nav-item"><a class="nav-link" href="#${pageContext.request.contextPath}/contacts">Contact</a>
                </li>
                <li class="nav-item cta-btn ml-xl-2 ml-lg-2 ml-md-0 ml-sm-0 ml-0">
                    <a class="nav-link" href="#"
                       data-toggle="modal"
                       data-target="#booking-form">
                        <span class="pb_rounded-4 px-4 rounded">Booking Now</span></a>
                </li>
                <li class="nav-item cta-btn ml-xl-2 ml-lg-2 ml-md-0 ml-sm-0 ml-0">
                    <a class="nav-link" href="#"
                       data-toggle="modal"
                       data-target="#Register">
                        <span class="pb_rounded-4 px-4 rounded">Register</span></a>

                </li>

            </ul>
        </div>
        <%--        end navigation--%>
    </div>
</nav>
<section class="site-hero overlay" style="background-image: url( images/room1/room1_img1.jpg)"
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
                        <img src="images/img_1.jpg" alt="Free website template" class="img-fluid mb-3">
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
                        <img src="images/img_2.jpg" alt="Free website template" class="img-fluid mb-3">
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
                        <img src="images/img_3.jpg" alt="Free website template" class="img-fluid mb-3">
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

<%--               booking form--%>
<div class="modal fade " id="booking-form" tabindex="-1" role="dialog" aria-labelledby="bookingFromTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">

            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12" data-aos="fade-up" data-aos-delay="100">

                        <form action="${pageContext.request.contextPath}/booking" method="post" class="bg-white p-4">
                            <div class="row mb-4">
                                <div class="col-12"><h2>Booking</h2></div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <label class="text-black font-weight-bold" for="name">Name</label>
                                    <input type="text" id="name" class="form-control ">
                                </div>
                                <div class="col-md-6 form-group">
                                    <label class="text-black font-weight-bold" for="phone">Phone</label>
                                    <input type="text" id="phone" class="form-control ">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12 form-group">
                                    <label class="text-black font-weight-bold" for="email">Email</label>
                                    <input type="email" id="email" class="form-control ">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <label class="text-black font-weight-bold" for="checkin_date">Date Check In</label>
                                    <input type="text" id="checkin_date" class="form-control">
                                </div>
                                <div class="col-md-6 form-group">
                                    <label class="text-black font-weight-bold" for="checkout_date">Date Check
                                        Out</label>
                                    <input type="text" id="checkout_date" class="form-control">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6 form-group">
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
                                <div class="col-md-6 form-group">
                                    <label for="children" class="font-weight-bold text-black">Children</label>
                                    <div class="field-icon-wrap">
                                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                        <select name="" id="children" class="form-control">
                                            <option value="">1</option>
                                            <option value="">2</option>
                                            <option value="">3</option>
                                            <option value="">4+</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-4">
                                <div class="col-md-12 form-group">
                                    <label class="text-black font-weight-bold" for="message">Notes</label>
                                    <textarea name="message" id="message" class="form-control " cols="30"
                                              rows="8"></textarea>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <input type="submit" value="Booking Now"
                                           class="btn btn-primary text-white py-3 px-5 font-weight-bold">
                                </div>
                            </div>
                        </form>

                    </div>

                </div>
            </div>

        </div>
    </div>
</div>
<%--end booking title--%>
<%--Log In form--%>
<div class="modal fade " id="Register" tabindex="-1" role="dialog" aria-labelledby="RegisterFormTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">

            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12" data-aos="fade-up" data-aos-delay="100">

                        <form action="${pageContext.request.contextPath}/register" method="post"
                              class="bg-white p-4">
                            <div class="row mb-4">
                                <div class="col-12"><h2>Register</h2></div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <label class="text-black font-weight-bold" for="name">Name</label>
                                    <input type="text" id="name" class="form-control ">
                                </div>

                                <div class="col-md-6 form-group">
                                    <label class="text-black font-weight-bold" for="name">Surname</label>
                                    <input type="text" id="surname" class="form-control ">
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-12 form-group">
                                    <label class="text-black font-weight-bold" for="phone">Phone</label>
                                    <input type="text" id="phone" class="form-control ">
                                </div>

                                <div class="col-md-12 form-group">
                                    <label class="text-black font-weight-bold" for="email">Email</label>
                                    <input type="email" id="email" class="form-control ">
                                </div>
                            </div>

                            <div class="row">
                                <div class="d-flex justify-content-between align-content-end w-100 col-auto">
                                    <input type="submit" value="Register" style="right: auto; align-self: flex-end;"
                                           class="btn btn-primary">

                                    <div class="text-right">
                                        <p>Already have an account?</p> <a href="
                                ${pageContext.request.contextPath}/login" class="btn btn-primary">Sign in</a>
                                    </div>
                                </div>
                            </div>
                        </form>


                        <%--end logForm--%>


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

