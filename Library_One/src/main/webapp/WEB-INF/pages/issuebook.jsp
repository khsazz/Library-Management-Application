<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>

<html lang="en">
<!-- BEGIN HEAD-->
<head>

    <meta charset="UTF-8"/>
    <title>Library - issue book</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>

    <!-- GLOBAL STYLES -->
    <link rel="stylesheet" href="<c:url value="/resources/assets/plugins/bootstrap/css/bootstrap.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/assets/css/custom.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/main.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/theme.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/MoneAdmin.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/plugins/Font-Awesome/css/font-awesome.css"/>">
    <!--END GLOBAL STYLES -->

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
            <div class="panel-heading text-center">
                <h4>Issue Book</h4>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="box">
                            <div id="collapseOne" class="accordion-body collapse in body">
                                <form action="/admin/saveIssue" method="post" name="issueForm"
                                      class="form-horizontal" id="block-validate">
                                    <div class="form-group">
                                        <label class="control-label col-lg-4">Book ID</label>

                                        <div class="col-lg-4">
                                            <input type="text" name="bookBookId" class="form-control" required/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-4">Student ID</label>

                                        <div class="col-lg-4">
                                            <input type="text" name="studentRegNo" class="form-control" required/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-4">Comment</label>

                                        <div class="col-lg-4">
                                            <input type="text" name="comment" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="form-actions no-margin-bottom" style="text-align:center;">
                                        <input type="submit" value="Click to Submit" class="btn btn-primary btn-lg "/>
                                        <button type="reset" class="btn btn-warning btn-lg">Reset</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-footer"></div>
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
<script src="<c:url value="/resources/assets/plugins/validationengine/js/jquery.validationEngine.js"/>"></script>
<script src="<c:url value="/resources/assets/plugins/validationengine/js/languages/jquery.validationEngine-en.js"/>"></script>
<script src="<c:url value="/resources/assets/plugins/jquery-validation-1.11.1/dist/jquery.validate.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/validationInit.js"/>"></script>
<script>
    $(function () {
        formValidation();
    });
</script>
<!-- END PAGE LEVEL SCRIPTS -->
</body>
<!-- END BODY-->
</html>
