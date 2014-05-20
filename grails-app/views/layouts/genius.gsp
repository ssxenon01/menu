<%--
  Created by IntelliJ IDEA.
  User: xenon
  Date: 1/24/14
  Time: 3:22 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <!-- start: Meta -->
    <meta charset="utf-8">
    <title><g:layoutTitle default="Menu: Admin Dashboard"/></title>
    <meta name="description" content="MENU Admin">
    <!-- end: Meta -->

    <!-- start: Mobile Specific -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- end: Mobile Specific -->

    <!-- start: CSS -->
    <link href="${resource(dir: 'assets/css/', file:'bootstrap.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'assets/css/', file:'style.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'assets/css/', file:'retina.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'assets/css/', file:'print.css')}" rel="stylesheet" type="text/css" media="print"/>
    <!-- end: CSS -->


    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>

	  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<script src="/assets/js/respond.min.js"></script>

	<![endif]-->

    <!-- start: Favicon and Touch Icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${resource(dir: '/assets/ico/', file:'apple-touch-icon-144-precomposed.png')}">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${resource(dir: '/assets/ico/', file:'apple-touch-icon-114-precomposed.png')}">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${resource(dir: '/assets/ico/', file:'apple-touch-icon-72-precomposed.png')}">
    <link rel="apple-touch-icon-precomposed" sizes="57x57" href="${resource(dir: '/assets/ico/', file:'apple-touch-icon-57-precomposed.png')}">
    <link rel="shortcut icon" href="${resource(dir: '/assets/ico/', file:'favicon.png')}">
    <!-- end: Favicon and Touch Icons -->

    <g:layoutHead />
</head>

<body>
<!-- start: Header -->
<header class="navbar">
<div class="container">
<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".sidebar-nav.nav-collapse">
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
</button>
<a id="main-menu-toggle" class="hidden-xs open"><i class="fa fa-bars"></i></a>
<a class="navbar-brand col-md-2 col-sm-1 col-xs-2" ><span>Genius</span></a>
<div id="search" class="col-sm-5 col-xs-8 col-lg-3">
    <select>
        <option>everything</option>
        <option>messages</option>
        <option>comments</option>
        <option>users</option>
    </select>
    <input type="text" placeholder="search" />
    <i class="fa fa-search"></i>
</div>
<!-- start: Header Menu -->
<div class="nav-no-collapse header-nav">
<ul class="nav navbar-nav pull-right">
<li class="dropdown hidden-xs">
    <a class="btn dropdown-toggle" data-toggle="dropdown" >
        <i class="fa fa-warning"></i>
        <span class="number">11</span>
    </a>
    <ul class="dropdown-menu notifications">
        <li class="dropdown-menu-title">
            <span>You have 11 notifications</span>
        </li>
        <li>
            <a >
                <span class="icon blue"><i class="fa fa-user"></i></span>
                <span class="message">New user registration</span>
                <span class="time">1 min</span>
            </a>
        </li>
        <li>
            <a >
                <span class="icon green"><i class="fa fa-comment-o"></i></span>
                <span class="message">New comment</span>
                <span class="time">7 min</span>
            </a>
        </li>
        <li>
            <a >
                <span class="icon green"><i class="fa fa-comment-o"></i></span>
                <span class="message">New comment</span>
                <span class="time">8 min</span>
            </a>
        </li>
        <li>
            <a >
                <span class="icon green"><i class="fa fa-comment-o"></i></span>
                <span class="message">New comment</span>
                <span class="time">16 min</span>
            </a>
        </li>
        <li>
            <a >
                <span class="icon blue"><i class="fa fa-user"></i></span>
                <span class="message">New user registration</span>
                <span class="time">36 min</span>
            </a>
        </li>
        <li>
            <a >
                <span class="icon yellow"><i class="fa fa-shopping-cart"></i></span>
                <span class="message">2 items sold</span>
                <span class="time">1 hour</span>
            </a>
        </li>
        <li class="warning">
            <a >
                <span class="icon red"><i class="fa fa-user"></i></span>
                <span class="message">User deleted account</span>
                <span class="time">2 hour</span>
            </a>
        </li>
        <li class="warning">
            <a >
                <span class="icon red"><i class="fa fa-shopping-cart"></i></span>
                <span class="message">Transaction was canceled</span>
                <span class="time">6 hour</span>
            </a>
        </li>
        <li>
            <a >
                <span class="icon green"><i class="fa fa-comment-o"></i></span>
                <span class="message">New comment</span>
                <span class="time">yesterday</span>
            </a>
        </li>
        <li>
            <a >
                <span class="icon blue"><i class="fa fa-user"></i></span>
                <span class="message">New user registration</span>
                <span class="time">yesterday</span>
            </a>
        </li>
        <li class="dropdown-menu-sub-footer">
            <a>View all notifications</a>
        </li>
    </ul>
