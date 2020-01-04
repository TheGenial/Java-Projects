<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Welcome Page</title>

    <link rel='stylesheet' href='http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css'>

    <link href="css/style.css" rel="stylesheet">

</head>

<body>

<div class="wrapper">

    <form class="form-signin">
        <p style="font-style:italic; font-size: x-large; color:#500a6f;" class="text-center">
            Welcome. Select and Operation from below options.
            <h3><p class="border"><a href="./save&editDoctor">Add Doctor</a> | <a href="./doctorList.">Doctor List</a> | <a href="./save&editPatient">Add Patient</a> | <a href="./patientList">Patient List |</a></h3>
        </p>
    </form>

</div>
</body>
</html>
