<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();//
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <title>用户信息_cici资讯网</title>

    <script src="js/jquery-2.js" type="text/javascript"></script>
    <script src="js/prism.js" type="text/javascript"></script>

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script src="js/md5.js"></script>
    <script src="js/cropbox.js"></script>

    <style type="text/css">
        .addwidth {
            min-width: 100px;
        }
    </style>

    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/prism.css">
    <link rel="stylesheet" id="_bootstrap-css" href="css/bootstrap.css" type="text/css" media="all">
    <link rel="stylesheet" id="_fontawesome-css" href="css/font-awesome.css" type="text/css" media="all">
    <link rel="stylesheet" id="_main-css" href="css/main.css" type="text/css" media="all">
    <link rel="stylesheet" type="text/css" href="css/style1.css"/>

    <!-- <link rel="shortcut icon" href="http://www.moejam.com/zb_users/theme/ydnew/style/diy/favicon.ico"> -->
    <!--[if lt IE 9]><script src="js/html5.min.js"></script><![endif]-->

    <script src="js/share.js"></script>
    <link rel="stylesheet" href="css/share_style1_24.css">

</head>

<body class="post-template-default single single-post postid-25835 single-format-standard comment-open site-layout-2">
<header class="header">
    <div class="container">
        <h1 class="logo">
            <a href="<%=basePath%>" title="cici资讯网">
                <img src="pic/logo.png">
            </a>
        </h1>
        <ul class="site-nav site-navbar">
            <li>
                <a href="<%=basePath%>">首页</a>
            </li>
            <li id="navbar-category-1"><a href="/infopost?type=2">资讯</a></li>
            <li id="navbar-category-2"><a href="/infopost?type=0">博客</a></li>
            <li id="navbar-category-3"><a href="/infopost?type=1">资源</a></li>
            <li id="navbar-category-4"><a href="#">其他</a></li>
        </ul>
        <span class="navto-search">
                <a href="javascript:;" class="search-show active">
                    <i class="fa fa-search"></i>
                </a>
            </span>
        <c:choose>
            <c:when test="${empty user}">
                    <script>
                        window.location.href="/index";
                    </script>
            </c:when>

            <c:otherwise>
                <span class="usercc" id="userinfo">
                    <div class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="${user.pic}" class="img-circle" id="user-photo" width="32px" height="32px"/>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="/usermsg">用户信息</a></li>
                            <li><a href="/yourblog?uid=${user.ID}&type=0">我的博客</a></li>
                            <li><a href="/yourblog?uid=${user.ID}&type=2">我的资讯</a></li>
                            <li><a href="/write">发布文章</a></li>
                            <li><a href="/logout?page=index">退出登录</a></li>
                        </ul>
                    </div>
                </span>
            </c:otherwise>
        </c:choose>
        <i class="fa fa-bars m-icon-nav"></i>
    </div>
</header>
<div class="site-search">
    <div class="container">
        <form method="get" class="site-search-form">
            <input class="search-input" name="q" placeholder="输入关键字" type="text">
            <button class="search-btn" type="button">
                <i class="fa fa-search"></i>
            </button>
        </form>
    </div>
</div>
<script>
    $(".navto-search").click(function () {
        $(".navto-search i").toggleClass("fa-remove");
        $("body").toggleClass("search-on");
    });
    $(".m-icon-nav").click(function () {
        $("body").toggleClass("m-nav-show");
        $(".site-navbar").slideToggle(100);
    });
</script>

