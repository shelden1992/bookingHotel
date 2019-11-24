<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${locale}"/>
<fmt:setBundle basename="${bundle}"/>

<section class="section bg-image overlay" style="background-image: url('${pageContext.request.contextPath}/ui/images/hero_4.jpg');">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-12 col-md-6 text-center mb-4 mb-md-0 text-md-left" data-aos="fade-up">
                <h2 class="text-white font-weight-bold"><fmt:message key="endPage.banner.aBestPlace"/></h2>
            </div>
            <div class="col-12 col-md-6 text-center text-md-right" data-aos="fade-up" data-aos-delay="200">
                <!-- Extra large modal -->
                <a href="${pageContext.request.contextPath}/#booking-form"
                   class="btn btn-outline-white-primary py-3 text-white px-5" data-toggle="modal"
                   data-target="#booking-form"><fmt:message key="endPage.banner.reserveNow"/></a>
            </div>
        </div>
    </div>
</section>

<footer class="section footer-section">
    <div class="container">
        <div class="row mb-4">
            <div class="col-md-3 mb-5">
                <ul class="list-unstyled link">
                    <li><a href="${pageContext.request.contextPath}/#section-about"><fmt:message
                            key="endPage.banner.aboutUs"/></a></li>
                    <li><a href="${pageContext.request.contextPath}/selection-rooms"><fmt:message
                            key="navigation.banner.rooms"/> </a></li>
                    <li><a href="#"><fmt:message key="endPage.banner.terms"/></a></li>
                    <li><a href="${pageContext.request.contextPath}/privacy"><fmt:message
                            key="endPage.banner.policy"/></a></li>

                </ul>
            </div>

            <div class="col-md-3 mb-5 pr-md-5 contact-info">
                <p><span class="d-block"><span class="ion-ios-location h5 mr-3 text-primary"></span><fmt:message
                        key="endPage.banner.address"/></span>
                    <span>Khreschatyk St, 15/4 <br>Kyiv, 01001</span></p>
                <p><span class="d-block"><span class="ion-ios-telephone h5 mr-3 text-primary"></span><fmt:message
                        key="endPage.banner.phone"/></span>
                    <span> +38(050)208-75-69</span></p>
                <p><span class="d-block"><span class="ion-ios-email h5 mr-3 text-primary"></span>Email:</span> <span> booking_hotelShel@gmail.com</span>
                </p>
            </div>
            <div class="col-md-3 mb-5">
                <p><fmt:message
                        key="endPage.banner.signUpFor"/></p>
                <form action="#" class="footer-newsletter">
                    <div class="form-group">
                        <input type="email" class="form-control" placeholder="Email...">
                        <button type="<fmt:message
                        key="endPage.banner.submit"/>" class="btn"><span class="fa fa-paper-plane"></span></button>
                    </div>
                </form>
            </div>
        </div>
        <div class="row pt-5">
            <p class="col-md-8 text-left">
                <!-- copyright. -->
                Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                All rights reserved | by <a
                    target="_blank">Denys Shelupets</a>
                <!--  -->
            </p>

        </div>
    </div>
</footer>