<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>

<html lang="en">
<!-- BEGIN HEAD-->
<head>

    <meta charset="UTF-8"/>
    <title>Library - browse books</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <![endif]-->

    <!-- GLOBAL STYLES -->
    <link rel="shortcut icon" href="<c:url value="/resources/img/favicon.ico"/>">
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
           class="accordion-toggle btn btn-primary btn-sm visible-xs" data-toggle="collapse" href="#"
           id="menu-toggle">
            <i class="icon-align-justify"></i>
        </a>
        <!-- LOGO SECTION -->
        <header class="navbar-header">
            <a href="<c:url value="/welcome"/>" class="navbar-brand">
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
        <div class="panel-heading text-center">
            <h4>Search Your Book</h4>

        </div>
        <div class="panel-body">
            <div class="col-lg-1"></div>
            <div class="col-lg-8">
                <form action="<c:url value="/searchLibrary"/>" method="get">
                    <div class="form-group">
                        <label>Type Book or Author Name (or Part of name)</label>
                        <input class="form-control" placeholder="Enter your search terms" name="term" value="${term}" required>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-3 text-right">Select any one</label>

                        <div class="col-lg-9">
                            <div class="checkbox">
                                <label>
                                    <div class="radio">
                                    <span class="checked">
                                        <input class="uniform" type="radio" name="optionsRadios" value="Book"
                                               checked="checked">
                                    </span>Book
                                    </div>
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <div class="radio">
                                    <span class="">
                                        <input class="uniform" type="radio" name="optionsRadios"
                                               value="Author">
                                    </span>Author
                                    </div>
                                </label>
                            </div>
                            <br>
                            <%--<a href="/searchLibrary" class="btn btn-primary btn-flat">Search</a>--%>
                            <input type="submit" class="btn btn-primary btn-flat" value="Search">
                            <input type="submit" class="btn btn-info btn-flat" value="Feeling Lucky">
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-lg-3"></div>
        </div>
    </div>

    <!-- search table start -->
    <div class="panel panel-primary">
        <div class="panel-heading text-center">
            <h4>Your Desired Books</h4>
        </div>
        <div class="panel-body">
            <div class="panel panel-default">
                <div class="panel-heading"></div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <div id="dataTables-example_wrapper" class="dataTables_wrapper form-inline" role="grid">
                            <table class="table table-striped table-bordered table-hover dataTable no-footer"
                                   id="dataTables-example" aria-describedby="dataTables-example_info">
                                <thead>
                                <tr role="row">
                                    <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1"
                                        colspan="1" aria-sort="ascending"
                                        aria-label="Rendering engine: activate to sort column ascending"
                                        style="width: 80px;">
                                        Book ID
                                    </th>
                                    <th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1"
                                        colspan="1" aria-label="Browser: activate to sort column ascending"
                                        style="width: 240px;">
                                        Book Name
                                    </th>
                                    <th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1"
                                        colspan="1" aria-label="Platform(s): activate to sort column ascending"
                                        style="width: 230px;">
                                        Author(s)
                                    </th>
                                    <th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1"
                                        colspan="1" aria-label="Engine version: activate to sort column ascending"
                                        style="width: 120px;">
                                        Book Shelf
                                    </th>
                                    <th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1"
                                        colspan="1" aria-label="CSS grade: activate to sort column ascending"
                                        style="width: 160px;">
                                        Description
                                    </th>
                                    <th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1"
                                        colspan="1" aria-label="CSS grade: activate to sort column ascending"
                                        style="width: 30px;">
                                        Available
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="book" items="${books}">
                                    <tr class="success">
                                        <td class="sorting_1">
                                            <a href="<c:url value="/bookDetails/${book.bookId}"/>">${book.bookId}</a>
                                        </td>
                                        <td class=" ">
                                            <a href="<c:url value="/bookDetails/${book.bookId}"/>">${book.title}</a>
                                        </td>
                                        <td class=" ">${book.authors}</td>
                                        <td class="center ">${book.bookShelf}</td>
                                        <td class="center ">${book.comment}</td>
                                        <td class="center ">
                                            <c:if test="${book.availibility == true}">
                                                <span class="label label-success">Yes</span>
                                            </c:if>
                                            <c:if test="${book.availibility == false}">
                                                <span class="label label-danger">No</span>
                                            </c:if>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="panel-footer"></div>
    </div>
    <!-- search table end -->

</div>
<div class="col-lg-1"></div>
<!--END PAGE CONTENT -->
</div>
<!--END MAIN WRAPPER -->

<!-- FOOTER -->
<div id="footer">
    <p>&copy; binarytheme &nbsp;2014 &nbsp;</p>
</div>
<!--END FOOTER -->
<!-- GLOBAL SCRIPTS -->
<script src="<c:url value="/resources/assets/plugins/jquery-2.0.3.min.js"/>"></script>
<script src="<c:url value="/resources/assets/plugins/bootstrap/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/assets/plugins/modernizr-2.6.2-respond-1.1.0.min.js"/>"></script>
<!-- END GLOBAL SCRIPTS -->
<!-- PAGE LEVEL SCRIPTS -->
<script src="<c:url value="/resources/assets/plugins/dataTables/jquery.dataTables.js"/>"></script>
<script src="<c:url value="/resources/assets/plugins/dataTables/dataTables.bootstrap.js"/>"></script>
<script>
    $(document).ready(function () {
        $('#dataTables-example').dataTable();
    });
</script>
<!-- END PAGE LEVEL SCRIPTS -->

</body>
<!-- END BODY-->

</html>