<script src="wangEditor-3.1.1/release/wangEditor.js"></script>
<section class="container-single">

    <ul id="myTab" class="nav nav-tabs">
        <li class="active">
            <a href="#info" data-toggle="tab">基本资料</a>
        </li>
        <li><a href="#photo" data-toggle="tab">头像上传</a></li>

        <li><a href="#upd" data-toggle="tab">修改密码</a></li>

    </ul>
    <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade in active" id="info">
            <div class="container-fluid">
                <form id="form1" action="" method="post" enctype="multipart/form-data">
                    <div class="row form-group">
                        <input name="ID" class="form-control" readonly="true" style="display: none;"
                               value="${user.ID}" aria-describedby="sizing-addon1"/>
                        <div class="panel panel-info">
                            <div class="panel-heading" align="center">
                                <label style="text-align: center;font-size: 18px;">个人资料</label>
                            </div>
                            <div class="panel-body">
                                <div class="col-sm-12">
                                    <ul class="list-group">
                                        <li class="list-group-item">
                                            <div class="input-group">
                                                <span class="input-group-addon addwidth">用户ID： </span>
                                                <input id="myid" name="userLogin" class="form-control" readonly="true"
                                                       value="${user.userLogin}" aria-describedby="sizing-addon1"/>

                                            </div>
                                        </li>
                                        <li class="list-group-item">
                                            <div class="input-group">
                                                <span class="input-group-addon addwidth">昵称： </span>
                                                <input id="myname" name="userNicename" type="text" class="form-control"
                                                       placeholder="Username" value="${user.userNicename}"
                                                       aria-describedby="sizing-addon1">
                                            </div>
                                        </li>
                                        <li class="list-group-item">
                                            <div class="input-group">
                                                <span class="input-group-addon addwidth">email： </span>
                                                <input id="myemail" name="userEmail" type="text" class="form-control"
                                                       placeholder="Email" value="${user.userEmail}"
                                                       aria-describedby="sizing-addon1">
                                            </div>
                                        </li>

                                        <li class="list-group-item">
                                            <div class="input-group">
                                                <span class="input-group-addon addwidth">个性签名： </span>
                                                <input id="description" name="signature" type="text" class="form-control"
                                                       placeholder="info" value="${user.signature}"
                                                       aria-describedby="sizing-addon1">
                                            </div>
                                        </li>

                                        <li class="list-group-item">
                                            <input type="button" onclick="submitbtn()" class="btn btn-success center-block"
                                                   value="提交修改"/>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <div class="tab-pane fade" id="photo">
            <div class="container1">
                <div class="imageBox">
                    <div class="thumbBox">
                    </div>
                    <div class="spinner" style="display: none">
                        Loading...</div>
                </div>
                <div class="action">
                    <!-- <input type="file" id="file" style=" width: 200px">-->
                    <div class="new-contentarea tc">
                        <a href="javascript:void(0)" class="upload-img">
                            <label for="upload-file">
                                选择图像</label>
                        </a>
                        <input type="file" class="" name="upload-file" id="upload-file" />
                    </div>
                    <input type="button" id="btnSubmit" class="Btnsty_peyton" value="上传" />
                    <input type="button" id="btnCrop" class="Btnsty_peyton" value="预览" />
                    <input type="button" id="btnZoomIn" class="Btnsty_peyton" value="+" />
                    <input type="button" id="btnZoomOut" class="Btnsty_peyton" value="-" />
                </div>
                <div class="cropped">
                </div>
            </div>
            <div style="text-align: center; margin: 50px 0; font: normal 14px/24px 'MicroSoft YaHei';">
            </div>
            <div id="circularG" style=" display:none">
                <div id="circularG_1" class="circularG">
                </div>
                <div id="circularG_2" class="circularG">
                </div>
                <div id="circularG_3" class="circularG">
                </div>
                <div id="circularG_4" class="circularG">
                </div>
                <div id="circularG_5" class="circularG">
                </div>
                <div id="circularG_6" class="circularG">
                </div>
                <div id="circularG_7" class="circularG">
                </div>
                <div id="circularG_8" class="circularG">
                </div>
            </div>

            <script type="text/javascript">
                $(window).load(function () {
                    $(".imageBox").mouseover(function () {
                        document.documentElement&&(document.documentElement.style.overflow='hidden');
                    });

                    $(".imageBox").mouseout(function () {
                        document.documentElement&&(document.documentElement.style.overflow='auto');
                    });

                    var options =
                        {
                            thumbBox: '.thumbBox',
                            spinner: '.spinner',
                            imgSrc: $('#user-photo').attr('src')
                        }
                    var cropper = $('.imageBox').cropbox(options);
                    $('#upload-file').on('change', function () {
                        var reader = new FileReader();
                        reader.onload = function (e) {
                            options.imgSrc = e.target.result;
                            cropper = $('.imageBox').cropbox(options);
                        }
                        reader.readAsDataURL(this.files[0]);
                        this.files = [];
                    })
                    $('#btnCrop').on('click', function () {
                        var img = cropper.getDataURL();
                        $('.cropped').html('');
                        $('.cropped').append('<img src="' + img + '" align="absmiddle" style="width:64px;margin-top:4px;border-radius:64px;box-shadow:0px 0px 12px #7E7E7E;" ><p>64px*64px</p>');
                        $('.cropped').append('<img src="' + img + '" align="absmiddle" style="width:128px;margin-top:4px;border-radius:128px;box-shadow:0px 0px 12px #7E7E7E;"><p>128px*128px</p>');
                        $('.cropped').append('<img src="' + img + '" align="absmiddle" style="width:180px;margin-top:4px;border-radius:180px;box-shadow:0px 0px 12px #7E7E7E;"><p>180px*180px</p>');

                    })
                    $('#btnZoomIn').on('click', function () {
                        cropper.zoomIn();
                    })
                    $('#btnZoomOut').on('click', function () {
                        cropper.zoomOut();
                    })
                    $('#btnSubmit').on('click', function () {
                        $('#circularG').show();
                        var img = cropper.getDataURL().replace('data:image/png;base64,', '');
                        var url = '/uploadPhoto';
                        $.ajax(url, {
                            type: 'post',
                            data: {'data':img},
                            success: function (data) {
                                alert(data["msg"]);
                                $('#circularG').hide();
                                window.location.reload();
                            },
                            error: function (XMLHttpRequest, textStatus, errorThrown) {
                            }
                        });
                    })
                });
            </script>

        </div>

        <div class="tab-pane fade" id="upd">
            <div class="panel panel-info">
                <div class="container" id="sendpasswd">
                    <div class="panel-heading active" align="center">
                        <label class="text-center" style="font-size: 18px;">修改密码</label>
                    </div>
                    <div class="col-sm-2 center-block"></div>
                    <div class="col-sm-8">
                        <form >
                            <div class="form-group has-feedback">
                                <label>原密码</label>
                                <div class="input-group">
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-lock"></span>
                            </span>

                                    <input class="form-control" type="password" id="oldpasswd">
                                </div>
                                <span style="color:red;" class="tips"></span>
                                <span style="display: none" class="glyphicon glyphicon-remove form-control-feedback"></span>
                                <span style="display: none" class="glyphicon glyphicon-ok form-control-feedback"></span>
                            </div>
                            <div class="form-group has-feedback">
                                <label>新密码</label>
                                <div class="input-group">
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-lock"></span>
                            </span>

                                    <input class="form-control" type="password" id="newpasswd">
                                </div>
                                <span style="color:red;" class="tips"></span>
                                <span style="display: none" class="glyphicon glyphicon-remove form-control-feedback"></span>
                                <span style="display: none" class="glyphicon glyphicon-ok form-control-feedback"></span>
                            </div>
                            <div class="form-group has-feedback">
                                <label for="newpasswd2">确认密码</label>
                                <div class="input-group">
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-lock"></span>
                                </span>
                                    <input class="form-control" type="password" id="newpasswd2"/>
                                </div>
                                <span style="color:red;" class="tips"></span>
                                <span style="display: none" class="glyphicon glyphicon-remove form-control-feedback"></span>
                                <span style="display: none" class="glyphicon glyphicon-ok form-control-feedback"></span>
                            </div>

                            <div class="form-group text-center">
                                <button class="btn btn-success" id="subpass" type="button">确认提交</button>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <script>
        var passwdcheck= [false, false, false];
        $(function () {
            initFileInput("photo_upload");

            $("#oldpasswd").blur(function () {
                var passwd = $("#oldpasswd").val();
                $.ajax({
                    method:"post",
                    data: {"Login":$("#myid").val(), "oldPass":$.md5($.md5(passwd))},
                    url:"/checkPass",
                    success: function (result) {
                        if(result["msg"] != "ok"){
                            ShowFail($("#oldpasswd"), 0, "密码错误");
                            $("#oldpasswd").focus();
                            flag = false;

                        }else{
                            ShowSuccess($("#oldpasswd"), 0);
                        }
                    }
                });
            });

            $("#newpasswd").blur(function () {
                var passwd = $("#newpasswd").val();
                var passwd2 = $("#newpasswd2").val();
                if(passwd.length < 6){
                    ShowFail($("#newpasswd"), 1, "密码长度不能少于6位");
                }else{
                    ShowSuccess($("#newpasswd"), 1);
                }
                if(passwd2 != ""){
                    checkPasswd();
                }
            });

            $("#newpasswd2").blur(function () {
                var passwd2 = $("#newpasswd2").val();
                if(passwd2.length < 6){
                    ShowFail($("#newpasswd2"), 2, "密码长度不能少于6位");
                }else{
                    ShowSuccess($("#newpasswd2"), 2);
                }
                checkPasswd();
            });

            $("#subpass").click(function () {
                checkPasswd();
                var flag = true;
                for(key in passwdcheck) {
                    if(!passwdcheck[key]){
                        $('#sendpasswd').find('input').eq(key).parent().parent().removeClass('has-success').addClass('has-error');
                        flag = false;
                    }
                }

                if(!flag) return;
                var passwd = $("#oldpasswd").val();
                var newpasswd = $("#newpasswd").val();

                $.ajax({
                    method: 'post',
                    async:false,
                    data: {'Login': $("#myid").val(), 'oldPass': $.md5($.md5(passwd)), 'newPass':$.md5($.md5(newpasswd))},
                    url:'/changepasswd',
                    success:function (result) {
                        alert(result["msg"]);
                        window.location.reload();
                    },
                    error:function(){
                        alert("error");
                    }
                });

            });

        });

        function checkPasswd(){
            var passwd = $("#newpasswd").val();
            var passwd2 = $("#newpasswd2").val();
            if(passwd != passwd2){
                ShowFail($("#newpasswd2"), 2, "两次密码不一致");
            }
        }

        function ShowSuccess(Obj, counter){
            Obj.parent().parent().removeClass('has-error').addClass('has-success');
            $(".tips").eq(counter).hide();
            $(".glyphicon-ok").eq(counter).show();
            $(".glyphicon-remove").eq(counter).hide();
            passwdcheck[counter] = true;
        }

        function ShowFail(Obj, counter, msg){
            Obj.parent().parent().removeClass('has-success').addClass('has-error');
            $(".glyphicon-ok").eq(counter).hide();
            $(".glyphicon-remove").eq(counter).show();
            $(".tips").eq(counter).text(msg).show();
            passwdcheck[counter] = false;
        }

        function submitbtn() {
            var email = $("#myemail").val();

            if($("#myname").val() == ""){
                alert("请输入用户名");
                $("#myname").focus();
                return false;
            }

            if (email != "") {
                var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
                if (!myreg.test(email)) {
                    alert("请输入有效的E_mail！");
                    $("#myemail").focus();
                    return false;
                }
            }else {
                alert("请输入邮箱!");
                return false;
            }



            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                //dataType: "json",//预期服务器返回的数据类型
                url: "/updateUserInfo",//url
                data: $('#form1').serialize(),
                success: function (result) {
                    if (result) {
                        alert("修改成功!!!");

                    } else {
                        alert("修改失败!!!");
                    }
                },
                error: function () {
                    window.location.href="/index";
                }
            });


        }
    </script>
