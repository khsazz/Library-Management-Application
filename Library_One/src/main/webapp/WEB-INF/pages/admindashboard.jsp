<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>

<html lang="en">
<!-- BEGIN HEAD-->
<head>

    <meta charset="UTF-8"/>
    <title>Library - Admin Dashboard</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <![endif]-->
    <!-- GLOBAL STYLES -->
    <link rel="stylesheet" href="<c:url value="/resources/assets/plugins/bootstrap/css/bootstrap.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/assets/css/custom.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/main.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/theme.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/MoneAdmin.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/plugins/Font-Awesome/css/font-awesome.css"/>">
    <!--END GLOBAL STYLES -->

    <!-- PAGE LEVEL STYLES -->
    <!-- END PAGE LEVEL  STYLES -->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
</head>
<!-- END  HEAD-->
<!-- BEGIN BODY-->
<body class="padTop53 ">

<!-- MAIN WRAPPER -->
<div id="wrap">


    <!-- HEADER SECTION -->
    <div id="top">

        <nav class="navbar navbar-inverse navbar-fixed-top " style="padding-top: 10px;">
            <a data-original-title="Show/Hide Menu" data-placement="bottom" data-tooltip="tooltip"
               class="accordion-toggle btn btn-primary btn-sm visible-xs" data-toggle="collapse" href="#menu"
               id="menu-toggle">
                <i class="icon-align-justify"></i>
            </a>
            <!-- LOGO SECTION -->
            <header class="navbar-header">

                <a href="/admin/dashboard" class="navbar-brand">
                    <img src="<c:url value="/resources/img/soft.png"/>" height="40" width="140" alt=""/>
                </a>
            </header>
            <!-- END LOGO SECTION -->
            <ul class="nav navbar-top-links navbar-right">

                <a href="<c:url value="/j_spring_security_logout" />" >
                    <button class="btn btn-danger"><i class = "icon-off"></i> Logout</button>
                </a>
                <!-- MESSAGES SECTION -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <span class="label label-success">2</span>
                        <i class="icon-bell-alt"></i>&nbsp;
                        <i class="icon-chevron-down"></i>
                    </a>

                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                        <span class="pull-right text-muted">
                                            <em>Today</em>
                                        </span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>Raphel Jonson</strong>
                                        <span class="pull-right text-muted">
                                            <em>Yesterday</em>
                                        </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing.
                                    <br/>
                                    <span class="label label-success"> Moderate </span>
                                </div>
                            </a>
                        </li>
                    </ul>
                </li>
                <!--END MESSAGES SECTION -->

                <!--ADMIN SETTINGS SECTIONS -->

                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="icon-user "></i>&nbsp; <i class="icon-chevron-down "></i>
                    </a>

                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="icon-user"></i> User Profile </a>
                        </li>
                        <li><a href="#"><i class="icon-gear"></i> Settings </a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="#"><i class="icon-signout"></i> Logout </a>
                        </li>
                    </ul>
                </li>
                <!--END ADMIN SETTINGS -->
            </ul>
        </nav>
    </div>
    <!-- END HEADER SECTION -->


    <!--PAGE CONTENT -->
    <div class="col-lg-1"></div>
    <div class="col-lg-10">
        <div class="row" align="center">
            <hr>
            <a class="quick-btn" href="/admin/issueBook" style=" width: 200px;height: 250px; ">
                <span><h2><strong>Issue aaaaa Book</strong></h2></span>
            </a>
            <a class="quick-btn" href="/admin/searchDueBook" style=" width: 200px;height: 250px; ">
                <span><h2><strong>Receive Issued Book</strong></h2></span>
            </a>
            <a class="quick-btn" style=" width: 200px;height: 250px; "
               href="<c:url value="/admin/dueBooks">
               <c:param name="bookid" value="0"></c:param>
               <c:param name="optionsRadios" value="All"></c:param>
               </c:url>">
                <span><h2><strong>View Issued Books</strong></h2></span>
            </a>
        </div>
        <hr>
        <div class="row" align="center">
            <a class="quick-btn" href="/admin/addNewBook" style=" width: 220px;height: 180px; ">
                <span><h2><strong>Add Book</strong></h2></span>
            </a>
            <a class="quick-btn" href="/admin/addStudent" style=" width: 220px;height: 180px; ">
                <span><h2><strong>Add Student</strong></h2></span>
            </a>
            <a class="quick-btn" href="#" style=" width: 220px;height: 180px; ">
                <span><h2><strong>Modify Book</strong></h2></span>
            </a>
            <a class="quick-btn" href="#" style=" width: 220px;height: 180px; ">
                <span><h2><strong>Modify Student</strong></h2></span>
            </a>
        </div>
    </div>
    <div class="col-lg-1"></div>
    <!--END PAGE CONTENT -->
</div>
<!--END MAIN WRAPPER -->

<!-- FOOTER -->
<div id="footer">
    <p>&copy; Khsazz &nbsp;2015 &nbsp;</p>
</div>
<!--END FOOTER -->
<!-- GLOBAL SCRIPTS -->
<script src="<c:url value="/resources/assets/plugins/jquery-2.0.3.min.js"/>"></script>
<script src="<c:url value="/resources/assets/plugins/bootstrap/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/assets/plugins/modernizr-2.6.2-respond-1.1.0.min.js"/>"></script>
<!-- END GLOBAL SCRIPTS -->
<!-- PAGE LEVEL SCRIPTS -->

<!-- END PAGE LEVEL SCRIPTS -->

</body>
<!-- END BODY-->

</html>
