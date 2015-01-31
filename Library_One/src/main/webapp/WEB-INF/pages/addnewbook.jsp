<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>

<html lang="en">
<!-- BEGIN HEAD-->
<head>

    <meta charset="UTF-8"/>
    <title>Library - Add New Book</title>
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
    <link href="<c:url value="/resources/assets/css/jquery-ui.css"/>" rel="stylesheet"/>
    <link rel="stylesheet"
          href="<c:url value="/resources/assets/plugins/uniform/themes/default/css/uniform.default.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/plugins/inputlimiter/jquery.inputlimiter.1.0.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/bootstrap-fileupload.min.css" />">
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
               class="accordion-toggle btn btn-primary btn-sm visible-xs" data-toggle="collapse" href="#"
               id="menu-toggle">
                <i class="icon-align-justify"></i>
            </a>
            <!-- LOGO SECTION -->
            <header class="navbar-header">

                <a href="<c:url value="/admin/dashboard"/>" class="navbar-brand">
                    <i class = "icon-book icon-2x" style="color: rgb(29, 130, 148);"></i>
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
            <div class="panel-heading text-center"><h4>Add New Book</h4></div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="box">
                            <div id="collapseOne" class="accordion-body collapse in body">
                                <form action="<c:url value="/admin/saveNewBook"/>" method="post" class="form-horizontal"
                                      id="block-validate" name="newBook" enctype="multipart/form-data">
                                    <div class="form-group">
                                        <label class="control-label col-lg-4">Book ID</label>

                                        <div class="col-lg-4">
                                            <input type="text" id="digits" name="bookid" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-4">Book Title</label>

                                        <div class="col-lg-4">
                                            <input type="text" name="title" class="form-control" required/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-4">ISBN</label>

                                        <div class="col-lg-4">
                                            <input type="text" name="isbn" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-4">Authors</label>

                                        <div class="col-lg-4">
                                            <input type="text" name="authors" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-4">Book Group</label>

                                        <div class="col-lg-4">
                                            <input type="text" name="bookGroup" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-4">Book Shelf</label>

                                        <div class="col-lg-4">
                                            <input type="text" name="bookShelf" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-4">Donor(if any)</label>

                                        <div class="col-lg-4">
                                            <input type="text" name="donor" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-4">Description(or Comment)</label>

                                        <div class="col-lg-4">
                                            <textarea id="limiter" name="comment" class="form-control"
                                                      maxlength="80"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-4">Book Cover</label>

                                        <div class="col-lg-8">
                                            <div class="fileupload fileupload-new" data-provides="fileupload">
                                                <div class="input-group">
                                                        <span class="btn btn-file btn-info">
                                                            <span class="fileupload-new">Select file</span>
                                                            <span class="fileupload-exists">Change</span>
                                                            <input type="file" name="bookcover">
                                                        </span>
                                                    <a href="#" class="btn btn-danger fileupload-exists"
                                                       data-dismiss="fileupload">Remove</a>
                                                    <br> <br>

                                                    <div class="col-lg-3">
                                                        <i class="icon-file fileupload-exists"></i>
                                                        <span class="fileupload-preview"></span>
                                                    </div>
                                                </div>
                                            </div>
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
<script src="<c:url value="/resources/assets/js/jquery-ui.min.js"/>"></script>
<script src="<c:url value="/resources/assets/plugins/uniform/jquery.uniform.min.js"/>"></script>
<script src="<c:url value="/resources/assets/plugins/inputlimiter/jquery.inputlimiter.1.3.1.min.js"/>"></script>
<script src="<c:url value="/resources/assets/plugins/chosen/chosen.jquery.min.js"/>"></script>
<script src="<c:url value="/resources/assets/plugins/validVal/js/jquery.validVal.min.js"/>"></script>
<script src="<c:url value="/resources/assets/plugins/autosize/jquery.autosize.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/formsInit.js"/>"></script>
<script>
    $(function () {
        formInit();
    });
</script>
<script src="<c:url value="/resources/assets/plugins/jasny/js/bootstrap-fileupload.js"/>"></script>
<!-- END PAGE LEVEL SCRIPTS -->

</body>
<!-- END BODY-->

</html>
