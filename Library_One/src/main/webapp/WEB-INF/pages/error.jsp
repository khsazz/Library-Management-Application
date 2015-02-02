<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en"> <!--<![endif]-->

<!-- BEGIN HEAD -->
<head>
    <meta charset="UTF-8"/>
    <title>Library | Error</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <![endif]-->
    <!-- GLOBAL STYLES -->
    <link rel="shortcut icon" href="<c:url value="/resources/img/favicon.ico"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/plugins/bootstrap/css/bootstrap.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/plugins/Font-Awesome/css/font-awesome.css"/>">
    <!--END GLOBAL STYLES -->

    <!-- PAGE LEVEL STYLES -->
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/error.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/assets/plugins/magic/magic.css" />">
    <!--END PAGE LEVEL STYLES -->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <%--<!--[if lt IE 9]>--%>
    <%--<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>--%>
    <%--<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>--%>
    <%--<![endif]-->--%>
</head>
<!-- END HEAD -->

<!-- BEGIN BODY -->
<body>
<!--  PAGE CONTENT -->
<div class="container">
    <div class="col-lg-8 col-lg-offset-2 text-center">
        <div class="logo">
            <h3><strong>Oops!!!</strong></h3>
            <h5><strong>Message : ${errorMessage}</strong></h5>
        </div>

        <div class="clearfix"></div>
        <div class="col-lg-6 col-lg-offset-3">

        </div>
        <div class="clearfix"></div>
        <br/>

        <div class="col-lg-6  col-lg-offset-3">
            <div class="btn-group btn-group-justified">
                <a href="javascript:history.back()" class="btn btn-warning">
                    <i class="icon-arrow-left"></i> Go back</a>
                <a href="<c:url value="/admin/dashboard"/>" class="btn btn-info">
                    <i class="icon-home"></i> Dashboard</a>
            </div>
        </div>
    </div>


</div>


<!-- END  PAGE CONTENT -->


</body>
<!-- END BODY -->
</html>
