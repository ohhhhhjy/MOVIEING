<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/bootstrap/css/bootstrap.min.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/fonts/font-awesome/css/font-awesome.css'/>" />

<link id="themecss" rel="stylesheet" type="text/css"
	href="http://www.shieldui.com/shared/components/latest/css/light/all.min.css" />

<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/theme.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/dashboard.css'/>" />

<script type="text/javascript"
	src="<c:url value='/resources/js/jquery-1.10.2.min.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/resources/bootstrap/js/bootstrap.min.js'/>"></script>

<script type="text/javascript"
	src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>

<script type="text/javascript"
	src="<c:url value='/resources/js/theme.js'/>"></script>

    <script type="text/javascript" src="<c:url value='/resources/js/gridData.js'/>"></script>
    <script type="text/javascript">
        jQuery(function ($) {
            $("#grid").shieldGrid({
                dataSource: {
                    data: gridData                 
                },
                sorting:{
                    multiple: true
                },
                paging: {
                    pageSize: 12,
                    pageLinksCount: 10
                },
                selection:{
                    type: "row",
                    multiple: true,
                    toggle: false
                },
                columns: [                
                    { field: "id", width: "70px", title: "ID" },
                    { field: "name", title: "Person Name" },
                    { field: "company", title: "Company Name" },
                    { field: "email", title:"Email Address", width: "270px" }
                ]
            });
        });
    </script>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">            
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html" title="PB Dashboard">PB Dashboard</a>
            </div>
          <div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav side-nav">
				<li><a href="<c:url value='/Movieing/admin/admin_main.mov'/>"><i
						class="glyphicon glyphicon-th"></i> Dashboard</a></li>
				<li class="active"><a href="<c:url value='/Movieing/admin/admin2.mov'/>"><i
						class="fa fa-table"></i> Data Grid</a></li>
				<li><a href="bootstrap.html"><i class="fa fa-magic"></i>
						Bootstrap Elements</a></li>
				<li class="nav nav-list nav-list-expandable"><a><i
						class="fa fa-key"></i> Collapsed Menu Item <span class="caret"></span></a>
					<ul class="nav navbar-nav">
						<li><a href="#">Sub Item 1</a></li>
						<li><a href="#">Sub Item 2</a></li>
					</ul>
				<li>
			</ul>
			
                <ul class="nav navbar-nav navbar-right navbar-user">
                    <li class="dropdown messages-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> Messages <span class="label label-danger">2</span> <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-header">2 New Messages</li>
                            <li class="message-preview">
                                <a href="#">
                                    <span class="avatar"><i class="fa fa-bell"></i></span>
                                    <span class="message">Security alert</span>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li class="message-preview">
                                <a href="#">
                                    <span class="avatar"><i class="fa fa-bell"></i></span>
                                    <span class="message">Security alert</span>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="#">Go to Inbox <span class="badge">2</span></a></li>
                        </ul>
                    </li>
                    <li class="dropdown user-dropdown">
                       <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Steve Miller<b class="caret"></b></a>
                       <ul class="dropdown-menu">
                           <li><a href="#"><i class="fa fa-user"></i> Profile</a></li>
                           <li><a href="#"><i class="fa fa-gear"></i> Settings</a></li>
                           <li class="divider"></li>
                           <li><a href="#"><i class="fa fa-power-off"></i> Log Out</a></li>
                       </ul>
                   </li>
                </ul>
            </div>
        </nav>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-header">
                        <h1>Data Grid <small>A powerful data-viz widget for tabular data</small></h1>
                    </div>
                    <div class="alert alert-success alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        This theme page uses the Grid widget, part of the <a href="https://www.shieldui.com" target="_blank">Shield UI</a> JavaScript library.
                    </div>
                    <div id="grid"></div>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->


</body>


