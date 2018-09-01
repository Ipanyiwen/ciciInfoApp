<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    String path = request.getContextPath();//
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <title>${post.postTitle}_cici资讯网</title>
    <script src="js/jquery-2.js" type="text/javascript"></script>
    <script src="js/prism.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="css/prism.css">

    <link rel="stylesheet" id="_bootstrap-css" href="css/bootstrap.css" type="text/css" media="all">
    <link rel="stylesheet" id="_fontawesome-css" href="css/font-awesome.css" type="text/css" media="all">
    <link rel="stylesheet" id="_main-css" href="css/main.css" type="text/css" media="all">
    <link rel="shortcut icon" href="images/favicon.ico">
    <link rel="stylesheet" href="css/bloglist.css" type="text/css">
    <!--[if lt IE 9]>
    <script src="js/html5.min.js"></script><![endif]-->


</head>

<body class="post-template-default single single-post postid-25835 single-format-standard comment-open site-layout-2">
<%@ include file="login.jsp" %>
<header class="header">
    <div class="container">
        <h1 class="logo">
            <a href="<%=basePath%>" title="cici资讯网">
                <img src="pic/logo.png">
            </a>
        </h1>
        <ul class="site-nav site-navbar">
            <li id="navbar-category-1"><a href="<%=basePath%>">首页</a></li>
            <li id="navbar-category-2"><a href="/infopost?type=2">资讯</a></li>
            <li id="navbar-category-3"><a href="/infopost?type=0">博客</a></li>
            <li id="navbar-category-4"><a href="/infopost?type=1">资源</a></li>
            <li id="navbar-category-5"><a href="#">其他</a></li>
        </ul>
        <span class="navto-search">
                <a href="javascript:;" class="search-show active">
                    <i class="fa fa-search"></i>
                </a>
            </span>
        <c:choose>
            <c:when test="${empty user}">
                <span class="usercc openlogin" id="plogin">
                    <a href="javascript:void(0);">Hi, 请登录</a>
                </span>
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
                            <li><a href="/logout?page=post?pid=${post.ID}">退出登录</a></li>
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
<section class="container-single">
    <div class="content-wrap">
        <div class="singleh">
            <div class="content">
                <h1 class="article-title">
                    <a href="#" style="font-size:32px;">${post.postTitle}</a>
                </h1>
                <div class="article-infos">
                    <div class="top-share">
                        <div class="bdbsharecode bjcode1">
                            <i class="public-modal-btn-cancel-red closeweixin1"></i>
                            <em class="sharecode_o"></em>
                        </div>
                    </div>
                    <div class="article-info">
                        <c:choose>
                            <c:when test="${post.postType == 0}">
                                <a class="name" target="_blank" href="#">博客</a>
                            </c:when>
                            <c:otherwise>
                                <a class="name" target="_blank" href="#">资讯</a>
                            </c:otherwise>
                        </c:choose>

                        <i class="fa fa-user"></i><span class="author"> ${post.author.userNicename} </span>&nbsp;
                        <i class="fa fa-calendar"></i><span class="time"> ${post.postModified}</span>
                        <c:if test="${user.ID == post.author.ID}">
                            <a class="btn btn-success pull-right" href="/toUpdate?pid=${post.ID}">编辑</a>
                        </c:if>
                    </div>
                </div>
                <c:if test="${empty post}">
                    <script>
                        window.location.href = "/index";
                    </script>
                </c:if>
                <article class="article-content">
                    ${post.postContent}
                </article>
                <br/>
                <hr style="border: 1px solid gray"/>
                <div class="title" id="comments">
                    <h3>评论
                        <b>${post.comments.size()}</b>
                    </h3>
                </div>
                <div id="respond" class="no_webshot">
                    <form id="frmSumbit" target="_self" method="post"
                          action="#">
                        <div class="comt">
                            <div class="comt-title">
                                <c:choose>
                                    <c:when test="${not empty user}">
                                        <img src="${user.pic}" class="avatar avatar-100" width="100" height="100">
                                        <input name="inpId" class="myid" id="uid" value="${user.ID}" type="hidden">

                                    </c:when>
                                    <c:otherwise>
                                        <img src="pic/0.png" class="avatar avatar-100" width="100" height="100">
                                        <input name="inpId" class="myid" id="uid" value="0" type="hidden">
                                    </c:otherwise>
                                </c:choose>
                                <input name="inpRevID" id="parentid" value="0" type="hidden">
                                <%--<p>--%>
                                <%--<a id="cancel-comment-reply-link" href="javascript:;">取消</a>--%>
                                <%--</p>--%>
                            </div>
                            <div class="comt-box">
                                    <textarea placeholder="你的评论可以一针见血" class="input-block-level comt-area"
                                              name="txaArticle" id="txaArticle" cols="100%" rows="3"
                                              tabindex="1"></textarea>
                                <div class="comt-ctrl">
                                    <button name="sumbit" type="button" id="submit" tabindex="5"
                                            onclick="submitComment()">提交评论
                                    </button>
                                </div>
                            </div>
                            <div>
                                <span id="replyMsg" style="color: gray;">
                                    <span></span>&nbsp;
                                    <span></span>&nbsp;
                                    <input hidden id="remsg" value="">&nbsp;&nbsp;&nbsp;
                                    <input hidden id="cuname" value="robot">
                                </span>
                                <span id="cancel"></span>
                            </div>

                            <%--<div class="comt-comterinfo" id="comment-author-info">--%>
                            <%--<ul>--%>
                            <%--<li class="form-inline">--%>
                            <%--<label class="hide" for="inpName">昵称</label>--%>
                            <%--<input class="ipt" name="inpName" id="inpName" value="pan" tabindex="2"--%>
                            <%--placeholder="昵称" type="text">--%>
                            <%--<span class="text-muted">昵称 (必填)</span>--%>
                            <%--</li>--%>
                            <%--<li class="form-inline">--%>
                            <%--<label class="hide" for="inpEmail">邮箱</label>--%>
                            <%--<input class="ipt" name="inpEmail" id="inpEmail" tabindex="3" placeholder="邮箱"--%>
                            <%--type="text">--%>
                            <%--<span class="text-muted">邮箱</span>--%>
                            <%--</li>--%>
                            <%--<li class="form-inline">--%>
                            <%--<label class="hide" for="inpHomePage">网址</label>--%>
                            <%--<input class="ipt" name="inpHomePage" id="inpHomePage" tabindex="4"--%>
                            <%--placeholder="网址" type="text">--%>
                            <%--<span class="text-muted">网址</span>--%>
                            <%--</li>--%>
                            <%--</ul>--%>
                            <%--</div>--%>
                        </div>
                    </form>
                </div>
                <%--<script type="text/javascript">--%>
                    <%--$("#txaArticle").click(function () { //搜索JS--%>
                        <%--//		$(".nav-search i").toggleClass("fa-remove");//点击状态改变css--%>
                        <%--$(".comt-comterinfo").toggle(200);--%>
                    <%--});--%>
                <%--</script>--%>
                <div id="postcomments">
                    <c:set var="i" value="1"></c:set>
                    <c:forEach var="comment" items="${post.comments}">
                    <ol class="commentlist">
                        <label id="AjaxCommentBegin"></label>
                        <label id="cmt116"></label>
                        <li class="comment even thread-even depth-1" id="comment-116">
                            <span class="comt-f">#${i}</span>
                            <c:set var="i" value="${i+1}"></c:set>
                            <div class="comt-avatar">
                                <img src="${comment.user.pic}" class="avatar avatar-100" width="100" height="100">
                            </div>
                            <div class="comt-main" id="div-comment-1">
                                <p>
                                    <label id="AjaxComment116">${comment.commentContent}</label>
                                </p>
                                <div class="comt-meta">
                                        <span class="comt-author">
                                            <c:choose>
                                                <c:when test="${comment.user.ID != 0}">
                                                    <a href="/yourblog?uid=${comment.user.ID}&type=${post.postType}" rel="external nofollow"
                                                       class="url">${comment.user.userNicename}</a>
                                                </c:when>
                                                <c:otherwise>
                                                    <a href="javascript:;" rel="external nofollow"
                                                       class="url">${comment.user.userNicename}</a>
                                                </c:otherwise>
                                            </c:choose>


                                        </span>
                                    ${comment.commentDate}
                                    <a rel="nofollow" class="comment-reply-link" href="javascript:;"
                                       onclick="reply(${comment.commentId}, '${comment.user.userNicename}', '${comment.commentContent}')">回复</a>
                                </div>
                            </div>
                            <ol class="commentlist ml30">
                            </ol>
                        </li>
                        <label id="AjaxCommentEnd"></label>
                    </ol>
                    </c:forEach>
                    <script>
                        function reply(cid, userName, content) {
                            window.location.hash = "#comt-box";
                            $("#replyMsg").find('span').eq(0).html("回复@ <label>" + userName+"</label>:");
                            $("#replyMsg").find('span').eq(1).html(content.substr(0, 20));
                            $("#remsg").val('<br/> <small>'+userName+':'+content+'</small>');
                            $("#cuname").val(userName);
                            $("#parentid").val(cid);

                            $("#txaArticle").attr('placeholder', '回复：' + userName + "//消息：" + content);
                            $("#cancel").html('<button class="btn btn-info" onclick="cancleReply()">取消</button>')
                        }

                        function cancleReply(){
                            $("#replyMsg").find('span').eq(0).html('');
                            $("#replyMsg").find('span').eq(1).html('');
                            $("#remsg").val();
                            $("#parentid").val(0);
                            $("#txaArticle").attr('placeholder', '你的评论可以一针见血');
                            $("#txaArticle").val("");
                            $("#cancel").html('');

                        }

                        function submitComment() {

                            var comm = $("#txaArticle").val();
                            if (comm == "") {
                                return;
                            }
                            var postID = ${post.ID};
                            var tuid = $(".myid").val();
                            var commentParent = $("#parentid").val();
                            var remsg = $("#remsg").val();
                            if(remsg != "" && remsg != null) {
                                comm = "回复@" + $("#cuname").val() + ": " + comm + remsg;
                            }
                            $.ajax({
                                url: '/submitComment',
                                method: 'post',
                                data: {
                                    'commentPostId': postID,
                                    'commentParent': commentParent,
                                    'commentContent': comm,
                                    'uid': tuid
                                },
                                success: function (data) {
                                    alert(data["msg"]);
                                    cancleReply();
                                }
                            });
                        }
                    </script>
                    <div class="pagenav">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="mt10">
        <aside class="sidebar">
            <div class="widget widget_ui_posts_list">
                <h3>个人资料
                    <span class="w_title">USER MESSAGE</span>
                </h3>
                <div>
                    <div class="list-group">
                        <div href="#" class="list-group-item">
                            <div class="list-group-item-text">
                                <a href="/yourblog?uid=${post.author.ID}&type=${post.postType}">&nbsp;<img
                                        class="img-circle" src="${post.author.pic}" style="height: 45px; width: 45px;">&nbsp;&nbsp;${post.author.userNicename}
                                </a>&nbsp;&nbsp;&nbsp;&nbsp;
                                <c:set var="flag" value="false"></c:set>
                                <c:forEach var="attention" items="${user.myAttentions}">
                                    <c:if test="${attention.ID == post.author.ID}">
                                        <c:set var="flag" value="true"></c:set>
                                    </c:if>
                                </c:forEach>
                                <span id="attention">
                                    <c:if test="${post.author.ID != user.ID}">
                                        <c:choose>
                                            <c:when test="${not flag}">
                                                <a class="btn btn-danger" onclick="attention(true)">关注</a>
                                            </c:when>
                                            <c:otherwise>
                                                <a class="btn btn-danger" onclick="attention(false)">取消关注</a>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:if>
                                </span>
                            </div>
                            <script>
                                function attention(flag) {
                                    var uid=0;
                                    if(${empty user.ID}){
                                        return;
                                    }else {
                                     uid = ${user.ID}+"";
                                    }
                                    var fid = ${post.author.ID};
                                    $.ajax({
                                        url: "/attention",
                                        data: {'uid': uid, 'fid': fid, 'flag': flag},
                                        success: function (data) {
                                            if (data["msg"] == "success") {
                                                if (flag == true) {

                                                    $("#attention").html('');
                                                    $("#attention").append('<a class="btn btn-danger" onclick="attention(false)">取消关注</a>');
                                                } else {
                                                    $("#attention").html('');
                                                    $("#attention").append('<a class="btn btn-danger" onclick="attention(true)">关注</a>');
                                                }
                                            }
                                        }

                                    });
                                }

                            </script>
                            <hr/>

                            <table class="myinfo">
                                <tr>
                                    <th>文章</th>
                                    <th>粉丝</th>
                                    <th>喜欢</th>
                                    <th>评论</th>
                                </tr>
                                <tr>
                                    <td id="postnum">999</td>
                                    <td>${post.author.myFans.size()}</td>
                                    <td>${post.author.myAttentions.size()}</td>
                                    <td id="commentnum">999</td>
                                </tr>
                            </table>
                            <hr/>
                            <table class="msg">
                                <tr>
                                    <td><strong>等级: </strong>${post.author.userRank.rankName}</td>
                                    <td><strong>积分: </strong>${post.author.userRank.source}</td>
                                </tr>
                                <tr></tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="widget widget_ui_posts_list">
                <h3>热门文章
                    <span class="w_title">TOP ARTICLES</span>
                </h3>
                <div class="text-center" id="hotpostloading"></div>
                <ul id="myhotpost">
                </ul>
            </div>
            <div class="widget widget_ui_posts">
                <h3>最近发表
                    <span class="w_title">NEW ARTICLES</span>
                </h3>
                <div class="text-center" id="postloading"></div>
                <ul id="mypost">
                </ul>
            </div>

            <script>
                $(function () {
                    $.ajax({
                        url: '/getpostAndComments',
                        method: 'post',
                        data:{'uid': ${post.author.ID}},
                        success:function(data){
                            $("#postnum").html(data["postnum"]);
                            $("#commentnum").html(data["commentnum"]);
                        }
                    });

                    $.ajax({
                        url: "/lastposts",
                        method: "post",
                        beforeSend: function () {
                            $("#postloading").append('<img src="pic/loading.gif" />');
                        },
                        success: function (data) {
                            $("#postloading").html('');

                            var msg = '';
                            data["posts"].forEach(function (post) {
                                msg += '<li> <a target="_blank" href="/post?pid=' + post["iD"] + '">';
                                msg += '<span class="thumbnail">';
                                msg += '<img src="' + post["postPic"] + '" alt="' + post["postTitle"] + '"> </span>';
                                msg += '<span class="text">' + post["postTitle"] + '</span>';
                                msg += '<span class="muted">' + post["postModified"] + '</span>';
                                msg += '<span class="muted">评论(' + post["commentCount"] + ')</span> </a> </li>';
                            });
                            $("#mypost").append(msg);
                        }
                    });

                    $.ajax({
                        url: "/hotposts",
                        method: "post",
                        beforeSend: function () {
                            $("#hotpostloading").append('<img src="pic/loading.gif" />');
                        },
                        success: function (data) {
                            $("#hotpostloading").html('');

                            var msg = '';
                            var i = 1;
                            data["hotposts"].forEach(function (post) {
                                msg += '<li><span>' + i + '</span>';
                                msg += '<a href="/post?pid=' + post["iD"] + '" title="' + post["postTitle"] + '">' + post["postTitle"] + '</a></li>';
                                i++;
                            });
                            $("#myhotpost").append(msg);
                        }
                    });

                    $.ajax({
                        url: "/hotTags",
                        method: "post",
                        beforeSend: function () {
                            $("#loading").append('<img src="pic/loading.gif" />');
                        },
                        success: function (data) {
                            $("#loading").html('');
                            var msg = '<ul>';
                            data["terms"].forEach(function (term) {
                                msg += '<li><a href="/tags?tid=' + term["termId"] + '">' + term["name"] + '</a></li>';
                            });
                            msg += '</ul>';
                            $("#mytags").append(msg);
                            startTags();
                        }
                    });
                })
            </script>
            <div class="widget widget_ui_tags">
                <h3>热门标签
                    <span class="w_title">TOP TAGS</span>
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

            function changeshape(s) {
                var locks = {hcylinder: 'x', vcylinder: 'y', hring: 'x', vring: 'y', sphere: ''};
                lock = locks[s] || '';
                shape = s;
                TagCanvas.initial = (lock == 'x' && [0, 0.2]) || (lock == 'y' && [0.2, 0]) || [0.2, 0.2];
            }

            changeshape('vcylinder');
        </script>
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
<!-- <script type="text/javascript">document.writeln(unescape("%3Cscript src=\""+zbPath+"zb_users/plugin/animatebg/main.js\" type=\"text/javascript\"%3E%3C/script%3E"));</script><script src="js/main.js" type="text/javascript"></script><div id="AnimateBg_Con"><canvas id="AnimateBg" style="position:fixed;top:0;left:0;background:none;z-index:-1" width="1366" height="560"></canvas></div> -->

</body>

</html>