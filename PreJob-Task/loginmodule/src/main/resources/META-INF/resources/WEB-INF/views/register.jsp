<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <title>Registration Form</title>

    <link rel='stylesheet' href='http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css'>

    <link href="css/style.css" rel="stylesheet">

</head>

<body>

    <div class="wrapper">
                <form id="registerForm" class="form-signin" action="/register" method="post">
                        <strong><label>Full Name:</label></strong>
                        <input type="text" name="name" class="form-control" required="true" minlength="3" placeholder="Enter Name">

                        <strong><label>User Name:</label></strong>
                        <input type="text" name="username" class="form-control" required="true" minlength="3" placeholder="Enter User Name">


                        <strong><label>E-Mail:</label></strong>
                        <input type="email" name="email" class="form-control" required="true" placeholder="Enter Email">


                        <strong><label>Password:</label></strong>
                        <input type="password" name="password" class="form-control" required="true" placeholder="Enter Password">

                        <button type="submit" onclick="alert('Registered Successfully')"class="btn btn-danger btn-block"><strong>Register</strong></button>

                    <a href="/login" class="btn btn-outline-warning btn-block">I already have a membership</a>

                </form>
    </div>
<script>
    $("#loginForm").validate();

</script>
<script src="js/jquery.min.js"></script>


</body>

</html>
