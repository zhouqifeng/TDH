<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>

<html lang="en">
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
    <title>Basic Tables - Vali Admin</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- bootstrap-table-->
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.css">
    <!-- 时间控件css-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css">

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
        <li><a class="app-menu__item active" href="index"><i class="app-menu__icon fa fa-file-text" aria-hidden="true"></i><span class="app-menu__label">公司通告</span></a></li>
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
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-users"></i><span class="app-menu__label">权限管理</span><i class="treeview-indicator fa fa-angle-right"></i></a>
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
            <h1><i class="fa fa-th-list"></i>休假列表</h1>
            <p>vacation tables</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item active"><button type="button" class="btn btn-outline-success" data-toggle="modal" data-target="#myModal">申请休假</button></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>申请人</th>
                            <th>开始时间</th>
                            <th>结束时间</th>
                            <th>天数</th>
                            <th>审批状态</th>
                            <th>原因</th>
                            <c:if test="${sessionUser.isadmin == 1}">
                                <th>操作</th>
                            </c:if>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${userVacationList}" var="userVacation">
                            <tr>
                                <c:if test="${sessionUser.isadmin==0}">
                                    <td>${sessionUser.username}</td>
                                </c:if>
                                <c:if test="${sessionUser.isadmin==1}">
                                    <td>${userVacation.username}</td>
                                </c:if>
                                <td>${userVacation.startTime}</td>
                                <td>${userVacation.endTime}</td>
                                <td>${userVacation.days}</td>
                                <c:if test="${userVacation.state==0}">
                                    <td><span class="badge badge-secondary">未审核</span></td>
                                </c:if>
                                <c:if test="${userVacation.state==1}">
                                    <td><span class="badge badge-success">已审核</span></td>
                                </c:if>
                                <c:if test="${userVacation.state==2}">
                                    <td><span class="badge badge-danger">已拒绝</span></td>
                                </c:if>
                                <td>${userVacation.reason}</td>
                                <c:if test="${sessionUser.isadmin==1}">
                                    <c:if test="${userVacation.state==0}">
                                        <td><button type="button" class="btn btn-primary btn-sm" onclick="auditVacation('${userVacation.id}')">审核</button></td>
                                    </c:if>
                                    <c:if test="${userVacation.state!=0}">
                                        <td><button type="button" class="btn btn-secondary btn-sm" disabled>审核</button></td>
                                    </c:if>
                                </c:if>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</main>
<form method="post" action="#" class="form-horizontal" role="form" id="myAddForm" onsubmit="return ">
    <div class="modal fade" id="myModal"  tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <!--  定义模态框，过渡效果为淡入，id为myModal,tabindex=-1可以禁用使用tab切换，aria-labelledby用于引用模态框的标题，aria-hidden=true保持模态框在触发前窗口不可见 -->
        <div class="modal-dialog">
            <!--  显示模态框对话框模型（若不写下一个div则没有颜色）  -->
            <div class="modal-content">
                <!--  显示模态框白色背景，所有内容都写在这个div里面  -->
                <div class="btn-info modal-header">
                    <!--  模态框标题  -->
                    <!--  标题内容  -->
                    <h4 class="modal-title">休假新增</h4>
                    <!--  关闭按钮  -->
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
                </div>

                <div class="modal-body">
                    <div class="form-group">
                        <label for="username" class="col-sm-3 control-label">姓名</label>
                        <div class="col-sm-9">
                            <input type="text" id="username" name="username" class="form-control" readonly="readonly" value="${sessionUser.username}"/>
                            <input type="hidden" name="state" value="0" /><input type="hidden" name="applyId" value="${sessionUser.id}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="startTime" class="col-sm-3 control-label">起始日期</label>
                        <div class="col-sm-9">
                            <input type="text" id="startTime" name="startTime" class="form-control well" placeholder="请选择起始日期"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="endTime" class="col-sm-3 control-label">结束日期</label>
                        <div class="col-sm-9">
                            <input type="text" id="endTime" name="endTime" class="form-control well" placeholder="请选择结束日期"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="days" class="col-sm-3 control-label">请假天数</label>
                        <div class="col-sm-9">
                            <input type="text" id="days" name="days" class="form-control well" placeholder="请输入天数"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="reason" class="col-sm-3 control-label">请假原因</label>
                        <div class="col-sm-9">
                            <input type="text" id="reason" name="reason" class="form-control well" placeholder="原因"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="approveId" class="col-sm-3 control-label">审批人</label>
                        <div class="col-sm-9">
                            <!-- <input type="text" id="zqf6" name="money" class="form-control well" placeholder="请输入余额"/> -->
                            <select class="form-control" id="approveId" name="approveId">
                                <c:forEach items="${adminlist}" var="admin">
                                    <option value='${admin.id}'>${admin.username}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <!-- 模态框底部样式，一般是提交或者确定按钮 -->
                    <button type="button" class="btn btn-info" onclick="addVacation()">确定</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                </div>
            </div><!-- /.modal-content -->
        </div>
    </div> <!-- /.modal -->
