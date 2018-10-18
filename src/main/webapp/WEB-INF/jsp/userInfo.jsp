<%--
  Created by IntelliJ IDEA.
  User: john
  Date: 2018/10/16
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta name="description"
          content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
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
    <meta property="og:description"
          content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <title>Vali Admin - Free Bootstrap 4 Admin Template</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!-- bootstraptable -->
    <link rel="stylesheet" type="text/css"
          href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.css">
    <!-- bootstrapValidator css -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/css/bootstrapValidator.min.css"
          rel="stylesheet">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css"
          href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


    <style>

        select.form-control.col-md-3 {
            display: inline-block;
        }

        select.form-control.col-md-4 {
            display: inline-block;
        }

        .has-error .help-block, .has-error .control-label, .has-error .radio, .has-error .checkbox, .has-error .radio-inline, .has-error .checkbox-inline {
            color: #a94442;
        }

        .has-error .form-control {
            border-color: #a94442;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
        }

        .has-success .help-block, .has-success .control-label, .has-success .radio, .has-success .checkbox, .has-success .radio-inline, .has-success .checkbox-inline {
            color: #3c763d;
        }

        .has-success .form-control {
            border-color: #3c763d;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
        }

    </style>

</head>
<body class="app sidebar-mini rtl">
<!-- Navbar-->
<header class="app-header"><a class="app-header__logo" href="index.html">tdh</a>
    <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar"
                                    aria-label="Hide Sidebar"></a>
    <!-- Navbar Right Menu-->
    <ul class="app-nav">
        <li class="app-search">
            <input class="app-search__input" type="search" placeholder="Search">
            <button class="app-search__button"><i class="fa fa-search"></i></button>
        </li>
        <!--Notification Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Show notifications"><i
                class="fa fa-bell-o fa-lg"></i></a>
            <ul class="app-notification dropdown-menu dropdown-menu-right">
                <li class="app-notification__title">You have 4 new notifications.</li>
                <div class="app-notification__content">
                    <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span
                            class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-primary"></i><i
                            class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
                        <div>
                            <p class="app-notification__message">Lisa sent you a mail</p>
                            <p class="app-notification__meta">2 min ago</p>
                        </div>
                    </a></li>
                    <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span
                            class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-danger"></i><i
                            class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
                        <div>
                            <p class="app-notification__message">Mail server not working</p>
                            <p class="app-notification__meta">5 min ago</p>
                        </div>
                    </a></li>
                    <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span
                            class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-success"></i><i
                            class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
                        <div>
                            <p class="app-notification__message">Transaction complete</p>
                            <p class="app-notification__meta">2 days ago</p>
                        </div>
                    </a></li>
                    <div class="app-notification__content">
                        <li><a class="app-notification__item" href="javascript:;"><span
                                class="app-notification__icon"><span class="fa-stack fa-lg"><i
                                class="fa fa-circle fa-stack-2x text-primary"></i><i
                                class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
                            <div>
                                <p class="app-notification__message">Lisa sent you a mail</p>
                                <p class="app-notification__meta">2 min ago</p>
                            </div>
                        </a></li>
                        <li><a class="app-notification__item" href="javascript:;"><span
                                class="app-notification__icon"><span class="fa-stack fa-lg"><i
                                class="fa fa-circle fa-stack-2x text-danger"></i><i
                                class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
                            <div>
                                <p class="app-notification__message">Mail server not working</p>
                                <p class="app-notification__meta">5 min ago</p>
                            </div>
                        </a></li>
                        <li><a class="app-notification__item" href="javascript:;"><span
                                class="app-notification__icon"><span class="fa-stack fa-lg"><i
                                class="fa fa-circle fa-stack-2x text-success"></i><i
                                class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
                            <div>
                                <p class="app-notification__message">Transaction complete</p>
                                <p class="app-notification__meta">2 days ago</p>
                            </div>
                        </a></li>
                    </div>
                </div>
                <li class="app-notification__footer"><a href="#">See all notifications.</a></li>
            </ul>
        </li>
        <!-- User Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i
                class="fa fa-user fa-lg"></i></a>
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
        <li><a class="app-menu__item active" href="index.html"><i class="app-menu__icon fa fa-file-text" aria-hidden="true"></i><span class="app-menu__label">公司通告</span></a></li>
        <li><a class="app-menu__item" href="/tdh/userInfo"><i class="app-menu__icon fa fa-user-circle"></i><span class="app-menu__label">个人信息</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-envelope"></i><span class="app-menu__label">邮件管理</span><i class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="bootstrap-components.html"><i class="icon fa fa-circle-o"></i> Bootstrap Elements</a></li>
                <li><a class="treeview-item" href="https://fontawesome.com/v4.7.0/icons/" target="_blank" rel="noopener"><i class="icon fa fa-circle-o"></i> Font Icons</a></li>
                <li><a class="treeview-item" href="ui-cards.html"><i class="icon fa fa-circle-o"></i> Cards</a></li>
                <li><a class="treeview-item" href="widgets.html"><i class="icon fa fa-circle-o"></i> Widgets</a></li>
            </ul>
        </li>
        <li><a class="app-menu__item" href="/tdh/tosign"><i class="app-menu__icon fa fa-calendar-check-o"></i><span class="app-menu__label">日常签到</span></a></li>
        <li><a class="app-menu__item" href="/tdh/vacationlist"><i class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">休假管理</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-users"></i><span class="app-menu__label">权限管理</span><i class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="table-basic.html"><i class="icon fa fa-circle-o"></i> Basic Tables</a></li>
                <li><a class="treeview-item" href="table-data-table.html"><i class="icon fa fa-circle-o"></i> Data Tables</a></li>
            </ul>
        </li>
    </ul>
