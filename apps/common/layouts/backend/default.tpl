<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    {{ get_title() }}
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="{{ static_url() }}/themes/backend/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{ static_url() }}/themes/backend/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="{{ static_url() }}/themes/backend/css/ionicons.min.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="{{ static_url() }}/themes/backend/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{ static_url() }}/themes/backend/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="{{ static_url() }}/themes/backend/css/skins/_all-skins.min.css">

    <script>
        var base_url = '{{ url() }}';
        var backend_url = '{{ url('/' ~ carofw['backendUrl']) }}';
    </script>
    <script src="{{ static_url() }}/themes/backend/plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <script src="{{ static_url() }}/themes/backend/ckeditor/ckeditor.js"></script>
    <script src="{{ static_url() }}/themes/backend/js/systemJs.js" type="text/javascript" ></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="{{ static_url() }}/themes/backend/js/html5shiv.min.js"></script>
    <script src="{{ static_url() }}/themes/backend/js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="hold-transition skin-blue sidebar-mini">

<div class="wrapper">
    <header class="main-header">

        <!-- Logo -->
        <a href="{{ url() }}" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini">CFW</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg">Caro Framework</span>
        </a>

        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <!-- Navbar Right Menu -->
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="{{ static_url() }}/themes/backend/img/user2-160x160.jpg" class="user-image" alt="User Image">
                            <span class="hidden-xs">Admin</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Profile</a></li>
                            <li><a href="{{ url('/'~ carofw['backendUrl'] ~'/index/logout') }}">Sign out</a></li>
                        </ul>
                    </li>
                </ul>
            </div>

        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="{{ static_url() }}/themes/backend/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>Admin</p>
                    <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                </div>
            </div>
            <!-- search form -->
            <form action="#" method="get" class="sidebar-form">
                <div class="input-group">
                    <input type="text" name="q" class="form-control" placeholder="Search...">
                    <span class="input-group-btn">
                        <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
                    </span>
                </div>
            </form>
            <!-- /.search form -->
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu">
                <li>
                    <a href="{{ url('/'~ carofw['backendUrl'] ~'/dashboard') }}">
                        <i class="fa fa-dashboard"></i> <span>{{ t._('Dashboard') }}</span>
                    </a>
                </li>
                <li class="treeview">
                    <a href="{{ url('/'~ carofw['backendUrl'] ~'/users') }}">
                        <i class="fa fa-users"></i>
                        <span>{{ t._('Users') }}</span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="{{ url('/'~ carofw['backendUrl'] ~'/users') }}"><i class="fa fa-reorder"></i> {{ t._('View Users') }}</a></li>
                        <li><a href="{{ url('/'~ carofw['backendUrl'] ~'/users/edit') }}"><i class="fa fa-plus"></i> {{ t._('Create User') }}</a></li>
                        <li><a href="{{ url('/'~ carofw['backendUrl'] ~'/users/groups') }}"><i class="fa fa-reorder"></i> {{ t._('View Groups') }}</a></li>
                        <li><a href="{{ url('/'~ carofw['backendUrl'] ~'/users/edit_group') }}"><i class="fa fa-plus"></i> {{ t._('Create Group') }}</a></li>
                        <li><a href="{{ url('/'~ carofw['backendUrl'] ~'/users/roles') }}"><i class="fa fa-reorder"></i> {{ t._('View Roles') }}</a></li>
                        <li><a href="{{ url('/'~ carofw['backendUrl'] ~'/users/edit_role') }}"><i class="fa fa-plus"></i> {{ t._('Create Role') }}</a></li>
                    </ul>
                </li>
                <li>
                    <a href="{{ url('/'~ carofw['backendUrl'] ~'/settings') }}">
                        <i class="fa fa-cog"></i> <span>{{ t._('Settings') }}</span>
                    </a>
                </li>
                <li class="treeview">
                    <a href="{{ url('/'~ carofw['backendUrl'] ~'/categories') }}">
                        <i class="fa fa-navicon"></i> <span>{{ t._('Categories') }}</span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="{{ url('/'~ carofw['backendUrl'] ~'/categories') }}"><i class="fa fa-reorder"></i> {{ t._('View Categories') }}</a></li>
                        <li><a href="{{ url('/'~ carofw['backendUrl'] ~'/categories/edit') }}"><i class="fa fa-plus"></i> {{ t._('Create Category') }}</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="{{ url('/'~ carofw['backendUrl'] ~'/buzz') }}">
                        <i class="fa fa-bullhorn"></i> <span>{{ t._('Buzz') }}</span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="{{ url('/'~ carofw['backendUrl'] ~'/buzz') }}"><i class="fa fa-reorder"></i> {{ t._('View Buzz') }}</a></li>
                        <li><a href="{{ url('/'~ carofw['backendUrl'] ~'/buzz/edit') }}"><i class="fa fa-plus"></i> {{ t._('Create Buzz') }}</a></li>
                    </ul>
                </li>
            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        {{ flash.output() }}
        {{ get_content() }}
    </div>
</div>

<!-- Model -->
<div class="modal fade" id="systemModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content" id="systemModalContent"></div>
    </div>
</div>
<!-- End Model -->

<footer class="main-footer">
    <div class="pull-right hidden-xs">
        <b>Version</b> 0.1
    </div>
    <strong>Copyright &copy; 2015 <a href="">Jacky</a>.</strong> All rights reserved.
</footer>

<!-- Bootstrap 3.3.5 -->
<script src="{{ static_url() }}/themes/backend/bootstrap/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="{{ static_url() }}/themes/backend/plugins/fastclick/fastclick.min.js"></script>
<!-- AdminLTE App -->
<script src="{{ static_url() }}/themes/backend/js/app.min.js"></script>
<!-- Sparkline -->
<script src="{{ static_url() }}/themes/backend/plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="{{ static_url() }}/themes/backend/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="{{ static_url() }}/themes/backend/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- SlimScroll 1.3.0 -->
<script src="{{ static_url() }}/themes/backend/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- ChartJS 1.0.1 -->
<script src="{{ static_url() }}/themes/backend/plugins/chartjs/Chart.min.js"></script>
<!-- AdminLTE -->
<script src="{{ static_url() }}/themes/backend/js/theme.js"></script>

</body>
</html>