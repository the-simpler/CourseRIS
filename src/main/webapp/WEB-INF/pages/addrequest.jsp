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
                    <h1 class="h1">Add Request</h1>
                </div>
                <div class="col-md-6">

                </div>
            </div>
        </div>
    </section>
    <!-- /breadcrumbs -->
    <!-- chose best Flats -->
    <div class="wizzard">
        <div class="container-fluid reservation_last_step_container">
            <div class="container">
                <div class="row reservation-top">
                    <div class="module __reservation">
                        <div class="module-block">
                            <form class="form-planner form-horizontal">
                                <div class="row">
                                    <div class="col-md-3 col-xs-12">

                                    </div>
                                    <div class="col-md-3 col-xs-12">

                                    </div>
                                    <div class="col-md-2 col-xs-6">

                                    </div>
                                    <div class="col-md-2 col-xs-6">

                                    </div>
                                    <div class="col-md-2 col-xs-12">

                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <form:form commandName="request"  action="/addrequest" method="post" class="form-wizzard form-horizontal">

                        <form:input path = "flatId" hidden="true" value="${flatEntity.flatId}"/>
                        <form:input path = "userId" hidden="true" value="${userId}"/>
                        <h3 class="h3">Personal information</h3>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>First name (only latin characters)</label>
                                    <form:input path = "firstName" class="form-control" type="text" placeholder="Enter your name ..." pattern="[A-Za-z]+" required = "true"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Last name (only latin characters)</label>
                                    <form:input path = "lastName" class="form-control" type="text" placeholder="Enter your surname ..." pattern="[A-Za-z]+" required = "true"/>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Email</label>
                                    <form:input path = "email" class="form-control" type="email" placeholder="Enter your email ..." required = "true"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Phone number (only numbers like 375333905004)</label>
                                    <form:input path = "phoneNumber" class="form-control" type="text" placeholder="Enter your number ..." pattern="[0-9]+" required = "true"/>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Additional note (only latin characters and numbers)</label>
                                    <form:textarea path = "description" class="form-control" rows="5" placeholder="Type here" pattern="[0-9a-zA-Z.,- ]+" required = "true"/>
                                </div>
                            </div>
                        </div>
                        <div class="wizzard-confirm">
                            <input type="submit" value = "Accept" class="btn btn-default"/>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
    <!-- /choose best Flats -->
    <!-- footer -->
    <%@include file="_footer.jsp"%>
</div>

</body>
</html>