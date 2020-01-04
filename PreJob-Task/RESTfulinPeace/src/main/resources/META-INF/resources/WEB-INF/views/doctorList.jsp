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
        p.border {border-left: 6px solid green; background-color: lightgrey; margin-top: auto}
    </style>
</head>

<body>

<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <h3><p class="border"><a href="/">Home</a> | <a href="./save&editDoctor">Add Doctor</a> | <a href="./save&editPatient">Add Patient</a> | <a href="./patientList">Patient List</a></h3>
        <h1 align="center">Doctor List</h1>
        <br>

        <table id="doctorTable" class="table">
            <thead>
            <tr>
                <th>Serial No</th>
                <th>Name</th>
                <th>Department</th>
                <th>Joining</th>
                <th>Update | Delete</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${doctorList}" var="dnr" varStatus="status">
                <tr>
                    <td>${status.index+1}</td>
                    <td>${dnr.name}</td>
                    <td>${dnr.department}</td>
                    <td>${dnr.joining}</td>
                    <td>
                        <a class="btn btn-warning btn-sm" href="./save&editDoctor?doctorId=${dnr.doctorid}">Update</a>
                        <a class="btn btn-danger btn-sm" href="./deleteDoctor?doctorId=${dnr.doctorid}">Delete</a>
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
    $(document).ready(function() {
        $('#doctorTable').DataTable();
    } );
</script>
</html>