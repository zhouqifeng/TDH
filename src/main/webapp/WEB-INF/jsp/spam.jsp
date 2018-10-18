<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
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
    <title>Widgets - Vali Admin</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css"
          href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body class="app sidebar-mini rtl">
<!-- Navbar-->
<header class="app-header"><a class="app-header__logo" href="index.html">Vali</a>
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
    <div class="app-sidebar__user"><img class="app-sidebar__user-avatar"
                                        src="https://s3.amazonaws.com/uifaces/faces/twitter/jsa/48.jpg"
                                        alt="User Image">
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
        <li><a class="app-menu__item active" href="index"><i class="app-menu__icon fa fa-file-text"
                                                             aria-hidden="true"></i><span
                class="app-menu__label">公司通告</span></a></li>
        <li><a class="app-menu__item" href="userInfo"><i class="app-menu__icon fa fa-user-circle"></i><span
                class="app-menu__label">个人信息</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-envelope"></i><span class="app-menu__label">邮件管理</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="writemail"><i class="icon fa fa-circle-o"></i> 写邮件</a></li>
                <li><a class="treeview-item" href="receivemail"><i class="icon fa fa-circle-o"></i> 收件箱</a></li>
                <li><a class="treeview-item" href="https://fontawesome.com/v4.7.0/icons/" target="_blank"
                       rel="noopener"><i class="icon fa fa-circle-o"></i> Font Icons</a></li>
                <li><a class="treeview-item" href="sendoutmail"><i class="icon fa fa-circle-o"></i> 已发送</a></li>
                <li><a class="treeview-item" href="spam"><i class="icon fa fa-circle-o"></i> 垃圾邮件</a></li>
            </ul>
        </li>
        <li><a class="app-menu__item" href="sign"><i class="app-menu__icon fa fa-calendar-check-o"></i><span
                class="app-menu__label">日常签到</span></a></li>
        <li><a class="app-menu__item" href="vacation"><i class="app-menu__icon fa fa-edit"></i><span
                class="app-menu__label">休假管理</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-users"></i><span class="app-menu__label">权限管理</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="personalAccount"><i class="icon fa fa-circle-o"></i> 个人账户</a></li>
                <li><a class="treeview-item" href="manageAccount"><i class="icon fa fa-circle-o"></i> 管理账户</a></li>
            </ul>
        </li>
    </ul>
</aside>
<main class="app-content">
    <div class="app-title">
        <div>
            <h1><i class="fa fa-archive"></i> 垃圾邮箱</h1>
            <p>Widgets to interactively display data</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item">UI</li>
            <li class="breadcrumb-item"><a href="#">Widgets</a></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <div class="tile-body">
                    <table class="spamstable" id="spamstable">

                    </table>
                </div>
            </div>
        </div>
    </div>

</main>
<!-- Essential javascripts for application to work-->
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>

<script>
    $(function () {
        loading();

        $('#spamstable').bootstrapTable('hideColumn', 'id');
        $('#spamstable').bootstrapTable('hideColumn', 'attachment');
    });

    function loading() {


        $("#spamstable").bootstrapTable({

            url: "spams",
            method: "post",
            dataType: "json",//默认是json类型
            striped: true, // 是否显示行间隔色
            clickToSelect: true, // 是否启用点击选中行
            pagination: true,
            pageNumber: 1,
            pageSize: 4,
            sidePagination: "server",
            sortOrder: "asc",
            sortName: "id",
            columns: [
                {
                    field: 'title',
                    align: 'center',
                    title: '邮件标题'

                }, {
                    field: 'content',
                    align: 'center',
                    title: '邮件内容'

                }, {
                    field: 'isRead',
                    align: 'center',
                    title: '是否已读',
                    //sortable:true
                    formatter: function (value, row, index) {
                        if (value == 1) {
                            return '已读';
                        }

                        if (row.isRead == 0) {
                            return '未读';
                        }
                    }
                }, {
                    field: 'createTime',
                    align: 'center',
                    title: '时间',
                    formatter: function (value, row, index) {
                        var time = row.createTime;
                        var date = new Date(time);
                        var year = date.getFullYear();
                        var month = date.getMonth();
                        var day = date.getDay();
                        var str = year + "-" + month + "-" + day;

                        return str;

                    }
                }, {
                    field: 'Button',
                    title: '操作',
                    align: 'center',
                    events: operateEvents,
                    formatter: AddFunctionAlty,
                    /* formatter这个属性属于列参数，意思就是对当前列的数据进行格式化操作，它是一个函数，
                    有三个参数value，row和index。
                    value: 代表当前单元格中的值。
                    row：代表当前行。
                    index: 代表当前行的下标。 */
                }, {
                    field: 'id',
                    align: 'center',
                    title: '邮件id'


                }, {
                    field: 'attachment',
                    align: 'center',
                    title: '附件路径'
                }]
        });
    };

    function AddFunctionAlty(value, row, index) {
        return [
            '<button id="TableReturn" type="button" class="btn btn-default">还原</button>&nbsp&nbsp&nbsp&nbsp',
            '<button id="TableDelete" type="button" class="btn btn-danger">删除</button>']
            .join("")
    }

    window.operateEvents = {
        "click #TableReturn": function (e, value, row, index) {
            alert(row.isDelete);
            if (row.isDelete == 1) {
                var id = row.id;
                alert(id);
                $.post("toreturnmodifyisdelete/" + id, {'_method': 'PUT'});
                $("#spamstable").bootstrapTable('refresh', {url: 'spams'});
            }
            0
        },
        "click #TableDelete": function (e, value, row, index) {
            if (confirm("请三思...")) {
                var id = row.id;
                alert(id);
                $.post("deletemail/" + id, {'_method': 'PUT'}, function (rec) {
                    if (rec == 0) {
                        $("#spamstable").bootstrapTable('refresh', {url: 'spams'});
                    }
                });
            }
        }
    }
</script>


</body>
</html>