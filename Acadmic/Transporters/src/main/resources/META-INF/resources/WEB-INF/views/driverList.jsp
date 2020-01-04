<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/head.jsp" %>
</head>

<body class="hold-transition skin-purple sidebar-mini">
<div class="wrapper">

    <!-- This is Top menu bar  -->
    <%@ include file="/WEB-INF/views/topMenuBar.jsp" %>
    <!-- Left side column. contains the logo and sidebar -->
    <%@ include file="/WEB-INF/views/leftMenuBar.jsp" %>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Driver's List
            </h1>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                        </div>
                        <div class="box-body">
                            <div class="dataTables_wrapper form-inline dt-bootstrap">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table id="driverTable" class="table table-striped">
                                            <thead>
                                            <tr>
                                                <th>Serial No</th>
                                                <th>Name</th>
                                                <th>Address</th>
                                                <th>Contact No</th>
                                                <th>Blood Group</th>
                                                <th>Experiance</th>
                                                <th>Allocated Road</th>
                                                <th>Added BY</th>
                                                <security:authorize access="hasAnyRole('ROLE_ADMIN')">
                                                <th>Update/Delete</th>
                                                </security:authorize>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${driverList}" var="dnr" varStatus="status">
                                                <tr>
                                                    <td>${status.index+1}</td>
                                                    <td>${dnr.name}</td>
                                                    <td>${dnr.address}</td>
                                                    <td>${dnr.phone}</td>
                                                    <td>${dnr.bgroup}</td>
                                                    <td>${dnr.experiance}</td>
                                                    <td>${dnr.road}</td>
                                                    <td>${dnr.addname}</td>
                                                    <security:authorize access="hasAnyRole('ROLE_ADMIN')">
                                                    <td>
                                                        <a class="btn btn-warning btn-sm" href="./upsertDriver?driverId=${dnr.driverid}">Update</a>
                                                        <a class="btn btn-danger btn-sm" href="./deleteDriver?driverId=${dnr.driverid}">Delete</a>
                                                    </td></security:authorize>
                                                    </tr>
                                                </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->


        <!-- thisis footer -->
        <%@ include file="/WEB-INF/views/footer.jsp" %>

        <!-- Control Sidebar -->
        <%@ include file="/WEB-INF/views/settings.jsp" %>
        <!-- /.control-sidebar -->
        <!-- Add the sidebar's background. This div must be placed
             immediately after the control sidebar -->
        <div class="control-sidebar-bg"></div>

    </div>
    <!-- ./wrapper -->
    <script>
        // $("#donorTable").dataTable();
        $(document).ready( function () {
            var table = $('#driverTable').DataTable({
                "columnDefs": [
                    {"className": "dt-center", "targets": "_all"}
                ]
            });
        } );
    </script>
    </body>
    </html>