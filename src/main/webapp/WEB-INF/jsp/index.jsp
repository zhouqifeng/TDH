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
    <title>Vali Admin - Free Bootstrap 4 Admin Template</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/css/bootstrapValidator.min.css"
          rel="stylesheet">
    <style>


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
            <h1><i class="fa fa-dashboard"></i> Dashboard</h1>
            <p>A free and open source Bootstrap 4 admin template</p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <div class="tile-body">
                    <table id="newslist"></table>
                </div>
            </div>
        </div>
    </div>
</main>
<%--添加模态框开始--%>
<div class="modal fade" id="saveModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">公告信息</h4>
            </div>
            <div class="modal-body">
                <form action="#" method="post" id="saveform" enctype="multipart/form-data">
                    <table id="savetable" class="table">
                        <tr>
                            <td>公告标题</td>
                        </tr>
                        <tr>
                            <td><div class="form-group"><input type="text" name="title" id="title" class="form-control"/></div></td>
                        </tr>
                        <tr>
                            <td>公告内容</td>
                        </tr>
                        <tr>
                            <td><div class="form-group"><textarea name="content" id="content" class="form-control" rows="5"></textarea></div></td>
                        </tr>
                        <tr>
                            <td>上传图片</td>
                        </tr>
                        <tr>
                            <td>
                                <div class="form-group"><input type="file" id="file" name="file"></div>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary"  onclick="savenews()">
                    确认提交
                </button>
            </div>
        </div>
    </div>
</div>
<%--添加模态框结束--%>
<%--修改模态框开始--%>
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editmyModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="editmyModalLabel">修改信息</h4>
            </div>
            <div class="modal-body">
                <form action="editnews" method="post" id="editform" enctype="multipart/form-data">
                    <table id="edittable" class="table">
                        <tr>
                            <td>公告标题</td>
                        </tr>
                            <input type="hidden" name="uuid" id="uuid" class="form-control"/>
                           <input type="hidden" name="imglinks" id="imglinks" class="form-control"/>
                        <tr>
                            <td><input type="text" name="title" id="edittitle" class="form-control"/></td>
                        </tr>
                        <tr>
                            <td>公告内容</td>
                        </tr>
                        <tr>
                            <td><textarea name="content" id="editcontent" class="form-control" rows="5"></textarea></td>
                        </tr>
                        <tr>
                            <td id="imgtd"></td>
                        </tr>
                        <tr>
                            <td>上传图片</td>
                        </tr>
                        <tr>
                            <td>
                                <input type="file" id="editfile" name="editfile">
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary"  onclick="editnews()">
                    确认提交
                </button>
            </div>
        </div>
    </div>