</section>
<div class="ffooter">
    <div class="container">
        <div class="ffooterl">
            <h4>关于cici资讯网</h4>
            <ul>
                cici资讯网为您提供一站式ACG服务新体验。动漫资讯、展会信息、宅文化、周边情报，最新的动漫资讯、活动情报一网打尽，致力于打造国内最新、最快的动漫交流平台。
                <br>
                <br> 版权申明：本站资讯情报由注册用户发布，本网站无法鉴别所上传图片或文字的知识版权，任何单位或个人认为本网站中的网页或链接内容可能涉嫌侵犯其知识产 权，应该及时向本网站提出书面权利通知，并提供身份证明、权属证明及详细侵权情况证明。本网站在收到上述文件后，将会尽快删除相关内容或断开相关链接。
            </ul>
        </div>
        <div class="ffooterr">
            <div class="fimg">
                <img src="pic/logo.png" alt="cici资讯网">
            </div>
            <div class="ftext">关注我们</div>
            <div class="ficon">
                    <span>
                        <a href="http://weibo.com/acgstage" target="_blank">
                            <img src="pic/weibo.png" alt="微博">
                        </a>
                    </span>
                <span class="fwx">
                        <a>
                            <img src="pic/weixin.png" alt="微信">
                            <div class="app-qrcode">
                                <img src="pic/qrcode.jpg" alt="微信号">
                            </div>
                        </a>
                    </span>
                <span>
                        <a href="http://www.moejam.com/feed.php" target="_blank">
                            <img src="pic/icon4.png" alt="feed">
                        </a>
                    </span>
            </div>
        </div>
    </div>
</div>
<footer class="footer">
    <div class="container">
        <p>Copyright © 2008 - 2017 Moejam All Rights Reserved.&nbsp;&nbsp;
            <a href="http://www.miitbeian.gov.cn/" target="_blank">粤ICP备12041107号-3</a>&nbsp;&nbsp;
            &nbsp;&nbsp;Powered by Z-blogPHP</p>
    </div>
</footer>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/style.js"></script>
<!-- <script type="text/javascript">document.writeln(unescape("%3Cscript src=\""+zbPath+"zb_users/plugin/animatebg/main.js\" type=\"text/javascript\"%3E%3C/script%3E"));</script><script src="js/main.js" type="text/javascript"></script><div id="AnimateBg_Con"><canvas id="AnimateBg" style="position:fixed;top:0;left:0;background:none;z-index:-1" width="1366" height="560"></canvas></div> -->

</body>
</html>