</li>
<!-- start: Notifications Dropdown -->
<li class="dropdown hidden-xs">
    <a class="btn dropdown-toggle" data-toggle="dropdown" >
        <i class="fa fa-tasks"></i>
        <span class="number">17</span>
    </a>
    <ul class="dropdown-menu tasks">
        <li>
            <span class="dropdown-menu-title">You have 17 tasks in progress</span>
        </li>
        <li>
            <a >
                <span class="header">
                    <span class="title">iOS Development</span>
                    <span class="percent"></span>
                </span>
                <div class="taskProgress progressSlim progressBlue">80</div>
            </a>
        </li>
        <li>
            <a >
                <span class="header">
                    <span class="title">Android Development</span>
                    <span class="percent"></span>
                </span>
                <div class="taskProgress progressSlim progressYellow">47</div>
            </a>
        </li>
        <li>
            <a >
                <span class="header">
                    <span class="title">Django Project For Google</span>
                    <span class="percent"></span>
                </span>
                <div class="taskProgress progressSlim progressRed">32</div>
            </a>
        </li>
        <li>
            <a >
                <span class="header">
                    <span class="title">SEO for new sites</span>
                    <span class="percent"></span>
                </span>
                <div class="taskProgress progressSlim progressGreen">63</div>
            </a>
        </li>
        <li>
            <a >
                <span class="header">
                    <span class="title">New blog posts</span>
                    <span class="percent"></span>
                </span>
                <div class="taskProgress progressSlim progressPink">80</div>
            </a>
        </li>
        <li>
            <a class="dropdown-menu-sub-footer">View all tasks</a>
        </li>
    </ul>
</li>
<!-- end: Notifications Dropdown -->
<!-- start: Message Dropdown -->
<li class="dropdown hidden-xs">
    <a class="btn dropdown-toggle" data-toggle="dropdown" >
        <i class="fa fa-envelope"></i>
        <span class="number">9</span>
    </a>
    <ul class="dropdown-menu messages">
        <li>
            <span class="dropdown-menu-title">You have 9 messages</span>
        </li>
        <li>
            <a >
                <span class="avatar"><img src="${resource(dir:'assets/img', file: 'avatar.jpg')}" alt="Avatar"></span>
                <span class="header">
                    <span class="from">
                        Łukasz Holeczek
                    </span>
                    <span class="time">
                        6 min
                    </span>
                </span>
                <span class="message">
                    Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                </span>
            </a>
        </li>
        <li>
            <a >
                <span class="avatar"><img src="${resource(dir:'assets/img', file: 'avatar2.jpg')}" alt="Avatar"></span>
                <span class="header">
                    <span class="from">
                        Megan Abott
                    </span>
                    <span class="time">
                        56 min
                    </span>
                </span>
                <span class="message">
                    Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                </span>
            </a>
        </li>
        <li>
            <a >
                <span class="avatar"><img src="${resource(dir:'assets/img', file: 'avatar3.jpg')}" alt="Avatar"></span>
                <span class="header">
                    <span class="from">
                        Kate Ross
                    </span>
                    <span class="time">
                        3 hours
                    </span>
                </span>
                <span class="message">
                    Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                </span>
            </a>
        </li>
        <li>
            <a >
                <span class="avatar"><img src="${resource(dir:'assets/img', file: 'avatar4.jpg')}" alt="Avatar"></span>
                <span class="header">
                    <span class="from">
                        Julie Blank
                    </span>
                    <span class="time">
                        yesterday
                    </span>
                </span>
                <span class="message">
                    Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                </span>
            </a>
        </li>
        <li>
            <a >
                <span class="avatar"><img src="${resource(dir:'assets/img', file: 'avatar5.jpg')}" alt="Avatar"></span>
                <span class="header">
                    <span class="from">
                        Jane Sanders
                    </span>
                    <span class="time">
                        Jul 25, 2012
                    </span>
                </span>
                <span class="message">
                    Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                </span>
            </a>
        </li>
        <li>
            <a class="dropdown-menu-sub-footer">View all messages</a>
        </li>
    </ul>