</form>
<!-- Essential javascripts for application to work-->
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>

<!-- The javascript plugin to display page loading on top-->
<script src="js/plugins/pace.min.js"></script>

<%--时间控件js--%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment-with-locales.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
<!-- Page specific javascripts-->
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

    $(function () {
        //初始化新增模态框日期控件
        var picker1 = $('#startTime').datetimepicker({
            format: 'YYYY-MM-DD',
            locale: moment.locale('zh-cn')
        });

        var picker2 = $('#endTime').datetimepicker({
            format: 'YYYY-MM-DD',
            locale: moment.locale('zh-cn')
        });

        //动态设置最小值
        picker1.on('dp.change', function (e) {
            picker2.data('DateTimePicker').minDate(e.date);
        });

        //动态设置最大值
        picker2.on('dp.change', function (e) {
            picker1.data('DateTimePicker').maxDate(e.date);
        });
    })



    $("#days").click(function count() {

        var sDate1=$("#startTime").val();
        var sDate2=$("#endTime").val();

        if(sDate1 != "" & sDate2 != ""){

            sDate1 = new Date(sDate1);//转换为Date对象
            sDate2 = new Date(sDate2);//转换为Date对象

            var days  =  Math.abs((sDate1.getTime()-sDate2.getTime())/(1000 * 60 * 60 * 24)) + 1; //把相差的毫秒数转换为天数

            $("#days").val(days);
        }
    });


    function auditVacation(id){
        var r = confirm("是否批准休假?");
        if(r == true){
            $.ajax({
                url: "approvalvacation",
                data: JSON.stringify({"id":id,"state":"1"}),//传到服务器的参数
                type: "post",//请求的方式post|get
                dataType:'text',
                contentType: 'application/json; charset=UTF-8',//告诉浏览器传的是json
                success: function (rec) {//交互成功
                    alert("已批准");
                    location.href="vacationlist";
                }
            });
        }else{
            $.ajax({
                url: "approvalvacation",
                data: JSON.stringify({"id":id,"state":"2"}),//传到服务器的参数
                type: "post",//请求的方式post|get
                dataType:'text',
                contentType: 'application/json; charset=UTF-8',//告诉浏览器传的是json
                success: function (rec) {//交互成功
                    alert("已驳回");
                    location.href="vacationlist";
                }
            });
        }
    }

    function addVacation() {

        if($("#startTime").val() == ""){
            alert("请选择起始时间");
            return;
        }

        if($("#endTime").val() == ""){
            alert("请选择结束时间");
            return;
        }

        if($("#days").val() == ""){
            alert("请输入请假天数");
            return;
        }

        var param = $("#myAddForm").serialize();

        $.ajax({
            url: "addvacation",
            type: "post",
            data: param,
            dataType:'text',
            success: function (data) {
                alert("添加成功!");
                $('#myModal').modal('hide');
                location.href="vacationlist";
            }
        });

    }

</script>
</body>
</html>