</aside>
<main class="app-content">
    <div class="app-title">
        <div>
            <h1><i class="fa fa-user-circle"></i> 个人信息</h1>
            <p>welcome to tdh-userInformationPage</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item"><a href="#">注销</a></li>
        </ul>
    </div>
    <div class="col-md-12">
        <div class="tile">
            <form class="form-horizontal">
                <div class="tile-body" style="margin: auto">
                    <h2 class="mb-3 line-head" id="buttons" align="right">
                        <button class="btn btn-primary" type="button" onclick="editUserInfo()">
                            <i class="fa fa-lg fa-edit"></i>编辑信息
                        </button>
                    </h2>
                    <div class="form-group row">
                        <label class="control-label col-md-1">昵称</label>
                        <div class="col-md-8">
                            <input class="form-control col-md-8" type="text" name="nickname"
                                   value="${modelUser.nickname}" readonly>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="control-label col-md-1">年龄</label>
                        <div class="col-md-8">
                            <input class="form-control col-md-8" type="text" name="age" value="${modelUser.age}"
                                   readonly>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="control-label col-md-1">性别</label>
                        <div class="col-md-8">
                            <c:if test="${modelUser.sex==1}">
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="sex" checked>女
                                    </label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="sex" disabled>男
                                    </label>
                                </div>
                            </c:if>
                            <c:if test="${modelUser.sex==0}">
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="sex" disabled>女
                                    </label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="sex" checked>男
                                    </label>
                                </div>
                            </c:if>

                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="control-label col-md-1">手机</label>
                        <div class="col-md-8">
                            <input class="form-control col-md-8" type="text" name="phone" value="${modelUser.phone}"
                                   readonly>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="control-label col-md-1">地址</label>
                        <div class="col-md-8">
                            <input class="form-control col-md-8" type="text" name="address"
                                   value="${modelUser.address.replace(',',' ')}"
                                   readonly>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="control-label col-md-1">部门</label>
                        <div class="col-md-8">
                            <input class="form-control col-md-8" type="text" name="did" value="${modelDepartment.dname}"
                                   readonly>
                        </div>
                    </div>

                </div>
            </form>
        </div>
    </div>

    <!-- 修改模态框 -->
    <div class="modal fade" id="modifyModal" tabindex="-1"
         role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header" style="background-color: 009688">
                    <h4 class="modal-title " id="myModalLabel" align="justify" style="color: white">用户信息修改</h4>
                </div>
                <div class="modal-body">
                    <form id="form_data" onsubmit="return" method="post" action="modifyUserInfo">
                        <div class="form-group has-feedback ">
                            <label class="control-label">昵称</label>
                            <input class="form-control" type="text" name="nickname"
                                   placeholder="${modelUser.nickname} ">
                        </div>
                        <div class="form-group">
                            <label class="control-label">年龄</label>
                            <input class="form-control" type="text" name="age" placeholder="${modelUser.age}">
                        </div>
                        <div class="form-group">
                            <label class="control-label">性别</label>
                            <c:if test="${modelUser.sex==1}">
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="sex" value="1" checked>女
                                    </label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="sex" value="0">男
                                    </label>
                                </div>
                            </c:if>
                            <c:if test="${modelUser.sex==0}">
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="sex" value="1">女
                                    </label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="sex" value="0" checked>男
                                    </label>
                                </div>
                            </c:if>
                        </div>
                        <div class="form-group">
                            <label class="control-label">手机</label>
                            <input class="form-control" type="text" name="phone" placeholder="${modelUser.phone}">
                        </div>
                        <div class="form-group">
                            <label class="control-label">地址</label>
                            <div class="disSelect" data-toggle="distpicker">
                                <select class="form-control col-md-3" name="address" id="province"></select>
                                <select class="form-control col-md-4" name="address" id="city"></select>
                                <select class="form-control col-md-4" name="address" id="area"></select>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default"
                                    data-dismiss="modal">返回
                            </button>
                            <button type="button" class="btn btn-primary" id="submitBtn" onclick="submitModify()">确认提交
                            </button>
                        </div>
                    </form>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal -->
    </div>

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
<!-- bootstrap table plugin -->
<script type="text/javascript"
        src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
