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
                    <h1 class="h1">Update Room</h1>
                </div>
                <div class="col-md-6">

                </div>
            </div>
        </div>
    </section>
    <!-- /breadcrumbs -->
    <!-- chose best Flats -->
    <section class="room-detail">
        <form:form method = "POST" commandName="flat" action="/flats/add" >
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="row reservation-top">
                        <div class="module __reservation">
                            <div class="module-block">
                                <form class="form-planner form-horizontal">


                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                     <div class="col-lg-12 marg50"><h2 class="h2">
                         <strong>Flat name (characters and numbers): </strong>
                         <form:input path="name" type="text " class="form-control" placeholder="Name ..."  pattern="[0-9a-zA-Z\s]+" required = "true" />
                     </h2></div>

                <div class="col-lg-6 col-md-6 col-sm-6">
                    <c:if test = "${flat.flatId!= 0}">
                    <div class="owl-carousel owl_gallery">
                        <div class="item"><img class="img-responsive" src="../resources/assets/images/gallery/${flat.image}.png"></div>

                    </div>
                    </c:if>
                    <strong>Image name:</strong>
                    <form:input path="image" type="text" class="form-control" placeholder="Image ..."/>

                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="room-detail_overview">
                        <table class="simple">
                            <c:if test = "${flat.flatId!= 0}">
                            <tr>
                                <td><strong>Flat ID:</strong></td>
                                <td><form:label path="flatId" type="text" class="">${flat.flatId}</form:label>
                                    <form:input path="flatId" hidden = "true"/>
                                </td>
                            </tr>
                            </c:if>
                            <tr>
                                <td><strong>Price ($):</strong></td>
                                <td><form:input path="price" type="number" class="form-control" placeholder="Price ..." required ="true" min = "0"/>
                                </td>
                            </tr>
                            <tr>
                                <td><strong>Room size (sqm, only numbers and character "."):</strong></td>
                                <td>   <form:input path="square" type="text" class="form-control" placeholder="Square ..." pattern="[0-9.]+" required = "true"/> </td>
                            </tr>
                            <tr>
                                <td><strong>Beds (only numbers):</strong></td>
                                <td>    <form:input path="bed" type="number" class="form-control" placeholder="Beds ..." required = "true" min = "0" max = "10"/> </td>
                            </tr>
                            <tr>
                                <td><strong>Max people (only numbers):</strong></td>
                                <td>    <form:input path="user" type="number" class="form-control" placeholder="Users ..."  required = "true" min = "0" max = "10"/></td>
                            </tr>
                            <tr>
                                <td><strong>Address:</strong></td>
                                <td>    <form:input path="address" type="text" class="form-control" placeholder="Address ..." pattern="[0-9a-zA-Z,.-\s]+" required = "true" /></td>
                            </tr>
                            <tr>
                                <td><strong>Info:</strong></td>
                                <td> <form:textarea path = "info" rows="10" name="message" class="form-control" placeholder="Info ..." pattern="[0-9a-zA-Z.,- ]+" required="true"/>
                                </td>
                            </tr>
                            <tr>
                                <td><strong>Type:</strong></td>
                                <td>
                                    <form:select path = "categoryId" class="form-control __plannerSelect">
                                        <c:forEach items="${listCategories}" var="category">
                                            <form:option value="${category.id}">${category.name}</form:option>
                                        </c:forEach>
                                    </form:select>
                                </td>

                            </tr>
                        </table>
                        <input type="submit" value="UPDATE" class="form-control" style = "background-color: #9CCC65; color: white" />
                    </div>
                </div>
            </div>
        </div>
        </form:form>
    </section>
    <!-- /choose best Flats -->
    <!-- footer -->
    <%@include file="_footer.jsp"%>
</div>

</body>
</html>