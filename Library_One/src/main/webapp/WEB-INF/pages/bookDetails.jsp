<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>

<html lang="en">
<!-- BEGIN HEAD-->
<head>

    <meta charset="UTF-8"/>
    <title>Library - book info</title>
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
<!-- END HEAD-->
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

                <a href="/welcome" class="navbar-brand">
                    <img src="<c:url value="/resources/img/soft.png"/>" height="40" width="140" alt=""/>
                </a>
            </header>
            <!-- END LOGO SECTION -->
            <ul class="nav navbar-top-links navbar-right">

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
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h4>
                    <p class="text-center">Book Information</p>
                </h4>

            </div>
            <div class="panel-body">
                <div class="col-md-4">
                    <%--<img src="<c:url value="/resources/img/selfie.jpg"/>" alt="OMG" height="320" width="280">--%>
                    <img class="editable img-responsive" name="image" height="320" width="280"
                         src="data:image/jpeg;base64,${book.encodedImage}">
                    <c:if test="${book.availibility == true}">
                        <span class="label label-success">Available</span>
                    </c:if>
                    <c:if test="${book.availibility == false}">
                        <span class="label label-danger">Not Available</span>
                    </c:if>
                </div>
                <div class="col-md-8">
                    <div class="well well-lg">
                        <h3>${book.bookId}# <strong>${book.title}</strong></h3>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 text-left">Author</div>
                            <div class="col-md-9">${book.authors}</div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 text-left">ISBN</div>
                            <div class="col-md-9">${book.isbn}</div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 text-left">Book Group</div>
                            <div class="col-md-9">${book.bookGroup}</div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 text-left">Book Shelf</div>
                            <div class="col-md-9">${book.bookShelf}</div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 text-left">Donor(if donated)</div>
                            <div class="col-md-9">${book.donor}</div>
                        </div>
                    </div>
                </div>
            </div>
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
