<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>DeluxHotel - F.A.Q. - Responsive Bootstrap 4 Template For Hotels</title>
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
    <!-- FAQ -->
    <section class="faq">
      <div class="container">
        <h2 class="h2">Looking For Answers?</h2>
        <div class="row">
          <div class="col-md-12">
            <div class="panel-group faq-group" id="accordion_1" role="tablist" aria-multiselectable="true">
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingOne">
                  <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion_1" href="#accordion_1_collapseOne" aria-expanded="true" aria-controls="accordion_1_collapseOne">
                      Food Delivery. Order online food delivery at RoomService
                    </a>
                  </h4>
                </div>
                <div id="accordion_1_collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                  <div class="panel-body">
                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo
                    inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,
                    sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet,.</p>
                    <p>Consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam qua quasi architecto beatae vitae
                    sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingTwo">
                  <h4 class="panel-title">
                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion_1" href="#accordion_1_collapseTwo" aria-expanded="false" aria-controls="accordion_1_collapseTwo">
                      Non equidem invideo, miror magis posuere velit aliquet.
                    </a>
                  </h4>
                </div>
                <div id="accordion_1_collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                  <div class="panel-body">
                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo
                      inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,
                      sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet,.</p>
                    <p>Consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam qua quasi architecto beatae vitae
                      sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingThree">
                  <h4 class="panel-title">
                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion_1" href="#accordion_1_collapseThree" aria-expanded="false" aria-controls="accordion_1_collapseThree">
                      Subscribe to our monthly newsletter to get the latest scoop
                    </a>
                  </h4>
                </div>
                <div id="accordion_1_collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                  <div class="panel-body">
                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo
                      inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,
                      sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet,.</p>
                    <p>Consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam qua quasi architecto beatae vitae
                      sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingFour">
                  <h4 class="panel-title">
                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion_1" href="#accordion_1_collapseFour" aria-expanded="false" aria-controls="accordion_1_collapseFour">
                      CSS Powered Buttons with Hover Tooltips
                    </a>
                  </h4>
                </div>
                <div id="accordion_1_collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                  <div class="panel-body">
                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo
                      inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,
                      sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet,.</p>
                    <p>Consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam qua quasi architecto beatae vitae
                      sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingFive">
                  <h4 class="panel-title">
                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion_1" href="#accordion_1_collapseFive" aria-expanded="false" aria-controls="accordion_1_collapseFive">
                      Smashicons: 100 Free Icons
                    </a>
                  </h4>
                </div>
                <div id="accordion_1_collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                  <div class="panel-body">
                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo
                      inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,
                      sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet,.</p>
                    <p>Consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam qua quasi architecto beatae vitae
                      sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- /FAQ -->
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