</li>
<!-- end: Message Dropdown -->
<li>
    <a class="btn" >
        <i class="fa fa-wrench"></i>
    </a>
</li>
<!-- start: User Dropdown -->
<li class="dropdown">
    <a class="btn account dropdown-toggle" data-toggle="dropdown" >
        <div class="avatar">%{--<img src="http://cdn.cross.mn/images/default/default-profile.jpg" alt="Avatar">--}%</div>
        <div class="user">
            <span class="hello">Welcome!</span>
            <span class="name"><sec:loggedInUserInfo field="username" /></span>
        </div>
    </a>
    <ul class="dropdown-menu">
        <li><a ><i class="fa fa-user"></i> Profile</a></li>
        <li><a ><i class="fa fa-cog"></i> Settings</a></li>
        <li><a ><i class="fa fa-envelope"></i> Messages</a></li>
        <li><a href="/logout"><i class="fa fa-sign-out"></i> Logout</a></li>
    </ul>
</li>
<!-- end: User Dropdown -->
</ul>
</div>
<!-- end: Header Menu -->

</div>
</header>
<!-- end: Header -->

<div class="container">
    <div class="row">

        <!-- start: Main Menu -->
        <div id="sidebar-left" class="col-lg-2 col-sm-1" >

            <div class="sidebar-nav nav-collapse collapse navbar-collapse ">
                <ul class="nav main-menu">
                    <li><a href="${g.createLink(uri:'/admin')}"><i class="fa fa-bar-chart-o"></i><span class="hidden-sm text"> Dashboard</span></a></li>
                    <li><a href="${g.createLink(uri:'/admin/tenant')}"><i class="fa fa-building-o"></i><span class="hidden-sm text"> Tenant List</span></a></li>
                    <li><a href="${g.createLink(uri:'/admin/category')}"><i class="fa fa-user"></i><span class="hidden-sm text">Category List</span></a></li>
                    <li><a href="${g.createLink(uri:'/admin')}"><i class="fa fa-inbox"></i><span class="hidden-sm text">Invoice List</span></a></li>
                    <li><a href="${g.createLink(uri:'/admin')}"><i class="fa fa-bookmark-o"></i><span class="hidden-sm text">Sector List</span></a></li>
                    <li><a href="${g.createLink(uri:'/admin')}"><i class="fa fa-picture-o"></i><span class="hidden-sm text"> Gallery</span></a></li>
                    <li><a href="${g.createLink(uri:'/admin')}"><i class="fa fa-picture-o"></i><span class="hidden-sm text"> Config</span></a></li>

                    %{--<li>
                        <a class="dropmenu" ><i class="fa fa-folder-o"></i><span class="hidden-sm text"> Example Pages</span> <span class="chevron closed"></span></a>
                        <ul>
                            <li><a class="submenu" href="page-inbox.html"><i class="fa fa-envelope-o"></i><span class="hidden-sm text"> Inbox</span></a></li>
                            <li><a class="submenu" href="page-invoice.html"><i class="fa fa-file-text"></i><span class="hidden-sm text"> Invoice</span></a></li>
                            <li><a class="submenu" href="page-todo.html"><i class="fa fa-tasks"></i><span class="hidden-sm text"> ToDo & Timeline</span></a></li>
                            <li><a class="submenu" href="page-profile.html"><i class="fa fa-male"></i><span class="hidden-sm text"> Profile</span></a></li>
                            <li><a class="submenu" href="page-pricing-tables.html"><i class="fa fa-table"></i><span class="hidden-sm text"> Pricing Tables</span></a></li>
                            <li><a class="submenu" href="page-404.html"><i class="fa fa-unlink"></i><span class="hidden-sm text"> 404</span></a></li>
                            <li><a class="submenu" href="page-500.html"><i class="fa fa-unlink"></i><span class="hidden-sm text"> 500</span></a></li>
                            <li><a class="submenu" href="page-lockscreen.html"><i class="fa fa-lock"></i><span class="hidden-sm text"> LockScreen</span></a></li>
                            <li><a class="submenu" href="page-lockscreen2.html"><i class="fa fa-lock"></i><span class="hidden-sm text"> LockScreen2</span></a></li>
                            <li><a class="submenu" href="page-login.html"><i class="fa fa-key"></i><span class="hidden-sm text"> Login Page</span></a></li>
                            <li><a class="submenu" href="page-register.html"><i class="fa fa-sign-in"></i><span class="hidden-sm text"> Register Page</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="dropmenu" ><i class="fa fa-edit"></i><span class="hidden-sm text"> Forms</span> <span class="chevron closed"></span></a>
                        <ul>
                            <li><a class="submenu" href="form-elements.html"><i class="fa fa-edit"></i><span class="hidden-sm text"> Form elements</span></a></li>
                            <li><a class="submenu" href="form-wizard.html"><i class="fa fa-edit"></i><span class="hidden-sm text"> Wizard</span></a></li>
                            <li><a class="submenu" href="form-dropzone.html"><i class="fa fa-edit"></i><span class="hidden-sm text"> Dropzone Upload</span></a></li>
                            <li><a class="submenu" href="form-x-editable.html"><i class="fa fa-edit"></i><span class="hidden-sm text"> X-editable</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="dropmenu" ><i class="fa fa-list-alt"></i><span class="hidden-sm text"> Charts</span> <span class="chevron closed"></span></a>
                        <ul>
                            <li><a class="submenu" href="charts-flot.html"><i class="fa fa-chevron-right"></i><span class="hidden-sm text"> Flot Charts</span></a></li>
                            <li><a class="submenu" href="charts-xcharts.html"><i class="fa fa-chevron-right"></i><span class="hidden-sm text"> xCharts</span></a></li>
                            <li><a class="submenu" href="charts-others.html"><i class="fa fa-chevron-right"></i><span class="hidden-sm text"> Other</span></a></li>
                        </ul>

                    </li>
                    <li><a href="typography.html"><i class="fa fa-font"></i><span class="hidden-sm text"> Typography</span></a></li>
                    <li><a href="table.html"><i class="fa fa-align-justify"></i><span class="hidden-sm text"> Tables</span></a></li>
                    <li><a href="calendar.html"><i class="fa fa-calendar"></i><span class="hidden-sm text"> Calendar</span></a></li>
                    <li><a href="file-manager.html"><i class="fa fa-folder-open"></i><span class="hidden-sm text"> File Manager</span></a></li>
                    <li>
                        <a class="dropmenu" ><i class="fa fa-star"></i><span class="hidden-sm text"> Icons</span> <span class="chevron closed"></span></a>
                        <ul>
                            <li><a class="submenu" href="icons-halflings.html"><i class="fa fa-star"></i><span class="hidden-sm text"> Halflings</span></a></li>
                            <li><a class="submenu" href="icons-glyphicons-pro.html"><i class="fa fa-star"></i><span class="hidden-sm text"> Glyphicons PRO</span></a></li>
                            <li><a class="submenu" href="icons-filetypes.html"><i class="fa fa-star"></i><span class="hidden-sm text"> Filetypes</span></a></li>
                            <li><a class="submenu" href="icons-social.html"><i class="fa fa-star"></i><span class="hidden-sm text"> Social</span></a></li>
                            <li><a class="submenu" href="icons-font-awesome.html"><i class="fa fa-star"></i><span class="hidden-sm text"> Font Awesome</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="dropmenu" ><i class="fa fa-folder-open"></i><span class="hidden-sm text"> 4 Level Menu</span> <span class="chevron closed"></span></a>
                        <ul>
                            <li><a href="2nd-level.html"><i class="fa fa-folder"></i><span class="hidden-sm text"> 2nd Level</span></a></li>
                            <li>
                                <a class="dropmenu" ><i class="fa fa-folder-open"></i><span class="hidden-sm text"> 2nd Level</span> <span class="chevron closed"></span></a>
                                <ul>
                                    <li><a href="3rd-level.html"><i class="fa fa-folder"></i><span class="hidden-sm text"> 3rd Level</span></a></li>
                                    <li>
                                        <a class="dropmenu" ><i class="fa fa-folder-open"></i><span class="hidden-sm text"> 3rd Level</span> <span class="chevron closed"></span></a>
                                        <ul>
                                            <li>
                                                <a class="submenu" href="4th-level.html"><i class="fa fa-folder"></i><span class="hidden-sm text"> 4th Level</span></a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a class="dropmenu" ><i class="fa fa-folder-open"></i><span class="hidden-sm text"> 3rd Level</span> <span class="chevron closed"></span></a>
                                        <ul>
                                            <li>
                                                <a class="submenu" href="4th-level2.html"><i class="fa fa-folder"></i><span class="hidden-sm text"> 4th Level</span></a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>--}%
                </ul>
            </div>
            <a  id="main-menu-min" class="full visible-md visible-lg"><i class="fa fa-angle-double-left"></i></a>
        </div>
        <!-- end: Main Menu -->

        <!-- start: Content -->
        <g:layoutBody />
        <!-- end: Content -->

    </div><!--/row-->

