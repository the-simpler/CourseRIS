<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>DeluxHotel - About Us - Responsive Bootstrap 4 Template For Hotels</title>
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
    <section class="breadcrumbs" style="background-image: url(../../resources/assets/images/breadcrumbs/about.jpg)">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h1 class="h1">About Us</h1>
          </div>
          <div class="col-md-6">
            <ol class="breadcrumb">
              <li><a href="#">Home</a><i class="fa fa-angle-right"></i></li>
              <li>About Us</li>
            </ol>
          </div>
        </div>
      </div>
    </section>
    <!-- /breadcrumbs -->
    <!-- about -->
    <section class="about">
      <div class="container">
        <h2 class="h2">About Our DeluxHotel</h2>
        <div class="row">
          <div class="col-md-6">
            <div class="about_img"><img class="img-responsive" src=../../resources/assets/images/about/1.jpg" alt=""/></div>
          </div>
          <div class="col-md-6">
            <div class="about_info">
              <div class="about_t">From 1990 to now...</div>
              <p>May musical arrival beloved luckily adapted him. Shyness mention married son she his started now. Rose if as past near were. To graceful he elegance oh moderate attended entrance pleasure. Vulgar saw fat sudden edward way played either. Thoughts smallest at or peculiar relation breeding produced an. <br><br>At depart spirit on stairs. She the either are wisdom praise things she before. Be mother itself vanity favour do me of. Begin was power joy after had walls miles. Wise busy past both park when an ye no. Nay likely her length sooner thrown lively income.</p>
              <a class="btn btn-default" href="<c:url value="/contacts"/>">Contact us</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- /about -->
    <!-- Our mission -->
    <section class="mission">
      <div class="container">
        <h2 class="h2">Our Mission</h2>
        <div class="row">
          <div class="col-md-6">
            <ul class="mission_ul">
              <li>Aenean lacinia bibendum nulla sed consectetur. Fusce dapibus, tellus </li>
              <li>If you have any questiong about our products or something else</li>
              <li>iStock customers get 15% off 6 or more credits, use the code</li>
              <li>Cras mattis consectetur purus sit amet fermentum. Etiam porta sem</li>
            </ul>
          </div>
          <div class="col-md-6">
            <ul class="mission_ul">
              <li>You can c reate various skin to use on color/parallax section easily.</li>
              <li>This will help you to be able to create various color tone within your site.</li>
              <li>Nullam id dolor id nibh ultricies vehicula ut id elit.</li>
              <li>ivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor</li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    <!-- /Our mission -->
    <!-- lux banner parallax -->
      <section class="banner bg-parallax2">
        <div class="overlay"></div>
      <div class="banner-parallax">
        <div class="container">
          <div class="text-center">
            <div class="banner-parallax_raiting">
              <a href="#"><span class="star __selected"></span></a>
              <a href="#"><span class="star __selected"></span></a>
              <a href="#"><span class="star __selected"></span></a>
              <a href="#"><span class="star"></span></a>
              <a href="#"><span class="star"></span></a>
            </div>
            <h2 class="banner-parallax_t">Double Luxury Room</h2>
            <div class="banner-parallax_price"><span>$560</span> / Night (Only This Week)</div>
            <a href="#" class="btn btn-default">Book this room</a>
          </div>
        </div>
      </div>
    </section>
    <!-- /lux banner parallax -->
    <!-- testiomonials -->
    <section class="testimonials">
      <div class="container">
        <div class="title-main"><h2 class="h2">Some Testimonails<span class="title-secondary">People Says About Us</span></h2></div>
        <div class="owl-carousel">
          <div class="item">
            <div class="testimonials-block_i">
              <div class="testimonials-block_t">Great <span>Service</span></div>
              <p>Old unsatiable our now but considered travelling impression. In excuse hardly summer in basket misery. By rent an part need. At wrong of of water those linen. Needed oppose seemed how all</p>
            </div>
            <div class="testimonials-block_user">
                <div class="user_img"><img src="../../resources/assets/images/testimonials/mike.jpg" alt=""/></div>
                <div class="user_n">Garry Carlson</div>
            </div>
          </div>
          <div class="item">
            <div class="testimonials-block_i">
              <div class="testimonials-block_t">Thank You Very Much <span>I Am Happy!</span></div>
              <p>Certainty listening no no behaviour existence assurance situation is. Because add why not esteems amiable him. Interested the unaffected mrs law friendship add principles.</p>
            </div>
            <div class="testimonials-block_user">
                <div class="user_img"><img src="../../resources/assets/images/testimonials/mila.png" alt=""/></div>
                <div class="user_n">Mila Markovna</div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- /testiomonials -->
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
  <!-- /footer -->
  <!-- Scripts -->

  <!-- /Scripts -->
</body>
</html>