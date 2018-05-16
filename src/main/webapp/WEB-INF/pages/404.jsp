<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>DeluxHotel - 404 Error - Responsive Bootstrap 4 Template For Hotels</title>
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
    <section class="breadcrumbs" style="background-image: url(../../resources/assets/images/breadcrumbs/faq.jpg)">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h1 class="h1">F.A.Q</h1>
          </div>
          <div class="col-md-6">
            <ol class="breadcrumb">
              <li><a href="#">Home</a><i class="fa fa-angle-right"></i></li>
              <li>F.A.Q</li>
            </ol>
          </div>
        </div>
      </div>
    </section>
    <!-- /breadcrumbs -->
    <!-- 404 -->
    <section class="not-found">
      <div class="container">
        <div class="not-found_t">4<span>0</span>4</div>
        <div class="not-found_slogan">Oops, Error!</div>
        <div class="not_found_txt"> <c:if test="${!empty error}">
          ${error}
        </c:if>
        </div>
      </div>
    </section>
    <!-- /404 -->
  <!-- footer -->
    <%@include file="_footer.jsp"%>
</div>
  <!-- /footer -->
  <!-- Scripts -->

  <!-- /Scripts -->
</body>
</html>