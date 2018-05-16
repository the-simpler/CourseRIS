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


                <div class="col-md-12">
                    <h1 class="h1">Select Flat</h1>
                </div>

            </div>
        </div>
    </section>
    <!-- /breadcrumbs -->
    <!-- chose best Flats -->
    <section class="gallery best-room">
        <div class="container">
            <div class="col-md-12 text-center">
                <a href="editflat/0" class="btn btn-default">ADD NEW FLAT</a>
                <p></p>
            </div>
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
                                    <div class="overlay_icn"><a href="/editflat/${flatEntity.flatId}"></a></div>
                                </div>
                            </div>
                            <div class="best-room-info">
                                <div class="best-room_t"><a href="editflat/${flatEntity.flatId}">${flatEntity.name}</a></div>
                                <div class="best-room_desc">${flatEntity.info}</div>
                                <div class="best-room_price">
                                    <span>$${flatEntity.price}</span> / night
                                </div>
                                <div class="best-room_footer">
                                    <div class="footer_el __bed"><i class="fa fa-bed"></i> ${flatEntity.bed}</div>
                                    <div class="footer_el __ppl"><i class="fa fa-user"></i> ${flatEntity.user}</div>
                                    <div class="footer_el __area">${flatEntity.square} sqm</div>
                                    <div class="footer_el __area"><a href = "<c:url value='/remove/${flatEntity.flatId}'/>">DEL</a></div>
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
    <!-- /choose best Flats -->
    <!-- footer -->
    <%@include file="_footer.jsp"%>
</div>

</body>
</html>