</div><!--/container-->


<div class="modal fade" id="myModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Modal title</h4>
            </div>
            <div class="modal-body">
                <p>Here settings can be configured...</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<div class="clearfix"></div>

<footer>
    <p>
        <span style="text-align:left;float:left">&copy; 2014 creativeLabs. <a href="http://bootstrapmaster.com">Admin Templates</a> by BootstrapMaster</span>
        <span class="hidden-phone" style="text-align:right;float:right">Powered by: <a href="http://bootstrapmaster.com/demo/genius/" alt="Bootstrap Admin Templates">Genius Dashboard</a> | Built with <a href="http://bloxy.co">bloxy</a></span>
    </p>

</footer>

<!-- start: JavaScript-->
<!--[if !IE]>-->

<script src="${resource(dir: '/assets/js/', file:'jquery-2.0.3.min.js')}"></script>

<!--<![endif]-->

<!--[if IE]>

		<script src="${resource(dir: '/assets/js/', file:'jquery-1.10.2.min.js')}"></script>

	<![endif]-->

<!--[if !IE]>-->

<script type="text/javascript">
    window.jQuery || document.write("<script src='${resource(dir: '/assets/js/', file:'jquery-2.0.3.min.js')}'>"+"<"+"/script>");
</script>

<!--<![endif]-->

