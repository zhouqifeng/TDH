<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- 日历 -->
  <link rel="stylesheet" href="css/public.css" />
  <link rel="stylesheet" href="css/signin.css" />
  <meta charset="utf-8">
  <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
  <meta name="format-detection" content="telephone=no">
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <!--日历结束 -->
  <meta name="description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
  <!--乱码 -->
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <!-- Twitter meta-->
  <meta property="twitter:card" content="summary_large_image">
  <meta property="twitter:site" content="@pratikborsadiya">
  <meta property="twitter:creator" content="@pratikborsadiya">
  <!-- Open Graph Meta-->
  <meta property="og:type" content="website">
  <meta property="og:site_name" content="Vali Admin">
  <meta property="og:title" content="Vali - Free Bootstrap 4 admin theme">
  <meta property="og:url" content="http://pratikborsadiya.in/blog/vali-admin">
  <meta property="og:image" content="http://pratikborsadiya.in/blog/vali-admin/hero-social.png">
  <meta property="og:description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
  <title>Vali Admin - Free Bootstrap 4 Admin Template</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Main CSS-->
  <link rel="stylesheet" type="text/css" href="css/main.css">
  <!-- Font-icon css-->
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body class="app sidebar-mini rtl">
<!-- Navbar-->
<header class="app-header"><a class="app-header__logo" href="index.html">Vali</a>
  <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
  <!-- Navbar Right Menu-->
  <ul class="app-nav">
    <li class="app-search">
      <input class="app-search__input" type="search" placeholder="Search">
      <button class="app-search__button"><i class="fa fa-search"></i></button>
    </li>
    <!--Notification Menu-->
    <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Show notifications"><i class="fa fa-bell-o fa-lg"></i></a>
      <ul class="app-notification dropdown-menu dropdown-menu-right">
        <li class="app-notification__title">You have 4 new notifications.</li>
        <div class="app-notification__content">
          <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-primary"></i><i class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
            <div>
              <p class="app-notification__message">Lisa sent you a mail</p>
              <p class="app-notification__meta">2 min ago</p>
            </div></a></li>
          <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-danger"></i><i class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
            <div>
              <p class="app-notification__message">Mail server not working</p>
              <p class="app-notification__meta">5 min ago</p>
            </div></a></li>
          <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-success"></i><i class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
            <div>
              <p class="app-notification__message">Transaction complete</p>
              <p class="app-notification__meta">2 days ago</p>
            </div></a></li>
          <div class="app-notification__content">
            <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-primary"></i><i class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
              <div>
                <p class="app-notification__message">Lisa sent you a mail</p>
                <p class="app-notification__meta">2 min ago</p>
              </div></a></li>
            <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-danger"></i><i class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
              <div>
                <p class="app-notification__message">Mail server not working</p>
                <p class="app-notification__meta">5 min ago</p>
              </div></a></li>
            <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-success"></i><i class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
              <div>
                <p class="app-notification__message">Transaction complete</p>
                <p class="app-notification__meta">2 days ago</p>
              </div></a></li>
          </div>
        </div>
        <li class="app-notification__footer"><a href="#">See all notifications.</a></li>
      </ul>
    </li>
    <!-- User Menu-->
    <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i class="fa fa-user fa-lg"></i></a>
      <ul class="dropdown-menu settings-menu dropdown-menu-right">
        <li><a class="dropdown-item" href="page-user.html"><i class="fa fa-cog fa-lg"></i> Settings</a></li>
        <li><a class="dropdown-item" href="page-user.html"><i class="fa fa-user fa-lg"></i> Profile</a></li>
        <li><a class="dropdown-item" href="page-login.html"><i class="fa fa-sign-out fa-lg"></i> Logout</a></li>
      </ul>
    </li>
  </ul>
