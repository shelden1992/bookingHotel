<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${locale}"/>
<fmt:setBundle basename="${bundle}"/>
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
        <!-- END menu-toggle -->

        <%--        navigation--%>
        <div class="collapse navbar-collapse" id="templateux-navbar-nav">
            <ul class="navbar-nav ml-5">
                <li class="nav-item"><a class="nav-link" href=${pageContext.request.contextPath}> <fmt:message
                        key="navigation.banner.home"/> </a></li>
                <li class="nav-item"><a class="nav-link"
                                        href="${pageContext.request.contextPath}/selection-rooms"><fmt:message
                        key="navigation.banner.rooms"/></a>
                </li>
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/event"><fmt:message
                        key="navigation.banner.events"/></a>
                </li>
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/team"><fmt:message
                        key="navigation.banner.team"/></a></li>
                <li class="nav-item"><a class="nav-link"
                                        href="${pageContext.request.contextPath}#section-contact"><fmt:message
                        key="navigation.banner.contact"/></a>
                </li>
                <li class="nav-item"><a class="nav-link"
                                        href="${pageContext.request.contextPath}/gallery"><fmt:message
                        key="navigation.banner.gallery"/></a>
                </li>
                <li class="nav-item cta-btn ml-xl-2 ml-lg-2 ml-md-0 ml-sm-0 ml-0">
                    <a class="nav-link" href="#"
                       data-toggle="modal"
                       data-target="#booking-form">
                        <span class="pb_rounded-4 px-4 rounded"><fmt:message
                                key="navigation.bookingForm.booking"/></span></a>
                </li>
                <li class="nav-item cta-btn ml-xl-2 ml-lg-2 ml-md-0 ml-sm-0 ml-0">
                    <a class="nav-link" href="#"
                       data-toggle="modal"
                       data-target="#Register">
                        <span class="pb_rounded-4 px-4 rounded"><fmt:message
                                key="navigation.banner.register"/></span></a>

                </li>


            </ul>
            <div class="col-lg-6 col-sm-6 col-8 header-top-right">
                <a href="${pageContext.request.contextPath}/language?locale=en" class="text-uppercase">en</a>
                <a href="${pageContext.request.contextPath}/language?locale=ru" class="text-uppercase">ru</a>
            </div>

        </div>
        <%--        end navigation--%>
    </div>
</nav>


<div class="modal fade " id="booking-form" tabindex="-1" role="dialog" aria-labelledby="bookingFromTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">

            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12" data-aos="fade-up" data-aos-delay="100">

                        <form action="${pageContext.request.contextPath}/booking" method="post" class="bg-white p-4">
                            <div class="row mb-4">
                                <div class="col-12"><h2><fmt:message
                                        key="navigation.bookingForm.booking"/></h2></div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <label class="text-black font-weight-bold" for="name"><fmt:message
                                            key="navigation.bookingForm.name"/></label>
                                    <input type="text" id="nameForBooking" class="form-control ">
                                </div>
                                <div class="col-md-6 form-group">
                                    <label class="text-black font-weight-bold" for="phone"><fmt:message
                                            key="navigation.bookingForm.phone"/></label>
                                    <input type="text" id="phoneForBooking" class="form-control ">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12 form-group">
                                    <label class="text-black font-weight-bold" for="email">Email</label>
                                    <input type="email" id="emailForBooking" class="form-control ">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <label class="text-black font-weight-bold" for="checkin_date"><fmt:message
                                            key="navigation.bookingForm.dataCheckIn"/></label>
                                    <input type="text" id="checkin_date" class="form-control">
                                </div>
                                <div class="col-md-6 form-group">
                                    <label class="text-black font-weight-bold" for="checkout_date"><fmt:message
                                            key="navigation.bookingForm.dataCheckOut"/></label>
                                    <input type="text" id="checkout_date" class="form-control">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <label for="adults" class="font-weight-bold text-black"><fmt:message
                                            key="navigation.bookingForm.adults"/></label>
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
                            <div class="row mb-4">
                                <div class="col-md-12 form-group">
                                    <label class="text-black font-weight-bold" for="message"><fmt:message
                                            key="navigation.bookingForm.notes"/></label>
                                    <textarea name="message" id="message" class="form-control " cols="30"
                                              rows="8"></textarea>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <input type="submit" value="<fmt:message
                                            key="navigation.bookingForm.bookingNow"/>"
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
                                <div class="col-12"><h2><fmt:message key="navigation.registerForm.register"/></h2></div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <label class="text-black font-weight-bold" for="name"><fmt:message
                                            key="navigation.registerForm.name"/></label>
                                    <input type="text" id="name" class="form-control ">
                                </div>

                                <div class="col-md-6 form-group">
                                    <label class="text-black font-weight-bold" for="name"><fmt:message
                                            key="navigation.registerForm.surname"/></label>
                                    <input type="text" id="surname" class="form-control ">
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-12 form-group">
                                    <label class="text-black font-weight-bold" for="phone"><fmt:message
                                            key="navigation.registerForm.phone"/></label>
                                    <input type="text" id="phone" class="form-control ">
                                </div>

                                <div class="col-md-12 form-group">
                                    <label class="text-black font-weight-bold" for="email">Email</label>
                                    <input type="email" id="email" class="form-control ">
                                </div>
                            </div>

                            <div class="row">
                                <div class="d-flex justify-content-between align-content-end w-100 col-auto">
                                    <input type="submit" value="<fmt:message
                                            key="navigation.banner.register"/>"
                                           style="right: auto; align-self: flex-end;"
                                           class="btn btn-primary">

                                    <div class="text-right">
                                        <p><fmt:message key="navigation.registerForm.alreadyHaveaccount"/></p> <a href="
                                ${pageContext.request.contextPath}/login" class="btn btn-primary"><fmt:message
                                            key="navigation.registerForm.signIn"/></a>
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