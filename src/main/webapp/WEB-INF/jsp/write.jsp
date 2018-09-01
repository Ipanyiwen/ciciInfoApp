<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();//
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <title>发布文章_cici资讯网</title>

    <script src="js/jquery-2.js" type="text/javascript"></script>
    <script src="js/prism.js" type="text/javascript"></script>
    <script src="tagsinput/bootstrap-tagsinput.js" type="text/javascript"></script>
    <script src="js/fileinput.min.js" type="text/javascript"></script>

    <link rel="stylesheet" type="text/css" href="css/fileinput.min.css">
    <link rel="stylesheet" type="text/css" href="css/prism.css">
    <link rel="stylesheet" type="text/css" href="tagsinput/bootstrap-tagsinput.css"/>
    <link rel="stylesheet" id="_bootstrap-css" href="css/bootstrap.css" type="text/css" media="all">
    <link rel="stylesheet" id="_fontawesome-css" href="css/font-awesome.css" type="text/css" media="all">
    <link rel="stylesheet" id="_main-css" href="css/main.css" type="text/css" media="all">
    <!-- <link rel="shortcut icon" href="http://www.moejam.com/zb_users/theme/ydnew/style/diy/favicon.ico"> -->
    <!--[if lt IE 9]>
    <script src="js/html5.min.js"></script><![endif]-->
    <%--<script src="js/share.js"></script>--%>
    <%--<link rel="stylesheet" href="css/share_style1_24.css">--%>

    <style type="text/css">
        #toolbar {
            border: 1px solid #ccc;
        }

        #myeditor {
            border: 1px solid #ccc;
            height: 500px;
        }

        .bootstrap-tagsinput {
            width: 100%;
        }
    </style>
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
                    window.location.href = "/index";
                </script>
            </c:when>

            <c:otherwise>
                <span class="usercc" id="userinfo">
                    <div class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="${user.pic}" class="img-circle" id="user-photo" width="32px" height="32px"/>
                            <input type="hidden" value="${user.ID}" id="uid"/>
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
    <div class="content-wrap">
        <div class="singleh">
            <div class="content">
                <h1 class="article-title">撰写新文章</h1>
                <h1 class="article-title">
                    <input type="text" id="title" class="form-control" placeholder="在此处撰写标题">
                </h1>
                <div class="article-infos">
                    <div class="top-share">
                        <div class="bdbsharecode bjcode1">
                            <i class="public-modal-btn-cancel-red closeweixin1"></i>
                            <em class="sharecode_o"></em>
                        </div>
                    </div>
                    <div class="article-info">
                        <i class="fa fa-user"></i><span class="author"> panyiwen </span>
                    </div>
                </div>
                <article>
                    <div id="toolbar" class="toolbar" style="z-index: 1"></div>
                    <div id="myeditor" class="text" style="z-index: 1"></div>

                </article>


                <div class="comments">
                    <div class="title" style="margin-bottom:10px; margin-top:20px;">
                        <h3>描述</h3>
                    </div>

                    <textarea placeholder="对于文章的简单描述" class="input-block-level comt-area" name="txaArticle"
                              id="descript" style="width: 100%; resize: vertical; min-height: 30px;" rows="3"
                              tabindex="1"></textarea>

                </div>

                <div class="comments">
                    <h3>展示图片</h3>
                    <form id="picform" name="picform">
                        <div class="file-loading">
                            <input id="picupload" name="picupload" type="file">
                        </div>
                    </form>

                    <script>
                        $(document).on('ready', function () {
                            $("#picupload").fileinput({
                                showUpload: false,
                                dropZoneEnabled: false,
                                mainClass: "input-group-md",
                            });
                        });
                    </script>
                </div>

                <div class="comments">
                    <div class="title" style="margin-bottom:30px; margin-top:20px;">
                            <span>标签:
                                <input id="tags" type="text" class="form-control" placeholder="enter确定,最多五个">
                            </span>

                        <script>
                            $(function () {
                                $("#tags").tagsinput();
                            })
                        </script>
                    </div>
                </div>


                <div class="comments">
                    <div class="title" style="margin-bottom:30px; margin-top:20px;">
                        文章类型:
                        <select id="posttype">
                            <option value="2">资讯</option>
                            <option value="0">博客</option>
                        </select>
                        &nbsp;
                        文章分类:
                        <select id="type">
                        </select>

                    </div>
                </div>

                <div class="comments">
                    <button class="btn btn-success" id="postsubmit">确认提交</button>
                    &nbsp;
                    <button class="btn btn-warning">保存草稿</button>
                </div>

                <%--<div id="loading" style="display: none;"><img src="pic/loading.gif" /></div>--%>
                <%--<script>--%>
                <%--$(document).ready(function () {--%>
                <%--$(document).ajaxStart(function(){--%>

                <%--$("#loading").show();--%>
                <%--});--%>
                <%--$(document).ajaxSuccess(function(){--%>
                <%--$("#loading").hide();--%>
                <%--// $(this).empty(); // 或者直接清除--%>
                <%--});--%>
                <%--})--%>
                <%--</script>--%>
                <script>
                    $(function () {

                        var E = window.wangEditor;
                        var editor = new E("#toolbar", "#myeditor");
                        editor.customConfig.zIndex = 1;
                        editor.customConfig.uploadImgShowBase64 = true; // 使用 base64 保存图片
                        editor.create();

                        $("#postsubmit").click(function () {
                            var title = $("#title").val();
                            var descript = $("#descript").val();
                            var tags = $("#tags").val();
                            var ptype = $("#posttype").val();
                            var type = $("#type").val();
                            var postContent = editor.txt.html();

                            if (title == "" || title == null) {
                                alert("请填写标题!");
                                $("#title").focus();
                                return;
                            }
                            var text = editor.txt.text();
                            if (text == "" || text == null) {
                                alert("请填写正文!");
                                $("html, body").animate({
                                    scrollTop: $("#title").offset().top
                                }, {duration: 100, easing: "swing"});

                                return;
                            }

                            if (descript == "" || descript == null) {
                                descript = text.substring(0, 150);
                            }

                            var mydata = new FormData(document.forms.namedItem("picform"));

                            mydata.append('postContent', postContent);
                            mydata.append('postTitle', title);
                            mydata.append('postExcerpt', descript);
                            mydata.append('postType', ptype);
                            mydata.append('type', type);
                            mydata.append('mytags', tags);

                            $.ajax({
                                url: '/addpost',
                                method: 'post',
                                data: mydata,
                                processData: false,  // 告诉jQuery不要去处理发送的数据
                                contentType: false,   // 告诉jQuery不要去设置Content-Type请求头
                                success: function (data) {
                                    alert(data["msg"]);
                                    window.location.href = "/index";
                                }
                            });
                        });
                    })

                </script>


            </div>
        </div>
    </div>
    </div>
    <div class="mt10">
        <aside class="sidebar">

            <div class="widget widget_ui_posts">
                <h3>最近文章
                    <span class="w_title">NEW ARTICLES</span>
                </h3>
                <div id="postloading" class="text-center"></div>
                <ul id="mypost">
                </ul>
            </div>
            <script type="text/javascript" src="js/tagcanvas.js"></script>
            <script type="text/javascript">

                function startTags() {
                    try {
                        TagCanvas.Start('myTag', 'mytags', {
                            textColour: '#000',
                            outlineColour: '#000',
                            reverse: true,
                            depth: 0.8,
                            maxSpeed: 0.05,
                            weight: true,
                            weightMode: 'both'
                        });
                    } catch (e) {
                        document.getElementById('myCloudTag').style.display = 'none';
                    }
                }

                // window.onload = function () {
                //
                // };

                function changeshape(s) {
                    var locks = {hcylinder: 'x', vcylinder: 'y', hring: 'x', vring: 'y', sphere: ''};
                    lock = locks[s] || '';
                    shape = s;
                    TagCanvas.initial = (lock == 'x' && [0, 0.2]) || (lock == 'y' && [0.2, 0]) || [0.2, 0.2];
                    restart();
                }

                changeshape('vcylinder');


            </script>

            <div class="widget widget_ui_tags">
                <h3>你的标签
                    <span class="w_title">YOUR TAGS</span>
                </h3>
                <div id="loading" class="text-center"></div>
                <div id="myCloudTag">
                    <canvas width="350" height="300px" id="myTag">
                        <p>Anything in here will be replaced on browsers that support the canvas element</p>
                    </canvas>
                </div>

                <div id="mytags" class="items">

                </div>

            </div>
        </aside>
    </div>