</header>
<!-- Sidebar menu-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
  <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="https://s3.amazonaws.com/uifaces/faces/twitter/jsa/48.jpg" alt="User Image">
    <div>
      <p class="app-sidebar__user-name">John Doe</p>
      <p class="app-sidebar__user-designation">Frontend Developer</p>
    </div>
  </div>
  <ul class="app-menu">
    <li><a class="app-menu__item active" href="index.html"><i class="app-menu__icon fa fa-user-circle" aria-hidden="true"></i><span class="app-menu__label">个人信息</span></a></li>
    <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-envelope"></i><span class="app-menu__label">邮件管理</span><i class="treeview-indicator fa fa-angle-right"></i></a>
      <ul class="treeview-menu">
        <li><a class="treeview-item" href="bootstrap-components.html"><i class="icon fa fa-circle-o"></i> Bootstrap Elements</a></li>
        <li><a class="treeview-item" href="https://fontawesome.com/v4.7.0/icons/" target="_blank" rel="noopener"><i class="icon fa fa-circle-o"></i> Font Icons</a></li>
        <li><a class="treeview-item" href="ui-cards.html"><i class="icon fa fa-circle-o"></i> Cards</a></li>
        <li><a class="treeview-item" href="widgets.html"><i class="icon fa fa-circle-o"></i> Widgets</a></li>
      </ul>
    </li>
    <!-- 出勤 -->
    <li><a class="app-menu__item" href="${pageContext.request.contextPath}/tosign"><i class="app-menu__icon fa fa-calendar-check-o"></i><span class="app-menu__label">出勤</span></a></li>
    <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-trash-o"></i><span class="app-menu__label">休假管理</span><i class="treeview-indicator fa fa-angle-right"></i></a>
      <ul class="treeview-menu">
        <li><a class="treeview-item" href="form-components.html"><i class="icon fa fa-circle-o"></i> Form Components</a></li>
        <li><a class="treeview-item" href="form-custom.html"><i class="icon fa fa-circle-o"></i> Custom Components</a></li>
        <li><a class="treeview-item" href="form-samples.html"><i class="icon fa fa-circle-o"></i> Form Samples</a></li>
        <li><a class="treeview-item" href="form-notifications.html"><i class="icon fa fa-circle-o"></i> Form Notifications</a></li>
      </ul>
    </li>
    <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-users"></i><span class="app-menu__label">权限管理</span><i class="treeview-indicator fa fa-angle-right"></i></a>
      <ul class="treeview-menu">
        <li><a class="treeview-item" href="table-basic.html"><i class="icon fa fa-circle-o"></i> Basic Tables</a></li>
        <li><a class="treeview-item" href="table-data-table.html"><i class="icon fa fa-circle-o"></i> Data Tables</a></li>
      </ul>
    </li>
  </ul>
</aside>
<!--end -->
     <!--头部start -->
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-calendar-check-o"></i> 日期</h1>
          <p>${sessionUser.username}今天你打卡了吗？</p>
          <p  >本月已签到${count}次</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item"><a href="#">出勤</a></li>
        </ul>
      </div>
      <!-- 头部end-->
      <form id="myform" action="#" method="post">
        <div class="top flex flex-align-end flex-pack-center flex-warp">
          <div class="out-1 flex flex-align-center flex-pack-center" id="signIn">
            <div class="out-2 flex flex-align-center flex-pack-center">
              <div class="signBtn">
                <strong id="sign-txt" onclick="sign()">签到</strong>
                <c:if test="${sign.montent==1}">
                  <span id="sign">已签到,请忽重复签到</span>
                </c:if>
                <span id="sign"></span>
              </div>
            </div>
          </div>
        </div>
      </form>
</main>
    <!-- Essential javascripts for application to work-->

    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="js/plugins/pace.min.js"></script>
    <!-- Page specific javascripts-->
    <script type="text/javascript" src="js/plugins/chart.js"></script>
    <script type="text/javascript">
    </script>
    <!-- Google analytics script-->
    <script type="text/javascript">
    if(document.location.hostname == 'pratikborsadiya.in') {
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
        ga('create', 'UA-72504830-1', 'auto');
        ga('send', 'pageview');
    }
</script>

<script>
    var isSign = false;
    function sign() {
        var time=new Date();
        var year =time.getFullYear();
        var month=time.getMonth()+1;
        var hours=time.getHours();
        var fenzhong=time.getMinutes();
        var starttime=8;
        var endtime=9;
        var startfen=0;
        var endfen=59;
        if((hours==9&&fenzhong==startfen)||hours==8){
            document.getElementById("sign").innerHTML = '今天已签到，请忽重复签到';
            location="${pageContext.request.contextPath}/save";
        }else{
            alert("请在规定的时间内签到8-9");
        }

    }
</script>
  </body>
</html>




<!--





-->