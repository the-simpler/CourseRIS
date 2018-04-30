<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous">
    <script defer src="https://use.fontawesome.com/releases/v5.0.10/js/all.js" integrity="sha384-slN8GvtUJGnv6ca26v8EzVaR9DC58QEwsIk9q1QXdCU8Yu8ck/tL/5szYlBbqmS+" crossorigin="anonymous"></script>

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
                            <div class="logo"><a href="<c:url value="/index"/>" class="navbar-brand page-scroll"><img src="../../resources/assets/images/logo/logo.png" alt="logo"/></a></div>
                        </div>
                        <div class="col-lg-9">
                            <div class="navbar-header">
                                <button type="button" data-toggle="collapse" data-target=".navbar-main-collapse" class="navbar-toggle"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                            </div>
                            <div class="collapse navbar-collapse navbar-main-collapse">
                                <ul class="nav navbar-nav navbar-right">
                                    <li><a href="<c:url value="/index"/>">Home</a></li>
                                    <li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Pages <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="<c:url value="/about"/>">About Us</a></li>
                                            <li><a href="<c:url value="/contacts"/>">Contacts</a></li>
                                            <li><a href="<c:url value="/faq"/>">F.A.Q</a></li>
                                            <li><a href="<c:url value="/gallery"/>">Gallery</a></li>
                                            <li><a href="<c:url value="/404"/>">404 Page Not Found</a></li>
                                        </ul>
                                    </li>

                                    <li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Rooms <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="<c:url value="/flats"/>">All Rooms</a></li>
                                        </ul>
                                    </li>

                                    <c:if test="${role == '1'}">
                                        <li><a href="<c:url value="/managerpanel"/>">Manager</a></li>
                                        <li><a href="<c:url value="/showallusers"/>">Users</a></li>
                                    </c:if>
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
                <div class="col-md-6">
                    <h1 class="h1">Select Room</h1>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li><a href="#">Home</a><i class="fa fa-angle-right"></i></li>
                        <li>Rooms</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <!-- /breadcrumbs -->
    <!-- chose best rooms -->
    <section class="room-detail">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="row reservation-top">
                        <div class="module __reservation">
                            <div class="module-block">
                                <form class="form-planner form-horizontal">
                                    <div class="col-md-3 col-xs-12">
                                        <div class="form-group">
                                            <label>Check in</label>
                                            <input class="form-control __plannerInput" id="datetimepicker1" type="text" placeholder="10-05-2015"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-xs-12">
                                        <div class="form-group">
                                            <label>Check out</label>
                                            <input class="form-control __plannerInput" id="datetimepicker2" type="text" placeholder="17-05-2015"/>
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-xs-6">
                                        <div class="form-group">
                                            <label>Adults</label>
                                            <div class="theme-select">
                                                <select class="form-control __plannerSelect">
                                                    <option value="">1</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-xs-6">
                                        <div class="form-group">
                                            <label>Kids</label>
                                            <div class="theme-select">
                                                <select class="form-control __plannerSelect">
                                                    <option value="">1</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-xs-12">
                                        <div class="form-group">
                                            <a href="wizzard-step2.html" class="btn btn-default wizzard-search-btn">Search</a>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 marg50"><h2 class="h2">${flat.name}</h2></div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="owl-carousel owl_gallery">
                        <div class="item"><img class="img-responsive" src="../resources/assets/images/gallery/${flat.image}.png"></div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="room-detail_overview">
                        <table class="simple">
                            <tr>
                                <td><strong>Price:</strong></td>
                                <td><span>$ ${flat.price}</span> / a night</td>
                            </tr>
                            <tr>
                                <td><strong>Room size:</strong></td>
                                <td>${flat.square} sqm</td>
                            </tr>
                            <tr>
                                <td><strong>Bed:</strong></td>
                                <td>${flat.bed} Beds</td>
                            </tr>
                            <tr>
                                <td><strong>Max people:</strong></td>
                                <td>${flat.user} people</td>
                            </tr>
                            <tr>
                                <td><strong>Wi-Fi:</strong></td>
                                <td>Avaible</td>
                            </tr>
                            <tr>
                                <td><strong>Room Service:</strong></td>
                                <td>Avaible</td>
                            </tr>
                            <tr>
                                <td><strong>Breakfast:</strong></td>
                                <td>Included</td>
                            </tr>
                            <tr>
                                <td><strong>Laundry:</strong></td>
                                <td>Avaible</td>
                            </tr>
                            <tr>
                                <td><strong>Taxi to Airport:</strong></td>
                                <td>Yes</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /choose best rooms -->
    <!-- footer -->
    <footer class="footer">
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                        <div class="footer-top_logo"><a href="<c:url value="/index"/>"><img src="../../resources/assets/images/logo/logo.png" alt="Footer logo"/></a></div>
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

                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 marg-sm-50 col-xs-12">
                        <div class="footer-top_contact_form">
                            <div class="contact_form_t">Contact Form</div>
                            <form:form method = "POST" commandName="message" action="/addmessage" class="row form-horizontal form-wizzard">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">

                                    <form:input path="name" type="text" name="name" class="form-control" placeholder="Name ..."/>

                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <form:input path="email" type="email"  name="email" class="form-control" placeholder="Email ..."/>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <form:textarea path = "message" rows="6" name="message" class="form-control" placeholder="Message ..."/>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-right">
                                    <input type="submit" value="Send message" class="btn btn-default"/>
                                </div>
                            </form:form>
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
                            <a class="active" href="index">Home</a>
                            <a href="<c:url value="/gallery"/>">Gallery</a>

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