<!-- bootstrapValidator js -->
<script type="text/javascript" src="js/plugins/bootstrapValidator.min.js"></script>
<!-- 三级联动插件 -->
<script type="text/javascript" src="js/plugins/distpicker.min.js"></script>

<script type="text/javascript">

    //修改用户信息
    function editUserInfo() {
        var address = "${modelUser.address}".split(",");
        $("#form_data").data('bootstrapValidator').resetForm();
        $('#modifyModal').modal('show');
        $('#province').attr('data-province', address[0]);
        $('#city').attr('data-city', address[1]);
        $('#area').attr('data-district', address[2]);
        $("#disSelect").distpicker();

    }

    $(function () {
        $('#form_data').bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {//根据验证结果显示的各种图标
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                nickname: {
                    validators: {
                        notEmpty: {//检测非空,radio也可用
                            message: '*请输入您的昵称'
                        }
                    }
                },
                age: {
                    feedbackIcons: true,
                    validators: {
                        notEmpty: {//检测非空,radio也可用
                            message: '*请输入您的年龄    '
                        },
                        digits: {
                            message: '*该值只能包含数字    '
                        }
                    }
                },
                phone: {
                    feedbackIcons: true,
                    validators: {
                        notEmpty: {//检测非空,radio也可用
                            message: '*请输入您的手机号    '
                        },
                        stringLength: {
                            min: 11,
                            max: 11,
                            message: '*请输入11位手机号码    '
                        },
                        regexp: {
                            regexp: /^1[3|5|8]{1}[0-9]{9}$/,
                            message: '*请输入正确的手机号码    '
                        }
                    }
                }
            }
        })
        ;
    });

    //确认提交用户修改信息
    function submitModify() {
        $('#form_data').data('bootstrapValidator').validate();
        if (!$('#form_data').data('bootstrapValidator').isValid()) {
            return;
        }
        $.ajax({
            url: "modifyUserInfo",
            type: "post",
            data: $("#form_data").serialize(),
            dataType: 'text',
            contentType: "application/x-www-form-urlencoded; charset=utf-8",
            success: function (rel) {
                //重新加载数据
                $('#modifyModal').modal('hide');
                location.reload();
                alert(rel);
            }
        });
    }

</script>
<!-- Google analytics script-->
<script type="text/javascript">
    if (document.location.hostname == 'pratikborsadiya.in') {
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-72504830-1', 'auto');
        ga('send', 'pageview');
    }
</script>
</body>
</html>
