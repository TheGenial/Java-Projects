<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html lang="en">

<head>
    <script src="<c:url value="/scripts/jquery.validate.js"/>"></script>
    <link type="text/css" rel="stylesheet" href="<c:url value="/styles/bootstrap.min.css"/>"/>
    <style>
        p.border {border-left: 6px solid green; background-color: lightgrey; margin-top: 0px}
    </style>
</head>

<body>
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <h3><p class="border"><a href="/">Home</a> | <a href="./doctorList">Doctor List</a> | <a href="./save&editPatient">Add Patient</a> | <a href="./patientList">Patient List</a></h3>
        <h1 align="center">Doctor Form</h1>
        <br>
        <form:form id="doctorForm" commandName="doctor" method="post">
            <form:hidden path="doctorid"/>
            <table class="table">
                <tbody>
                <tr>
                    <th>Name:</th>
                    <td><form:input path="name" cssClass="form-control" required="true"/></td>
                </tr>
                <tr>
                    <th>Department:</th>
                    <td><form:input path="department" class="form-control" required="true"/></td>
                </tr>
                <tr>
                    <th>Joining</th>
                    <td><form:input path="joining" required="true" class="form-control"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <button type="submit" onclick="alert('Submitted Successfully')" class="btn btn-info ">
                            Submit
                        </button>
                    </td>
                </tr>
                </tbody>
            </table>
        </form:form>
    </div>
    <div class="col-md-1"></div>
</div>

</body>

<script>$(document).ready(function () {
});</script>
<script>$("#doctorForm").validate();</script>
</html>










