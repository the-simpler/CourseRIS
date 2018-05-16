<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>DeluxHotel - Responsive Bootstrap 4 Template For Hotels</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">




    <style>
        <%@include file="/resources/assets/css/bootstrap.min.css"%>
    </style>

    <style>
        <%@include file="/resources/assets/css/navs.css"%>
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
    <%@include file="_header.jsp"%>
    <!-- /header -->
    <!-- parallax -->
    <section class="bg-parallax parallax-window">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="parallax-text">
                        <h2 class="parallax_t __white">Flat Agency</h2>
                        <h2 class="parallax_t __green">available from 01.05.2018</h2>
                        <p>Offices parties lasting outward nothing age few resolve. Impression to discretion understood to we interested he excellence. Him remarkably use projection collecting going about eat forty world.</p>
                    </div>
                </div>
                <!-- planner-->
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 planner">
                    <div class="planner-block">
                        <c:url var="search" value="/search-flats"/>
                        <form:form method = "POST" commandName="attributesForSearch" action="${search}" class="form-planner form-horizontal">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <label>Room type</label>
                                        <div class="theme-select">
                                            <form:select path = "atribute1" class="form-control __plannerSelect">
                                                <c:forEach items="${listCategories}" var="category">
                                                    <form:option value="${category.id}">${category.name}</form:option>
                                                </c:forEach>
                                            </form:select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <div class="form-group">
                                        <label>Number People</label>
                                        <div class="theme-select">
                                            <form:select path = "atribute2" class="form-control __plannerSelect">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                            </form:select>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <div class="form-group">
                                        <label>Enter your email</label>
                                        <form:input path="atribute4" type="email" class="form-control" placeholder="E-mail" required="true"/>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class = "col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <div class="form-group">
                                        <label>Minimal price</label>
                                        <form:input path="atribute5" type="number" class="form-control" placeholder="70" required="true" min = "0" max = "1000"/>
                                    </div>
                                </div>
                                <div class = "col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <div class="form-group">
                                        <label>Maximal price</label>
                                        <form:input path="atribute6" type="number" class="form-control" placeholder="300"  required="true" min = "0" max = "1000"/>
                                    </div>
                                </div>
                                <c:if test="${error !=null}">
                                    <div class = "col-lg-12 col-md-12 col-sm-12 col-xs-12 has-error">

                                        Minimal price should be < maximal price

                                    </div>
                                </c:if>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12">
                                    <div class="planner-check-availability">
                                        <input class = "btn btn-default" type="submit" value="Find Flats"/>
                                    </div>
                                </div>
                            </div>
                        </form:form>
                    </div>
                </div>
                <!-- /planner-->
            </div>
        </div>
    </section>
    <!-- /parallax -->
    <!-- chose best Flats -->
    <section class="best-room">
        <div class="container">
            <div class="title-main">
                <h2 class="h2">Best Offer For Weekend<span class="title-secondary">Look Our Featured Flats</span></h2>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12  ">
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12  ">
                <div class = "center-block">
                    <div class="best-room_img ">
                        <a href="#"><img src="resources/assets/images/gallery/${flat.image}.png" alt=""/></a>
                        <div class="best-room_overlay">
                            <div class="overlay_icn"><a href="/flatdata/${flat.flatId}"></a></div>
                        </div>
                    </div>
                    <div class="best-room-info">
                        <div class="best-room_t"><a href="/flatdata/${flat.flatId}">${flat.name}</a></div>
                        <div class="best-room_desc">${flat.info} </div>
                        <div class="best-room_price">
                            <span>$${flat.price}</span> / day
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- /choose best Flats -->
    <!-- lux banner parallax -->

    <!-- /enjoy our services -->
    <!-- testiomonials -->

    <!-- /testiomonials -->
    <!-- map -->

    <!-- /map -->
    <!-- /main wrapper -->
    <!-- footer -->
    <footer class="footer">
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                        <div class="footer-top_logo"><a href="<c:url value="/index"/>"><img src="../../resources/assets/images/about/logo.png" alt="Footer logo"/></a></div>
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
                                <c:forEach items="${listFlats}" var="flatEntity">
                                    <li>

                                        <div class="rooms_img">
                                            <a href="/flatdata/${flatEntity.flatId}"><img src="../../resources/assets/images/footer/${flatEntity.image}.jpg" alt=""/></a>
                                        </div>
                                        <div class="rooms_info">
                                            <div class="rooms_t"><a href="/flatdata/${flatEntity.flatId}"></a></div>
                                            <div class="rooms_props">${flatEntity.bed} Bed  /  Wi-Fi  /  ${flatEntity.user} - User<span>$${flatEntity.price}</span></div>
                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
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

                    </div>
                </div>
            </div>
        </div>
    </footer>
</div>
<!-- /footer -->
<!-- Scripts -->

<!-- /Scripts -->
</body>
