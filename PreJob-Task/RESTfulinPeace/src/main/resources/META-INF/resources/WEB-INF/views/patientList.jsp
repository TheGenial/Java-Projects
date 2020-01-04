<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html lang="en">
<head>
    <script type="text/javascript" src="<c:url value="/scripts/jquery-3.3.1.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/scripts/jquery.dataTables.min.js"/>"></script>

    <link type="text/css" rel="stylesheet" href="<c:url value="/styles/bootstrap.min.css"/>"/>
    <link type="text/css" rel="stylesheet" href="<c:url value="/styles/jquery.dataTables.min.css"/>"/>
    <style>
        p.border {
            border-left: 6px solid green;
            background-color: lightgrey;
            margin-top: auto
        }
    </style>
</head>

<body>

<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <h3><p class="border"><a href="/">Home</a> | <a href="./save&editDoctor">Add Doctor</a> | <a href="./doctorList">Doctor List</a> | <a href="./save&editPatient">Add Patient</a></h3>
        <h1 align="center">Patient List</h1>
        <br>

        <table id="patientTable" class="table">
            <thead>
            <tr>
                <th>Serial No</th>
                <th>Name</th>
                <th>Mobile</th>
                <th>Age</th>
                <th>Gender</th>
                <th>Occupation</th>
                <th>Symptom Summary</th>
                <th>Update | Delete</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${patientList}" var="dnr" varStatus="status">
                <tr>
                    <td>${status.index+1}</td>
                    <td>${dnr.name}</td>
                    <td>${dnr.mobile}</td>
                    <td>${dnr.age}</td>
                    <td>${dnr.gender}</td>
                    <td>${dnr.occupation}</td>
                    <td>${dnr.symptomsummary}</td>
                    <td>
                        <a class="btn btn-warning btn-sm" href="./save&editPatient?patientId=${dnr.patientid}">Update</a>
                        <a class="btn btn-danger btn-sm" href="./deletePatient?patientId=${dnr.patientid}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="col-md-1"></div>
</div>
</body>
<script>
    $(document).ready(function () {
        $('#patientTable').DataTable();
    });
</script>
</html>

