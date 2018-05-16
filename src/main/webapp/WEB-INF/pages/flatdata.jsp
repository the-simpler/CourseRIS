<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>DeluxHotel - Best Flats - Responsive Bootstrap 4 Template For Hotels</title>
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
    <%@include file="_header.jsp"%>
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
                        <li>Flats</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <!-- /breadcrumbs -->
    <!-- chose best Flats -->
    <section class="room-detail">
        <div class="container">
            <div class="row">

                <div class="col-lg-10 col-xs-12 marg50"><h2 class="h2">${flat.name}</h2></div>
                <form:form commandName="flat"  action="/showrequest" method="post">
                    <form:input path = "flatId" hidden="true" value="${flat.flatId}"/>
                    <div class="col-lg-2 col-xs-12"><div class="form-group">
                        <input type="submit" value="Add Request" class="btn btn-default wizzard-search-btn"/></div>
                    </div>
                </form:form>
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

                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /choose best rooms -->
    <!-- footer -->
    <%@include file="_footer.jsp"%>
</div>

</body>
</html>