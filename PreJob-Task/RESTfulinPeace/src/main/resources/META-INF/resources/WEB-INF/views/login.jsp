<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Login Form</title>

    <link rel='stylesheet' href='http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css'>

    <link href="css/style.css" rel="stylesheet">

</head>

<body>

<div class="wrapper">

    <form id="loginForm" class="form-signin"  action="/login" method="post">
        <h2 class="form-signin-heading">Login Form</h2>
        <input type="text" class="form-control"  name="username" required="true" placeholder="User Name"/>
        <input type="password" class="form-control" required="true" name="password" placeholder="Password"/>

        <c:if test="${param.error ne null}">
            <div class="alert-danger">${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</div>
        </c:if>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button><br>
        Don't Have an Account? Register Now!<br><br>
        <a href="/register" class="btn btn-lg btn-danger btn-block">Register </a>
    </form>

</div>
<script>
    $("#loginForm").validate();
</script>
<script src="js/jquery.min.js"></script>

</body>
</html>
