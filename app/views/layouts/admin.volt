<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- <link rel="shortcut icon" type="image/png" href="/imgs/favicon.png" /> -->
    <title>Админ панель - {{ request.getHttpHost()|upper }}</title>

    <!-- inject:css -->
    <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/css/font-awesome.min.css">
    <!-- endinject -->

    <!-- Main Style  -->
    <link rel="stylesheet" href="/assets/css/main.css">

    <link href="/assets/css/jquery.dataTables.css" rel="stylesheet">
    <link href="/assets/css/dataTables.tableTools.css" rel="stylesheet">
    <link href="/assets/css/dataTables.colVis.css" rel="stylesheet">
    <link href="/assets/css/responsive.dataTables.scss" rel="stylesheet">
    <link href="/assets/css/scroller.dataTables.scss" rel="stylesheet">
    <link rel="stylesheet" href="/assets/css/select2.min.css">
    <script src="/assets/js/modernizr-custom.js"></script>
</head>
<body>

<div id="ui" class="ui ui-aside-compact">

    <!--header start-->
    <header id="header" class="ui-header">

        <div class="navbar-header">
            <!--logo start-->
            <a href="/admin" class="navbar-brand">
                <span class="logo"><img src="/assets/img/logo-dark.png" alt=""/></span>
                <span class="logo-compact"><img src="/assets/img/logo-icon-dark.png" alt=""/></span>
            </a>
            <!--logo end-->
        </div>



        <div class="navbar-collapse nav-responsive-disabled">

            <!--toggle buttons start-->
            <ul class="nav navbar-nav">
                <li>
                    <a class="toggle-btn" data-toggle="ui-nav" href="">
                        <i class="fa fa-bars"></i>
                    </a>
                </li>
            </ul>
            <!-- toggle buttons end -->


        </div>

    </header>
    <!--header end-->

    <!--sidebar start-->
    <aside id="aside" class="ui-aside">
        <ul class="nav" ui-nav>
            <li>
                <a href="/admin"><i class="fa fa-home"></i><span>Главная</span></a>
                <ul class="nav nav-sub">
                    <li class="nav-sub-header"><a href="/admin"><span>Главная</span></a></li>
                </ul>
            </li>
            <li>
                <a href="/admin/case"><i class="fa fa-circle"></i><span>Кейсы</span></a>
                <ul class="nav nav-sub">
                    <li class="nav-sub-header"><a href="/admin/case"><span>Кейсы</span></a></li>
                </ul>
            </li>
            <li>
                <a href="/admin/items"><i class="fa fa-circle"></i><span>Предметы</span></a>
                <ul class="nav nav-sub">
                    <li class="nav-sub-header"><a href="/admin/items"><span>Предметы</span></a></li>
                </ul>
            </li>
            <li>
                <a href="/admin/promo"><i class="fa fa-circle"></i><span>Промо-коды</span></a>
                <ul class="nav nav-sub">
                    <li class="nav-sub-header"><a href="/admin/promo"><span>Промо-коды</span></a></li>
                </ul>
            </li>
            <li>
                <a href="/admin/users"><i class="fa fa-circle"></i><span>Пользователи</span></a>
                <ul class="nav nav-sub">
                    <li class="nav-sub-header"><a href="/admin/users"><span>Пользователи</span></a></li>
                </ul>
            </li>
        </ul>
    </aside>
    <!--sidebar end-->

    <!--main content start-->
    <div id="content" class="ui-content">
        <div class="ui-content-body">

            <div class="ui-container">
                {{ content() }}
            </div>


        </div>
    </div>
    <!--main content end-->

    <!--footer start-->
    <div id="footer" class="ui-footer">
        2017 &copy; ДикиЙ - skype - kudo070
    </div>
    <!--footer end-->

</div>

<!-- inject:js -->
<script src="/assets/js/jquery.min.js"></script>
<script src="/assets/js/bootstrap.min.js"></script>
<script src="/assets/js/jquery.nicescroll.min.js"></script>
<script src="/assets/js/autosize.min.js"></script>
<!-- endinject -->

<!-- Common Script   -->

<script src="/assets/js/jquery.dataTables.min.js"></script>
<script src="/assets/js/dataTables.tableTools.js"></script>
<script src="/assets/js/dataTables.bootstrap.min.js"></script>
<script src="/assets/js/dataTables.colVis.js"></script>
<script src="/assets/js/dataTables.responsive.js"></script>
<script src="/assets/js/dataTables.scroller.js"></script>

<!--init data tables-->
<script src="/assets/js/init-datatables.js"></script>

<script src="/assets/js/select2.min.js"></script>
<script src="/assets/js/init-select2.js"></script>

<script src="/assets/js/main.js"></script>


</body>
</html>
