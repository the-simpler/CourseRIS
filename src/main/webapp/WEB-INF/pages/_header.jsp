<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="header">
    <div class="header-top">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
                    <div class="header-location"><i class="fa fa-home"></i> <a href="#">Minsk, BSUIR</a></div>
                    <div class="header-email">
                        <i class="fa fa-envelope-o"></i>
                        <a href="mailto:zhenya.zhitkovsky@hotmail.com">zhenya.zhitkovsky@hotmail.com</a>
                    </div>
                    <div class="header-phone">
                        <i class="fa fa-phone"></i>
                        <a href="#">+375 33 390 50 04</a>
                    </div>
                </div>
                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-12">
                    <c:if test="${role == '0'}">
                    <div class="header-phone"> <a href="/account">Account</a></div>
                    </c:if>
                </div>
                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-12">
                    <div class="header-phone"><a href="/login">Logout</a></div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-bottom">
        <nav class="navbar navbar-universal navbar-custom">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="logo"><a href="<c:url value="/index"/>" class="navbar-brand page-scroll"><img src="../../resources/assets/images/about/logo.png" alt="logo"/></a></div>
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


                                    </ul>
                                </li>

                                <li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Flats <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="<c:url value="/flats"/>">All Flats</a></li>
                                    </ul>
                                </li>

                                <c:if test="${role == '1'}">
                                    <li><a href="<c:url value="/managerpanel"/>">Manager</a></li>
                                    <li><a href="<c:url value="/showallusers"/>">Users</a></li>
                                    <li><a href="<c:url value="/showallrequests"/>">Requests</a></li>
                                </c:if>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </div>
</header>
