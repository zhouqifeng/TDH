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
    <title>manageAccount</title>
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
                <li><a class="treeview-item" href="sendoutmail"><i class="icon fa fa-circle-o"></i> 已发送</a></li>
                <li><a class="treeview-item" href="spam"><i class="icon fa fa-circle-o"></i> 垃圾箱</a></li>
            </ul>
        </li>
        <li><a class="app-menu__item" href="sign"><i class="app-menu__icon fa fa-calendar-check-o"></i><span class="app-menu__label">日常签到</span></a></li>
        <li><a class="app-menu__item" href="vacation"><i class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">休假管理</span></a></li>
        <li class="treeview"><a class="app-menu__item active" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-users"></i><span class="app-menu__label">权限管理</span><i class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="personalAccount"><i class="icon fa fa-circle-o"></i> 个人账户</a></li>
                <c:if test="${sessionUser.isadmin==1}">
                    <li><a class="treeview-item active" href="manageAccount"><i class="icon fa fa-circle-o"></i> 管理账户</a></li>
                </c:if>
            </ul>
        </li>
    </ul>
</aside>

<c:if test="${sessionUser.isadmin==1}">
<main class="app-content">
    <div class="app-title">
        <div>
            <h1><i class="fa fa-dashboard"></i> Dashboard</h1>
            <p>A free and open source Bootstrap 4 admin template</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item"><a href="logout">注销</a></li>
        </ul>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <h3 class="tile-title">管理账户</h3>
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#modalAdd">增加用户</button>
                <table id="myTable"></table>
            </div>
        </div>
    </div>
</main>

<!-- Modal -->
<div class="modal fade" id="modalAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog  modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">AddUser</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <form class="form-horizontal col-md-offset-3" id="formAdd">
                    <div id="divTips"></div>
                    <div class="form-inline form-group">
                        <label for="username" class="col-sm-2 control-label">用户名:</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="username" name="username">
                        </div>
                        <div><span class="text-danger col-sm-1">*</span></div>
                    </div>
                    <div class="form-inline form-group">
                        <label for="password" class="col-sm-2 control-label">密码:</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="password" name="password">
                        </div>
                        <div><span class="text-danger col-sm-1">*</span></div>
                    </div>
                    <div class="form-inline form-group">
                        <label for="nickname" class="col-sm-2 control-label">昵称:</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="nickname" name="nickname">
                        </div>
                        <div><span class="text-danger col-sm-1">*</span></div>
                    </div>
                    <div class="form-inline form-group">
                        <label for="age" class="col-sm-2 control-label">年龄:</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="age" name="age">
                        </div>
                    </div>
                    <div class="form-inline form-group">
                        <label class="col-sm-2 control-label">性别:</label>
                        <div class="form-inline col-sm-3">
                            <!-- Inline Radios -->
                            <label class="radio inline">
                                <input type="radio" value="0" checked="checked" name="sex">
                                男
                            </label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <label class="radio inline">
                                <input type="radio" value="1" name="sex">
                                女
                            </label>
                        </div>
                    </div>
                    <div class="form-inline form-group">
                        <label for="phone" class="col-sm-2 control-label">手机:</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="phone" name="phone">
                        </div>
                        <div><span class="text-danger col-sm-1">*</span></div>
                    </div>
                    <div class="form-inline form-group">
                        <label class="control-label col-sm-2">地址</label>
                        <div data-toggle="distpicker" class="col-sm-10">
                            <select class="form-inline form-control col-md-4" name="address" id="province"></select>
                            <select class="form-inline form-control col-md-3" name="address" id="city"></select>
                            <select class="form-inline form-control col-md-3" name="address" id="area"></select>
                        </div>
                    </div>
                    <div class="form-inline control-group">
                        <!-- Select Basic -->
                        <label class="control-label col-sm-2">部门</label>
                        <div class="col-sm-3 controls">
                            <select class="form-control" id="did" name="did">
                                <option value="0">--请选择--</option>
                                <option value="1">经理</option>
                                <option value="2">销售部</option>
                                <option value="3">生产部</option>
                                <option value="4">采购部</option>
                                <option value="5">财务部</option>
                                <option value="6">人事部</option>
                                <option value="7">行政部</option>
                            </select>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="btnAdd">Add User</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="modalEdit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog  modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel1">EditDepartment</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <form class="form-horizontal col-md-offset-3" id="formEdit">
                    <input type="hidden" id="id1" name="id1">
                    <div class="form-inline control-group">
                        <!-- Select Basic -->
                        <label class="control-label col-sm-2">部门</label>
                        <div class="col-sm-3 controls">
                            <select class="form-control" id="did1" name="did1">
                                <option value="0">请选择</option>
                                <option value="1">经理</option>
                                <option value="2">销售部</option>
                                <option value="3">生产部</option>
                                <option value="4">采购部</option>
                                <option value="5">财务部</option>
                                <option value="6">人事部</option>
                                <option value="7">行政部</option>
                            </select>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="btnEdit">Edit Department</button>
            </div>
        </div>
    </div>
