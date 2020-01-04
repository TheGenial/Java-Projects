<%@ page import="com.mbstu.ehcare.Utils" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html lang="en">

<head>
    <%@ include file="/WEB-INF/views/head.jsp" %>
    <script src="<c:url value="/scripts/jquery.validate.js"/>"></script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
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
                Car Information Form
            </h1>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-md-9">
                    <form:form id="carForm" commandName="car" method="post">
                        <form:hidden path="carid"/>
                        <div class="box box-success">
                            <div class="box-header with-border">
                                <h3 class="box-title"></h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <p>*Field must be fell up</p>
                                <!-- text input -->
                                <div class="form-group">
                                    <label>Name*</label>
                                    <form:input path="name" class="form-control" required="true" placeholder="Enter Name..."/>
                                </div>
                                <div class="form-group">
                                    <label>Model*</label>
                                    <form:input path="model" class="form-control" required="true" placeholder="Enter Model Name..."/>
                                </div>

                                <div class="form-group">
                                    <label>Serial Number*</label>
                                    <form:input path="snumber" required="true" class="form-control" placeholder="Enter Serial Number..."/>
                                </div>


                                <div class="form-group">
                                    <label>Service Year*</label>
                                    <form:input path="syear" required="true" class="form-control" placeholder="Enter Service Year..."/>
                                </div>

                                <div class="form-group">
                                    <label>Allocated Road</label>
                                    <form:input path="road" class="form-control" placeholder="Enter Allocated Road..."/>
                                </div>

                                <div class="form-group">
                                    <label>Owner Name</label>
                                    <form:input path="ownername" class="form-control"  value="<%=Utils.getLoggedUserName()%>" />
                                </div>

                            <!-- /.box-body -->
                            <div class="box-footer">
                                <button type="submit" onclick="alert('Submitted Successfully')" class="btn btn-info btn-block">Submit</button>
                            </div>
                        </div>
                    </form:form>
                </div>
                <div class="col-md-3"></div>
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
    $(document).ready(function(){

    });
</script>

<script>
    $("#carForm").validate();

</script>

</body>
</html>