<!--[if IE]>

		<script type="text/javascript">
	 	window.jQuery || document.write("<script src='${resource(dir: '/assets/js/', file:'jquery-1.10.2.min.js')}'>"+"<"+"/script>");
		</script>

	<![endif]-->
<script src="${resource(dir: '/assets/js/', file:'jquery-migrate-1.2.1.min.js')}"></script>
<script src="${resource(dir: '/assets/js/', file:'bootstrap.min.js')}"></script>




<!-- page scripts -->
<script src="${resource(dir: '/assets/js/', file:'jquery-ui-1.10.3.custom.min.js')}"></script>
<script src="${resource(dir: '/assets/js/', file:'jquery.ui.touch-punch.min.js')}"></script>
<script src="${resource(dir: '/assets/js/', file:'jquery.sparkline.min.js')}"></script>
<script src="${resource(dir: '/assets/js/', file:'fullcalendar.min.js')}"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="${resource(dir: '/assets/js/', file:'excanvas.min.js')}"></script><![endif]-->
<script src="${resource(dir: '/assets/js/', file:'jquery.flot.min.js')}"></script>
<script src="${resource(dir: '/assets/js/', file:'jquery.flot.pie.min.js')}"></script>
<script src="${resource(dir: '/assets/js/', file:'jquery.flot.stack.min.js')}"></script>
<script src="${resource(dir: '/assets/js/', file:'jquery.flot.resize.min.js')}"></script>
<script src="${resource(dir: '/assets/js/', file:'jquery.flot.time.min.js')}"></script>
<script src="${resource(dir: '/assets/js/', file:'jquery.autosize.min.js')}"></script>
<script src="${resource(dir: '/assets/js/', file:'jquery.placeholder.min.js')}"></script>
<script src="${resource(dir: '/assets/js/', file:'moment.min.js')}"></script>
<script src="${resource(dir: '/assets/js/', file:'daterangepicker.min.js')}"></script>
<script src="${resource(dir: '/assets/js/', file:'jquery.dataTables.min.js')}"></script>
<script src="${resource(dir: '/assets/js/', file:'dataTables.bootstrap.min.js')}"></script>

<!-- theme scripts -->
<script src="${resource(dir: '/assets/js/', file:'custom.min.js')}"></script>
<script src="${resource(dir: '/assets/js/', file:'core.min.js')}"></script>

<!-- inline scripts related to this page -->


<!-- end: JavaScript-->

<menu:renderDependantJavascript />


</body>
</html>