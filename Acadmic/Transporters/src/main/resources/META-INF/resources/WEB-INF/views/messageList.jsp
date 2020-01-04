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
                Message List
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
                                        <table id="messageTable" class="table table-striped">
                                            <thead>
                                            <tr>
                                                <th>Serial No</th>
                                                <th>Message To</th>
                                                <th>Subject</th>
                                                <th>Body</th>
                                                <th>Message By</th>
                                                <security:authorize access="hasAnyRole('ROLE_ADMIN')">
                                                    <th>Update/Delete</th>
                                                </security:authorize>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${messageList}" var="dnr" varStatus="status">
                                                <tr>
                                                    <td>${status.index+1}</td>
                                                    <td>${dnr.mto}</td>
                                                    <td>${dnr.subject}</td>
                                                    <td>${dnr.body}</td>
                                                    <td>${dnr.mby}</td>
                                                    <security:authorize access="hasAnyRole('ROLE_ADMIN')">
                                                        <td>
                                                            <a class="btn btn-warning btn-sm" href="./upsertMessage?messageId=${dnr.mid}">Update</a>
                                                            <a class="btn btn-danger btn-sm" href="./deleteMessage?messageId=${dnr.mid}">Delete</a>
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
    $(document).ready( function () {
        var table = $('#messageTable').DataTable({
            "columnDefs": [
                {"className": "dt-center", "targets": "_all"}
            ]
        });
    } );
</script>
</body>
</html>