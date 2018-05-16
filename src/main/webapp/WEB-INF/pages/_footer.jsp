<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 marg-sm-50 col-xs-12">
                    <div class="footer-top_contact_form">
                        <div class="contact_form_t">Contact Form</div>
                        <form:form method = "POST" commandName="message" action="/addmessage" class="row form-horizontal form-wizzard">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">

                                <form:input path="name"  pattern="[0-9A-Za-z]+" name="name" class="form-control" required = "true" placeholder="Name ..."/>

                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <form:input path="email" type="email"  name="email" class="form-control" required = "true" placeholder="Email ..."/>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <form:textarea path = "message" rows="6" pattern="[0-9A-Za-z]+" required = "true" name="message" class="form-control" placeholder="Message ..."/>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-right">
                                <input  type="submit" value="Send message" class="btn btn-default"/>
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

            </div>
        </div>
    </div>
</footer>