<%@ page import="com.mbstu.ehcare.Utils" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/head.jsp" %>
</head>
<body class="hold-transition skin-yellow sidebar-mini">
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
                My Dashboard
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
                            <p style="font-style:italic; font-size: x-large; color:#500a6f;" class="text-center">BADHAN is a voluntary blood donors' organization.The Journey of Badhan was started from Dhaka University in 1997 to make
                                voluntary fresh blood donation as a Social Movement. Goal and Objective of this organization is initiating social
                                movement to build up a healthy society through motivating voluntary blood donation, donating blood voluntarily and
                                others services and awareness programs. Mamlana Bhashani Science and Technology University is the 20th individula unit BADHON
                                which will help to spread voluntary blood donation in Tangail and its serounding area.

                                With this app people can request for blood, find donar, search donar by individual parameter and can help to spreading the
                                motivating people for voluntary blood donation and taking part in service and awareness program.</p>
                        </div>
                    </div>
                </div>
            </div>

        </section>
        <!-- /.content -->

    </div>
</div>


</body>
</html>