</div>
</c:if>

<!-- Essential javascripts for application to work-->
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
<script src="js/plugins/distpicker.min.js"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="js/plugins/pace.min.js"></script>
<!-- Page specific javascripts-->
<script type="text/javascript" src="js/plugins/chart.js"></script>
<script type="text/javascript">
    $(function () {
        function AddFunctionAlty1(value,row,index) {
            var i="";
            if(value==1){
                i = "经理";
            }else if(value==2){
                i = "销售部";
            }else if(value==3){
                i = "生产部";
            }else if(value==4){
                i = "采购部";
            }else if(value==5){
                i = "财务部";
            }else if(value==6){
                i = "人事部";
            }else if(value==7){
                i = "行政部";
            }
            return[
                '<input type="text" class="col-sm-4" readonly placeholder="'+i+'">',
                '&nbsp;&nbsp;&nbsp;&nbsp;<button id="Editors" type="button" class="btn btn-primary" >编辑</button>&nbsp;&nbsp;&nbsp;&nbsp;',
            ].join("")
        };
        function AddFunctionAlty2(value,row,index) {
            var i = "";
            if(value==0){
                i = "普通用户";
            }else if(value==1){
                i = "管理员";
            }else if(value==2){
                i = "已离职";
            }
            if(value==2){
                return[
                    '<input type="text" class="col-sm-4" readonly placeholder="'+i+'">'
                ].join("")
            }else{
                return[
                    '<input type="text" class="col-sm-4" readonly placeholder="'+i+'">',
                    '&nbsp;&nbsp;&nbsp;&nbsp;<button id="Deletes"type="button" class="btn btn-danger" >离职</button>&nbsp;&nbsp;&nbsp;&nbsp;'
                ].join("")
            }
        };


        window.operateEvents={
            "click #Editors":function(e,value,row,index){
                $("#did1").val(value);
                $("#id1").val(row.id);
                $("#modalEdit").modal();
            },

            "click #Deletes":function(e,value,row,index){
                if(confirm("确定删除该用户吗？")){
                    var param={"id":row.id};
                    $.ajax({
                        url:"account/"+row.id,
                        data:param,
                        type:"delete",
                        dataType:"text",
                        success:function (rec) {
                            if(rec=="1"){
                                alert("删除成功");
                                location.href="manageAccount";
                            }else{
                                alert("删除失败");
                            }
                        }
                    });

                }
            }
        };

        $("#myTable").bootstrapTable({
            url:"${pageContext.request.contextPath}/showaccount",
            method:"post",
            cache: false,
            search:true,
            searchOnEnterKey:true,
            pagination:true,
            pageNumber:1,
            pageSize:5,
            sidePagination:"server",
            columns:[{field:"username",title:"用户名"},
                {field:"nickname",title:"昵称"},
                {field:"phone",title:"手机"},
                {field:"address",title:"地址"},
                {field:"did",title:"部门",events:operateEvents,formatter:AddFunctionAlty1},
                {field:"isadmin",title:"状态",events:operateEvents,formatter:AddFunctionAlty2}]
        });
        
        $("#btnAdd").click(function () {
            if($("#username").val()==""){
                $("#divTips").empty();
                $("#divTips").html("<span class='text-danger'>用户名不能为空</span>")
                return;
            }
            if($("#password").val()==""){
                $("#divTips").empty();
                $("#divTips").html("<span class='text-danger'>密码不能为空</span>")
                return;
            }
            if($("#nickname").val()==""){
                $("#divTips").empty();
                $("#divTips").html("<span class='text-danger'>昵称不能为空</span>")
                return;
            }
            if($("#phone").val()==""){
                $("#divTips").empty();
                $("#divTips").html("<span class='text-danger'>手机不能为空</span>")
                return;
            }
            if(isPhoneAvailable($("#phone"))){
                $("#divTips").empty();
                $("#divTips").html("<span class='text-danger'>手机号码格式不对</span>")
                return;
            }
            var param = $("#formAdd").serialize();
            $.ajax({
                url:"account",
                data:param,
                type:"post",
                dataType:"text",
                success:function (rec) {
                    if (rec=="1"){
                        alert("增加成功");
                        location.href="manageAccount";
                    } else{
                        alert("增加失败");
                    }
                }
            });
        });

        $("#btnEdit").click(function () {
            var param = {"did":$("#did1").val(),"id":$("#id1").val()};
            $.ajax({
                url:"account",
                data:param,
                type:"put",
                dataType:"text",
                contentType:"application/x-www-form-urlencoded; charset=UTF-8",
                success:function (rec) {
                    if(rec=="1"){
                        alert("修改成功");
                        location.href="manageAccount";
                    }else{
                        alert("修改失败");
                    }
                }
            });
        });


        function isPhoneAvailable(phoneInput) {
            var myreg=/^[1][3,4,5,7,8][0-9]{9}$/;
            if (!myreg.test(phoneInput.val())) {
                return true;
            } else {
                return false;
            }
        }
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