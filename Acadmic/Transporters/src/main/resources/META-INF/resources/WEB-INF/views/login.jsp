<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Transporter</title>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet"
          type="text/css">
    <!-- Custom styles for this template -->
    <link href="css/landing-page.min.css" rel="stylesheet">
</head>

<body>



<!-- Masthead -->
<header class="masthead text-white text-center">
    <%--<div class="overlay"></div>--%>
    <div class="login-box">
        <div class="login-logo">
            <h3><P style="color:whitesmoke">Transporter</P></h3>
            <h4>
                <a style="text-decoration: none; color:aqua">
                    <i class="fa fa-phone"></i>
                    +8801521238657
                </a>
            </h4>
        </div>
        <div class="login-box-body">
            <div class="col-md-8 col-lg-6 col-xl-5 mx-auto">
                <form:form id="loginForm" action="/login" method="post">
                <div class="form-group has-feedback">
                    <input id="username" type="text" class="form-control" name="username" required="true" placeholder="User Name"/>
                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                    <input id="password" type="password" class="form-control" required="true" name="password" placeholder="Password"/>
                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                </div>
                <div class="row">
                    <c:if test="${param.error ne null}">
                        <div class="alert-danger">${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</div>
                    </c:if>
                    <!-- /.col -->
                    <div class="col-md-12">
                        <button type="submit"  class="btn btn-success btn-block">Sign In</button>
                        <br>
                    </div>
                </div>
                Don't Have an Account? Sign Up Now!
                <div class="row">
                    <div class="col-md-12"></div>
                </div>
                <a href="/register" class="btn btn-danger btn-block">Sign up Here</a>
            </div>
            </form:form>
        </div>
    </div>

</header>


<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

<script>
    $("#loginForm").validate();

</script>
<!-- Footer -->


<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
