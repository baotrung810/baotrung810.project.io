<%-- 
    Document   : login
    Created on : Jun 5, 2019, 7:31:56 PM
    Author     : AnhLe
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">        	
        <link rel="icon" type="image/png" href="<c:url value="/resources-login/images/icons/favicon.ico"/>">        
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources-login/vendor/bootstrap/css/bootstrap.min.css"/>">       
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources-login/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>">        
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources-login/fonts/iconic/css/material-design-iconic-font.min.css"/>">        
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources-login/vendor/animate/animate.css"/>">        	
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources-login/vendor/css-hamburgers/hamburgers.min.css"/>">       
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources-login/vendor/animsition/css/animsition.min.css"/>">        
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources-login/vendor/select2/select2.min.css"/>">        	
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources-login/vendor/daterangepicker/daterangepicker.css"/>">        
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources-login/css/util.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources-login/css/main.css"/>">
    </head>
    <body>
        <div class="limiter">
            <div class="container-login100" style="background-image: url('images/bg-01.jpg');">
                <div class="wrap-login100">
                    <form class="login100-form validate-form" action="<c:url value="j_spring_security_check"/>" method="post">
                        <span class="login100-form-logo">
                            <i class="zmdi zmdi-landscape"></i>
                        </span>

                        <span class="login100-form-title p-b-34 p-t-27">
                            Log in
                        </span>
                        <c:if test="${message!=null && message!=''}">
                            <div class="row">
                                <div class="col-xs-12 col-sm-12">
                                    <div class="alert alert-danger">
                                        ${message}
                                    </div>
                                </div> 
                            </div>
                        </c:if>

                        <div class="wrap-input100 validate-input" data-validate = "Enter email">
                            <input class="input100" type="text" name="email" placeholder="Email">
                            <span class="focus-input100" data-placeholder="&#xf207;"></span>
                        </div>

                        <div class="wrap-input100 validate-input" data-validate="Enter password">
                            <input class="input100" type="password" name="password" placeholder="Password">
                            <span class="focus-input100" data-placeholder="&#xf191;"></span>
                        </div>

                        <div class="contact100-form-checkbox">
                            <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                            <label class="label-checkbox100" for="ckb1">
                                Remember me
                            </label>
                        </div>

                        <div class="container-login100-form-btn">
                            <button class="login100-form-btn">
                                Login
                            </button>
                        </div>

                        <div class="text-center p-t-90">
                            <a class="txt1" href="#">
                                Forgot Password?
                            </a>
                        </div>
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                </div>
            </div>
        </div>


        <div id="dropDownSelect1"></div>

        <script src="<c:url value="/resources-login/vendor/jquery/jquery-3.2.1.min.js"/>"></script>
        <script src="<c:url value="/resources-login/vendor/animsition/js/animsition.min.js"/>"></script>
        <script src="<c:url value="/resources-login/vendor/bootstrap/js/popper.js"/>"></script>
        <script src="<c:url value="/resources-login/vendor/bootstrap/js/bootstrap.min.js"/>"></script>
        <script src="<c:url value="/resources-login/vendor/select2/select2.min.js"/>"></script>">
        <script src="<c:url value="/resources-login/vendor/daterangepicker/moment.min.js"/>"></script>
        <script src="<c:url value="/resources-login/vendor/daterangepicker/daterangepicker.js"/>"></script>
        <script src="<c:url value="/resources-login/vendor/countdowntime/countdowntime.js"/>"></script>
        <script src="<c:url value="/resources-login/js/main.js"/>"></script>

    </body>
</html>
