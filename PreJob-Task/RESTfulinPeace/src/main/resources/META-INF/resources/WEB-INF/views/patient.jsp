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
        <h3><p class="border"><a href="/">Home</a> | <a href="./save&editDoctor">Add Doctor</a> | <a href="./doctorList">Doctor List</a> | <a href="./patientList">Patient List</a></h3>
        <h1 align="center">Patient Form</h1>
        <br>
            <form:form id="patientForm" commandName="patient" method="post">
                <form:hidden path="patientid"/>
            <table class="table">
                <tbody>
                <tr>
                    <th>Name:</th>
                    <td><form:input path="name" cssClass="form-control" required="true"/></td>
                </tr>
                <tr>
                    <th>Mobile:</th>
                    <td><form:input path="mobile" class="form-control" required="true"/></td>
                </tr>
                <tr>
                    <th>Age:</th>
                    <td><form:input path="age" required="true" class="form-control"/></td>
                </tr>
                <tr>
                    <th>Gender:</th>
                    <td><form:select path="gender" cssClass="form-control">
                        <option value="Male">Male</option>
                        <option value="FeMale">FeMale</option>
                        <option value="Others">Others</option>
                        </form:select>
                </tr>
                <tr>
                    <th>Occupation:</th>
                    <td><form:input path="occupation" required="true" class="form-control"/></td>
                </tr>
                <tr>
                    <th>Symptom Summary:</th>
                    <td><form:input path="symptomsummary" required="true" class="form-control"/></td>
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
<script>$("#patientForm").validate();</script>
</html>










