<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>LIBRARYYYY</title>
    <meta name="generator" content="Bootply"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link rel="shortcut icon" href="<c:url value="/resources/img/favicon.ico"/>">
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
    <link rel="stylesheet" href="<c:url value="/resources/font-awesome-4.2.0/css/font-awesome.min.css"/>">
    <%--<!--[if lt IE 9]>--%>
    <%--<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>--%>
    <%--<![endif]-->--%>
    <link href="<c:url value="/resources/css/styles.css"/>" rel="stylesheet">
</head>
<body>


<div class="header alt vert">
    <div class="container">

        <h1>LIBRARYYYY</h1>

        <p class="lead">Digital version of the Seminar Library</p>

        <div>&nbsp;</div>
        <a href="<c:url value="/browseLibrary"/>" class="btn btn-default btn-lg">Open BookShelf</a>
    </div>
</div>

<div class="callout" id="sec3">
    <div class="vert">
        <div class="col-md-12 text-center"><h2>One Kilo Road to SUST</h2></div>
        <div class="col-md-12 text-center">&nbsp;</div>
        <div class="col-md-8 col-md-offset-2 text-center">
        </div>
    </div>
</div>

<div class="blurb bright">

    <div class="row">
        <div class="col-sm-4 col-sm-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading text-center"><h2>Create Your Student Account<i
                        class="icon-chevron-center"></i></h2></div>
                <div class="panel-body text-center">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis
                    pharetra varius quam sit amet vulputate.
                    Quisque mauris augue, molestie tincidunt condimentum vitae, gravida a libero. Aenean sit amet felis
                    dolor, in sagittis nisi. Sed ac orci quis tortor imperdiet venenatis. Duis elementum auctor
                    accumsan.
                    Aliquam in felis sit.
                    <div class="row">&nbsp;</div>
                    <button class="btn btn-lg btn-primary btn-block">Sign Up</button>
                </div>
            </div>
        </div>
    </div>
</div>


<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 text-center">
                <p>Built with <i class="fa fa-at"></i><a href="http://spring.io/">Spring MVC Framework</a>.</p>
            </div>

        </div>
    </div>
</footer>

<ul class="nav pull-right scroll-down">
    <li><a href="#" title="Scroll down"><i class="icon-chevron-down icon-3x"></i></a></li>
</ul>
<ul class="nav pull-right scroll-top">
    <li><a href="#" title="Scroll to top"><i class="icon-chevron-up icon-3x"></i></a></li>
</ul>

<!-- script references -->
<!-- // <script src="js/bootstrap.min.js"></script> -->
<!-- // <script src="js/scripts.js"></script> -->

</body>
</html>