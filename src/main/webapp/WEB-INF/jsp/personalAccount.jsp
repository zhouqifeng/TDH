<%--
  Created by IntelliJ IDEA.
  User: aaron
  Date: 2018/10/15
  Time: 19:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta name="description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
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
    <title>personalAccount</title>
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
<header class="app-header"><a class="app-header__logo" href="index">tdh</a>
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
                <li><a class="dropdown-item" href="logout"><i class="fa fa-sign-out fa-lg"></i> Logout</a></li>
            </ul>
        </li>
    </ul>
</header>
<!-- Sidebar menu-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
    <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="https://s3.amazonaws.com/uifaces/faces/twitter/jsa/48.jpg" alt="User Image">
        <div>
            <p class="app-sidebar__user-name">${sessionUser.nickname}</p>
            <c:if test="${sessionUser.isadmin==0}">
                <p class="app-sidebar__user-designation">普通用户</p>
            </c:if>
            <c:if test="${sessionUser.isadmin==1}">
                <p class="app-sidebar__user-designation">管理员</p>
            </c:if>
        </div>
    </div>
    <ul class="app-menu">
        <li><a class="app-menu__item" href="index"><i class="app-menu__icon fa fa-file-text" aria-hidden="true"></i><span class="app-menu__label">公司通告</span></a></li>
        <li><a class="app-menu__item" href="userInfo"><i class="app-menu__icon fa fa-user-circle"></i><span class="app-menu__label">个人信息</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-envelope"></i><span class="app-menu__label">邮件管理</span><i class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="writemail"><i class="icon fa fa-circle-o"></i> 写邮件</a></li>
                <li><a class="treeview-item" href="receivemail"><i class="icon fa fa-circle-o"></i> 收件箱</a></li>
                <li><a class="treeview-item" href="spam"><i class="icon fa fa-circle-o"></i> 垃圾箱</a></li>
            </ul>
        </li>
        <li><a class="app-menu__item" href="tosign"><i class="app-menu__icon fa fa-calendar-check-o"></i><span class="app-menu__label">日常签到</span></a></li>
        <li><a class="app-menu__item" href="vacationlist"><i class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">休假管理</span></a></li>
        <li class="treeview"><a class="app-menu__item active" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-users"></i><span class="app-menu__label">权限管理</span><i class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="personalAccount"><i class="icon fa fa-circle-o"></i> 个人账户</a></li>
                <c:if test="${sessionUser.isadmin==1}">
                    <li><a class="treeview-item" href="manageAccount"><i class="icon fa fa-circle-o"></i> 管理账户</a></li>
                </c:if>
            </ul>
        </li>
    </ul>
</aside>
<main class="app-content">
    <div class="app-title">
        <div>
            <h1><i class="fa fa-dashboard"></i> Dashboard</h1>
            <p>A free and open source Bootstrap 4 admin template</p>
        </div>
    </div>


    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <h3 class="tile-title">个人账户</h3>
                <form class="form-horizontal col-md-offset-3" id="myForm">
                    <input type="hidden" name="id" value="${sessionUser.id}">
                    <div class="form-group">
                        <label for="username" class="col-sm-2 control-label">用户名:</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" readonly placeholder="${sessionUser.username}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-sm-2 control-label">密码:</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" readonly placeholder="${sessionUser.password}">
                        </div>
                    </div>
                </form>
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">编辑</button>
            </div>
        </div>
    </div>
</main>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">Edit</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <form class="form-horizontal col-md-offset-3" id="formEdit">
                    <input type="hidden" name="id" value="${sessionUser.id}">
                    <div id="divTips"></div>
                    <div class="form-group">
                        <label for="username" class="col-sm-2 control-label">用户名:</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="username" name="username" value="${sessionUser.username}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-sm-2 control-label">密码:</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="password" name="password" value="${sessionUser.password}">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="btnEdit">Save changes</button>
            </div>
        </div>
    </div>
</div>

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
    $(function () {
        $("#username").blur(function () {
            if($("#username").val()=="${sessionUser.username}"){
                return;
            }
            if($("#username").val()==""){
                $("#divTips").empty();
                $("#divTips").html("<span class='text-danger'>用户名不能为空</span>");
                return;
            }
            var param = "username="+$("#username").val();
            $.post("personalAccount",
                  param,
                  function (rec) {
                      if(rec=="1"){
                          $("#divTips").empty();
                          $("#divTips").html("<span class='text-success'>用户名可用√</span>");
                      }else{
                          $("#divTips").empty();
                          $("#divTips").html("<span class='text-danger'>用户名已存在×</span>");
                      }
                  });
        });
        $("#btnEdit").click(function () {
            if($("#username").val()==""){
                $("#divTips").empty();
                $("#divTips").html("<span class='text-danger'>用户名不能为空</span>");
                return;
            }
            if($("#password").val()==""){
                $("#divTips").empty();
                $("#divTips").html("<span class='text-danger'>密码不能为空</span>");
                return;
            }
            var param = $("#formEdit").serialize();
            alert(param);
            $.ajax({
                url:"personalAccount",
                data:param,
                type:"put",
                dataType:"text",
                contentType:"application/x-www-form-urlencoded; charset=UTF-8",
                success:function (rec) {
                    if(rec=="1"){
                        alert("更改成功");
                        location.href="personalAccount";
                    }else{
                        $("#divTips").empty();
                        $("#divTips").html("<span class='text-danger'>更改失败</span>");
                    }
                }
            });
        });
    });
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
</body>
</html>