</div>
<%--修改模态框结束--%>
<!-- Essential javascripts for application to work-->
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/locale/bootstrap-table-zh-CN.min.js"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="js/plugins/pace.min.js"></script>
<!-- Page specific javascripts-->
<script type="text/javascript" src="js/plugins/chart.js"></script>
<!-- 初始化表格-->
<script type="text/javascript">
    $(function(){
        $("#newslist").bootstrapTable({
            url: "newslist",
            method: "post",
            dataType: "json",
            search: true,
            striped: true,
            cache: false,
            pageList: [3, 6, 9],
            pagination: true,
            pageNumber: 1,
            pageSize: 5,
            searchOnEnterKey: true,
            sidePagination: "server",
            showRefresh: true,
            sortable: true,
            sortOrder: "desc",
            sortName: "pushtime",
            columns: [
                {
                    field: 'title',
                    title: '标题'
                }, {
                    field: 'content',
                    title: '内容'
                }, {
                    field: 'imglinks',
                    title: '活动图片',
                    formatter:function(value,row,index){
                        var imgsrc = 'upload/'+value;

                        var img = "<img src='upload/"+value+"' height='150px' width='150px'/>";

                        return img;
                    }
                }, {
                    field: 'pushtime',
                    title: '推送时间',
                    sortable: true,
                    formatter:function(value,row,index){
                        var dateVal = value + "";
                        if (value != null) {
                            var date = new Date(parseInt(dateVal.replace("/Date(", "").replace(")/", ""), 10));
                            var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
                            var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();
                            return date.getFullYear() + "-" + month + "-" + currentDate;
                        }
                    }
                }, {
                    field: 'user.nickname',
                    title: '推送人'

                },{
                    field: 'uuid',
                    title: '操作',
                    align:"center",
                    formatter:operateFormatter,
                    events:operateEvents
                }, {
                    field: 'uid',
                    title: '推送id',
                    visible: false
                }]

        });

        //添加新增按钮

        var $btn=$('<button type="button" id="savebtn" class="btn btn-primary " data-toggle="modal" data-target="#saveModal" >新增</button>');
        $(".fixed-table-toolbar").prepend($btn);
        if('${sessionUser.isadmin}'=='1'){
            $btn[0].style.display="block";
            $("#newslist").bootstrapTable('showColumn','uuid');
        }else{
            $btn[0].style.display="none";
            $("#newslist").bootstrapTable('hideColumn','uuid');
        }
    });

    //添加修改和删除按钮
    function operateFormatter(value,row,index){
        if('${sessionUser.id}'==row.uid){
            return [
                '<button type="button" id="update" class="btn btn-warning"  data-toggle="modal" data-target="#editModal">修改</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;',
                '<button type="button" id="remove" class="btn btn-danger " >删除</button>'
            ].join("");
        }

    }
    //为按钮注册事件
    window.operateEvents = {
       'click #update': function (e, value, row, index) {

            var $userform = $("#editform input");
            $userform[2].value=row.title;

            var $editcontent = $("#editcontent");
            $editcontent[0].value = row.content;

            var $imglinks = $("#imglinks");
            $imglinks[0].value = row.imglinks;

            var $uuid = $("#uuid");
            $uuid[0].value = row.uuid;

            var $imgtd = $("#imgtd");
            var img = "<img src='upload/"+row.imglinks+"' height='150px' width='150px'/>";
            $imgtd.empty();
            $imgtd.prepend(img);
        },
        'click #remove': function (e, value, row, index) {
            if(confirm("确认删除？")){
                $.post("delete/"+value,{'_method': 'DELETE'},function(data){
                    if(data!=null){
                        $('#newslist').bootstrapTable('refresh');
                    }
                });
            }
        }
    };

    //添加公告
    function savenews(){
        var file = document.getElementById("file").files[0];
        var formdata = new FormData();
        var $title = $("#title").val();
        var $content = $("#content").val();
        formdata.append("file", file);
        formdata.append("title", $title);
        formdata.append("content", $content);
        if(file==null){
            alert("图片不能为空");
            return;
        }
        if($content==''){
            alert("内容不能为空");
            return;
        }
        if($title==''){
            alert("标题不能为空");
            return;
        }
        $.ajax({
            url: 'savenews',
            type: 'post',
            data: formdata,
            processData: false,
            contentType: false,
            success: function (arg, a1, a2) {
                //alert("发布成功");
                $("#saveModal").modal("hide");
                $("#saveform")[0].reset();
                $('#newslist').bootstrapTable('refresh', {pageNumber: 1});
            }
        });

    }
    //修改公告
    function editnews(){
        var file = document.getElementById("editfile").files[0];
        var formdata = new FormData();
        var $title = $("#edittitle").val();
        var $content = $("#editcontent").val();
        var $imglinks = $("#imglinks").val();
        var $uuid = $("#uuid").val();
        formdata.append("editfile",file);
        formdata.append("title",$title);
        formdata.append("content",$content);
        formdata.append("imglinks",$imglinks);
        formdata.append("uuid",$uuid);
        if($content==''){
            alert("内容不能为空");
            return;
        }
        if($title==''){
            alert("标题不能为空");
            return;
        }
        $.ajax({
            url:'editnews',
            type:'post',
            contentType : "application/x-www-form-urlencoded; charset=UTF-8",
            data:formdata,
            processData:false,
            contentType: false,
            success:function (arg,a1,a2) {
                $("#editModal").modal("hide");
                $('#newslist').bootstrapTable('refresh');
            }
        });
    }
</script>
</body>
</html>
