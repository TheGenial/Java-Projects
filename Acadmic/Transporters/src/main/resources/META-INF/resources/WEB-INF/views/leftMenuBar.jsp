<%@ page import="com.mbstu.ehcare.Utils" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu tree" data-widget="tree">
            <li class="treeview ">
                <a href="#">
                    <i class="fa fa-laptop "></i>
                    <span>Administration</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu" style="display: block;">
                    <security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER')">
                        <li><a href="/"><i class="fa fa-fw fa-home text-aqua"></i>Home</a></li>
                        <security:authorize access="hasAnyRole('ROLE_ADMIN')">
                            <li><a href="/upsertUser"><i class="fa fa-fw fa-user-plus text-red"></i>Add User</a></li>
                        </security:authorize>
                        <li><a href="/userList"><i class="fa fa-fw fa-th-list text-orange"></i>User Information List</a></li>
                    </security:authorize>
                </ul>
            </li>
        </ul>

        <ul class="sidebar-menu tree" data-widget="tree">
            <li class="treeview ">
                <a href="#">
                    <i class="fa fa-user"></i>
                    <span>Driver</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu" style="display: block;">
                    <security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER')">
                        <li><a href="/upsertDriver"><i class="fa fa-fw  fa-user-plus text-red"></i>Create a Driver Profile</a></li>
                        <li><a href="/driverList"><i class="fa fa-fw fa-th-list text-yellow"></i>View Driver List </a></li>
                    </security:authorize>
                </ul>
            </li>
        </ul>
        <ul class="sidebar-menu tree" data-widget="tree">
            <li class="treeview ">
                <a href="#">
                    <i class="fa fa-fw fa-th-large "></i>
                    <span>Cars</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu" style="display: block;">
                    <security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER')">
                        <li><a href="/upsertCar"><i class="fa fa-fw fa-hand-scissors-o text-red"></i>Add New Car</a></li>
                        <li><a href="/carList"><i class="fa fa-fw fa-th-list text-aqua"></i>See Car List</a></li>
                    </security:authorize>
                </ul>
            </li>
        </ul>
        <ul class="sidebar-menu tree" data-widget="tree">
            <li class="treeview ">
                <a href="#">
                    <i class="fa fa-fw fa-th-large"></i>
                    <span>Complain/Message</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu" style="display: block;">
                    <security:authorize access="hasAnyRole('ROLE_ADMIN')">
                        <li><a href="/messageList"><i class="fa fa-circle-o text-red"></i>Messages</a></li>
                    </security:authorize>
                    <security:authorize access="hasAnyRole('ROLE_USER')">
                    <li><a href="/upsertMessage"><i class="fa fa-circle-o text-red"></i>Send Message to Admin</a></li>
                    </security:authorize>
                </ul>
            </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>