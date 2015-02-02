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
    <title>Seminar Library | Login Page</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <![endif]-->
    <!-- GLOBAL STYLES -->

    <!-- PAGE LEVEL STYLES -->
    <link rel="shortcut icon" href="<c:url value="/resources/img/favicon.ico"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/plugins/bootstrap/css/bootstrap.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/login.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/plugins/magic/magic.css" />">
    <!-- END PAGE LEVEL STYLES -->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <%--<!--[if lt IE 9]>--%>
    <%--<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>--%>
    <%--<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>--%>
    <%--<![endif]-->--%>
</head>
<!-- END HEAD -->

<!-- BEGIN BODY -->
<body>

<!-- PAGE CONTENT -->
<div class="container">
    <div class="text-center">
        <img src="<c:url value="/resources/img/soft.png"/>" height="40" width="140" alt=""/>
    </div>
    <div class="tab-content">
        <div id="login" class="tab-pane active">
            <form name="login_form" action="${pageContext.request.contextPath}/login" method="post" class="form-signin">
                <p class="text-muted text-center btn-block btn btn-primary btn-rect">
                    Enter your username and password
                </p>
                <input type="text" name="username" placeholder="Username" class="form-control" required/>
                <input type="password" name="password" placeholder="Password" class="form-control" required/>
                <button class="btn text-muted text-center btn-danger" type="submit">Sign in</button>
            </form>
        </div>
        <div id="forgot" class="tab-pane">
            <form action="#" class="form-signin">
                <p class="text-muted text-center btn-block btn btn-primary btn-rect">Enter your valid e-mail</p>
                <input type="email" required="required" placeholder="Your E-mail" class="form-control"/>
                <br/>
                <button class="btn text-muted text-center btn-success" type="submit">Recover Password</button>
            </form>
        </div>
    </div>
    <div class="text-center">
        <ul class="list-inline">
            <li><a class="text-muted" href="#login" data-toggle="tab">Login</a></li>
            <li><a class="text-muted" href="#forgot" data-toggle="tab">Forgot Password</a></li>
        </ul>
    </div>


</div>

<!--END PAGE CONTENT -->

<!-- PAGE LEVEL SCRIPTS -->
<script src="<c:url value="/resources/assets/plugins/jquery-2.0.3.min.js"/>"></script>
<script src="<c:url value="/resources/assets/plugins/bootstrap/js/bootstrap.js"/>"></script>
<script src="<c:url value="/resources/assets/js/login.js"/>"></script>
<!--END PAGE LEVEL SCRIPTS -->

</body>
<!-- END BODY -->
</html>
