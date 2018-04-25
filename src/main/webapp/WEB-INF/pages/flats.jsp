<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>DeluxHotel - Best Rooms - Responsive Bootstrap 4 Template For Hotels</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <style>
        <%@include file="/resources/assets/css/bootstrap.min.css"%>
    </style>

    <style>
        <%@include file="/resources/assets/css/navs.css"%>
    </style>
    <style>
        <%@include file="/resources/assets/css/font-awesome.min.css"%>
    </style>
    <style>
        <%@include file="/resources/assets/css/owl.carousel.min.css"%>
    </style>
    <style>
        <%@include file="/resources/assets/css/bootstrap-datetimepicker.min.css"%>
    </style>
    <style>
        <%@include file="/resources/assets/css/jquery-ui.min.css"%>
    </style>
    <style>
        <%@include file="/resources/assets/css/style.css"%>
    </style>

    <style>
        <%@include file="/resources/assets/css/responsive.css"%>
    </style>
    <script type = text/javascript>
        <%@include file="/resources/assets/js/jquery.min.js"%>
    </script>

    <script type = text/javascript>
        <%@include file="/resources/assets/js/tether.min.js"%>
    </script>
    <script type = text/javascript>
        <%@include file="/resources/assets/js/bootstrap.min.js"%>
    </script>
    <script type = text/javascript>
        <%@include file="/resources/assets/js/jquery-ui.min.js"%>
    </script>
    <script type = text/javascript>
        <%@include file="/resources/assets/js/moment.min.js"%>
    </script>
    <script type = text/javascript>
        <%@include file="/resources/assets/js/jquery.smartmenus.js"%>
    </script>
    <script type = text/javascript>
        <%@include file="/resources/assets/js/jquery.parallax.min.js"%>
    </script>
    <script type = text/javascript>
        <%@include file="/resources/assets/js/jquery.shuffle.min.js"%>
    </script>
    <script type = text/javascript>
        <%@include file="/resources/assets/js/owl.carousel.min.js"%>
    </script>
    <script type = text/javascript>
        <%@include file="/resources/assets/js/map.js"%>
    </script>
    <script type = text/javascript>
        <%@include file="/resources/assets/js/main.js"%>
    </script>

    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>