</section>
<div class="ffooter">
    <div class="container">
        <div class="ffooterl">
            <h4>关于cici资讯网</h4>
            <ul>
                cici资讯网为您提供一站式ACG服务新体验。动漫资讯、展会信息、宅文化、周边情报，最新的动漫资讯、活动情报一网打尽，致力于打造国内最新、最快的动漫交流平台。
                <br>
                <br> 版权申明：本站资讯情报由注册用户发布，本网站无法鉴别所上传图片或文字的知识版权，任何单位或个人认为本网站中的网页或链接内容可能涉嫌侵犯其知识产
                权，应该及时向本网站提出书面权利通知，并提供身份证明、权属证明及详细侵权情况证明。本网站在收到上述文件后，将会尽快删除相关内容或断开相关链接。
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
<div class="bottom_tools" style="bottom: 40px;">
    <!--<a id="feedback" href="#comments" title="评论">评论</a>-->
    <a id="scrollUp" href="javascript:;" title="飞回顶部" style="display: block;"></a>
</div>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/style.js"></script>
<script type="text/javascript">
    $(function () {
        var terms;
        $.ajax({
            url: "/terms",
            method: 'post',
            success: function (data) {
                terms = data["lists"];
                var msg = "";
                terms[1].forEach(function (term) {
                    msg += '<option value="' + term["termId"] + '">' + term["name"] + '</optino>';
                })
                $("#type").append(msg);
            }
        });

        $.ajax({
            url: "/userTags",
            method: "post",
            data: {"uid": $("#uid").val()},
            beforeSend: function () {
                $("#loading").append('<img src="pic/loading.gif" />');
            },
            success: function (data) {
                $("#loading").html('');
                var msg = '<ul>';
                data["terms"].forEach(function (term) {
                    msg += '<li><a href="/tags?tid='+term["termId"]+'">' + term["name"] + '</a></li>';
                });
                msg += '</ul>';
                $("#mytags").append(msg);
                startTags();
            }
        });

        $.ajax({
            url: "/userposts",
            method: "post",
            data: {"uid": $("#uid").val()},
            beforeSend: function () {
                $("#postloading").append('<img src="pic/loading.gif" />');
            },
            success: function (data) {
                $("#postloading").html('');

                var msg = '';
                data["posts"].forEach(function (post) {
                    msg +='<li> <a target="_blank" href="/post?pid='+post["iD"]+'">';
                    msg +='<span class="thumbnail">';
                    msg +='<img src="'+post["postPic"]+'" alt="'+post["postTitle"]+'"> </span>';
                    msg +='<span class="text">'+post["postTitle"]+'</span>';
                    msg +='<span class="muted">'+post["postModified"]+'</span>';
                    msg +='<span class="muted">评论('+post["commentCount"]+')</span> </a> </li>';
                });
                $("#mypost").append(msg);
            }
        });


        $("#posttype").change(function () {
            var msg = "";
            if ($("#posttype").val() != 0) {
                terms[1].forEach(function (term) {
                    msg += '<option value="' + term["termId"] + '">' + term["name"] + '</optino>';
                });
            } else {
                terms[0].forEach(function (term) {
                    console.log(term);
                    msg += '<option value="' + term["termId"] + '">' + term["name"] + '</optino>';
                });
            }
            $("#type").html('');
            $("#type").append(msg);
        })

    })
</script>
<!-- <script type="text/javascript">document.writeln(unescape("%3Cscript src=\""+zbPath+"zb_users/plugin/animatebg/main.js\" type=\"text/javascript\"%3E%3C/script%3E"));</script><script src="js/main.js" type="text/javascript"></script><div id="AnimateBg_Con"><canvas id="AnimateBg" style="position:fixed;top:0;left:0;background:none;z-index:-1" width="1366" height="560"></canvas></div> -->


</body>

</html>