</head>
<body>
<!-- main wrapper -->
<div class="wrapper">
    <!-- header -->
    <header class="header">
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12">
                        <div class="header-location"><i class="fa fa-home"></i> <a href="#">Minsk, BSUIR</a></div>
                        <div class="header-email"><i class="fa fa-envelope-o"></i> <a href="mailto:zhenya.zhitkovsky@hotmail.com">zhenya.zhitkovsky@hotmail.com</a></div>
                        <div class="header-phone"><i class="fa fa-phone"></i> <a href="#">+375 33 390 50 04</a></div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">

                    </div>
                </div>
            </div>
        </div>
        <div class="header-bottom">
            <nav class="navbar navbar-universal navbar-custom">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="logo"><a href="index.jsp" class="navbar-brand page-scroll"><img src="../../resources/assets/images/logo/logo.png" alt="logo"/></a></div>
                        </div>
                        <div class="col-lg-9">
                            <div class="navbar-header">
                                <button type="button" data-toggle="collapse" data-target=".navbar-main-collapse" class="navbar-toggle"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                            </div>
                            <div class="collapse navbar-collapse navbar-main-collapse">
                                <ul class="nav navbar-nav navbar-right">
                                    <li><a href="index.jsp">Home</a></li>
                                    <li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Pages <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="about-us.html">About Us</a></li>
                                            <li><a href="<c:url value="/contacts"/>">Contacts</a></li>
                                            <li><a href="faq.html">F.A.Q</a></li>
                                            <li><a href="gallery.html">Gallery</a></li>
                                            <li><a href="404.html">404 Page Not Found</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="wizzard-step1.html">Reservation</a></li>
                                    <li class="active"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Rooms <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="<c:url value="/flats"/>">All Rooms</a></li>
                                        </ul>
                                    </li>

                                    <li><a href="#">Purchase</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <!-- /header -->
    <!-- breadcrumbs -->
    <section class="breadcrumbs" style="background-image: url(/resources/assets/images/breadcrumbs/best-room.jpg)">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="h1">Select Flat</h1>
                </div>

            </div>
        </div>
    </section>
    <!-- /breadcrumbs -->
    <!-- chose best rooms -->
    <section class="gallery best-room">
        <div class="container">
            <h2 class="h2">Best Flats For Your Comfort</h2>
            <ul class="portfolio-sorting">
                <li><a href="#" data-group="all" class="active">All</a></li>
                <c:forEach items="${listCategories}" var="categoryEntity">
                <li><a href="#" data-group="${categoryEntity.name}">${categoryEntity.name}</a></li>
                </c:forEach>
            </ul>
            <div class="container best-room-carousel">
                <div id="grid" class="row best-room_ul best-rooms-isotope-page">
                    <c:forEach items="${listFlats}" var="flatEntity">
                    <div data-groups="[&quot;${flatEntity.categoryByCategoryId.name}&quot;]" class="col-lg-4 col-md-4 col-sm-6 col-xs-12 best-room_li">
                        <div class="best-room_img">
                            <a href="#"><img src="resources/assets/images/gallery/${flatEntity.image}.png" alt=""/></a>
                            <div class="best-room_overlay">
                                <div class="overlay_icn"><a href="/flatdata/${flatEntity.flatId}"></a></div>
                            </div>
                        </div>
                        <div class="best-room-info">
                            <div class="best-room_t"><a href="/flatdata/${flatEntity.flatId}">${flatEntity.name}</a></div>
                            <div class="best-room_desc">${flatEntity.info}</div>
                            <div class="best-room_price">
                                <span>$${flatEntity.price}</span> / night
                            </div>
                            <div class="best-room_footer">
                                <div class="footer_el __bed"><i class="fa fa-bed"></i> ${flatEntity.bed}</div>
                                <div class="footer_el __ppl"><i class="fa fa-user"></i> ${flatEntity.user}</div>
                                <div class="footer_el __wifi">Free WiFi</div>
                                <div class="footer_el __area">${flatEntity.square} sqm</div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
                    </div>
            </ul>
                </div>


    </section>
    <!-- /choose best rooms -->
    <!-- footer -->
    <footer class="footer">
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                        <div class="footer-top_logo"><a href="index.jsp"><img src="../../resources/assets/images/logo/logo.png" alt="Footer logo"/></a></div>
                        <div class="footer-top_txt">
                            <p>Continual delighted as elsewhere am convinced unfeeling. Introduced stimulated attachment no by projection. To lady whom my mile sold four need introduced.</p>
                        </div>
                        <div class="footer-top_address">
                            <div><i class="fa fa-phone"></i> Phone: <span>+375 33 390 50 04</span></div>
                            <div><i class="fa fa-envelope-o"></i> E-mail: <span><a href="mailto:zhenya.zhitkovsky@hotmail.com">zhenya.zhitkovsky@hotmail.com</a></span></div>
                            <div><i class="fa fa-home"></i> Location: <span>Minsk, BSUIR</span></div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                        <div class="footer-top_rooms">
                            <ul>
                                <li>
                                    <div class="rooms_img">
                                        <a href="blog-detail.html"><img src="../../resources/assets/images/footer/1.jpg" alt=""/></a>
                                    </div>
                                    <div class="rooms_info">
                                        <div class="rooms_t"><a href="blog-detail.html">Grang Super Luxury</a></div>
                                        <div class="rooms_props">3 Bed  /  Wi-Fi  /  2 - Bathroom<span>$119</span></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="rooms_img">
                                        <a href="blog-detail.html"><img src="../../resources/assets/images/footer/2.jpg" alt=""/></a>
                                    </div>
                                    <div class="rooms_info">
                                        <div class="rooms_t"><a href="blog-detail.html">President Room</a></div>
                                        <div class="rooms_props">4 Bed  /  Wi-Fi  /  3 - Bathroom<span>$329</span></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="rooms_img">
                                        <a href="blog-detail.html"><img src="../../resources/assets/images/footer/3.jpg" alt=""/></a>
                                    </div>
                                    <div class="rooms_info">
                                        <div class="rooms_t"><a href="blog-detail.html">Spa Double Room</a></div>
                                        <div class="rooms_props">2 Bed  /  Wi-Fi  /  2 - Bathroom<span>$749</span></div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 marg-sm-50 col-xs-12">
                        <div class="footer-top_contact_form">
                            <div class="contact_form_t">Contact Form</div>
                            <form action="mail.php" method="POST" class="row form-horizontal form-wizzard">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" name="name" class="form-control" placeholder="Name ..."/>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <input type="email" name="email" class="form-control" placeholder="Email ..."/>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <textarea rows="6" name="message" class="form-control" placeholder="Message ..."></textarea>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-right">
                                    <input type="submit" value="Send message" class="btn btn-default"/>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="footer-bottom_copy"></div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="footer-bottom_links">
                            <a class="active" href="index.jsp">Home</a>
                            <a href="gallery.html">Gallery</a>
                            <a href="blog.html">Blog</a>
                            <a href="wizzard-step1.html">Reservation</a>
                            <a href="#">Purchase</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</div>

</body>
</html>