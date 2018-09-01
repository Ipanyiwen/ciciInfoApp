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
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>资讯_cici资讯网</title>

    <script src="js/jquery-2.js" type="text/javascript"></script>
    <script src="js/prism.js" type="text/javascript"></script>

    <link rel="stylesheet" type="text/css" href="css/bootstrap-pager.css">
    <link rel="stylesheet" type="text/css" href="css/prism.css">
    <link rel="stylesheet" id="_bootstrap-css" href="css/bootstrap.css" type="text/css" media="all">
    <link rel="stylesheet" id="_fontawesome-css" href="css/font-awesome.css" type="text/css" media="all">
    <link rel="stylesheet" id="_main-css" href="css/main.css" type="text/css" media="all">
    <link rel="shortcut icon" href="pic/favicon.ico">

    <!--[if lt IE 9]>
    <script src="js/html5.min.js"></script><![endif]-->
</head>
<body class="archive category category-1 site-layout-2">
<%@ include file="login.jsp" %>

<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/bootstrap-pager.js"></script>
<script type="text/javascript" src="js/extendPagination.js"></script>
<script type="text/javascript" src="js/style.js"></script>

<header class="header">
    <div class="container">
        <h1 class="logo"><a href="<%=basePath%>" title="cici资讯网"><img src="pic/logo.png"></a></h1>
        <ul class="site-nav site-navbar">
            <li><a href="<%=basePath%>">首页</a></li>
            <li id="navbar-category-1"><a href="/infopost?type=2">资讯</a></li>
            <li id="navbar-category-2"><a href="/infopost?type=0">博客</a></li>
            <li id="navbar-category-3"><a href="/infopost?type=1">资源</a></li>
            <li id="navbar-category-4"><a href="#">其他</a></li>
        </ul>
        <span class="navto-search"><a href="javascript:;" class="search-show active"><i
                class="fa fa-search"></i></a></span>
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
            <button class="search-btn" type="button"><i class="fa fa-search"></i></button>
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


<section class="container">
    <div class="content-wrap">
        <div class="content">
            <div class="pagetitle">
                <c:choose>
                    <c:when test="${empty param.word}">
                        <h1><i class="i itag tag-channel"></i>空空如也</h1>
                    </c:when>
                    <c:otherwise>
                        <h1><i class="i itag tag-channel"></i>搜索：${param.word}</h1>
                    </c:otherwise>
                </c:choose>
            </div>
            <%--正文--%>
            <div id="cont"></div>
            <div class="text-center pagination"><div id="callBackPager" class="text-center"></div></div>
            <script>
                var total = 0;
                $(function () {
                    //进入页面的时候需要调用callBackPagination这个函数，传入当前页，页大小，总页数
                    var page = ${param.page}+"";
                    if(page == null || page == ""){
                        page = 1;
                    }
                    createTable(page, 8); //第一次调用(加载第一页数据)
                    callBackPagination(page, 8, total); //参数一：当前页 参数二：页大小  参数三：数据总条数（不需要传递总页数
                });


                //这段代码不许要动
                function callBackPagination(curr, limit, totalCount) {

                    $('#callBackPager').extendPagination({  //根据传入的参数生成分页控件
                        totalCount: totalCount,
                        curr: curr,
                        limit: limit,
                        pageCount: 5,
                        count: 5,
                        callback: function (curr, limit) {//当点击分页控件页码时会触发此回调函数
                            createTable(curr, limit);
                            scrollTo(0,0);
                        }
                    });
                }

                //用的时候只需要写下面这段ajax代码就可以
                function createTable(currPage, limit) {
                    $.ajax({
                        url:'/search',
                        method:'post',
                        async: false,
                        data:{'word': '${param.word}', 'start': currPage, 'size':limit},
                        beforeSend: function () {
                            $("#cont").append('<img class="center-block" src="pic/loading.gif" />');
                        },
                        success: function(data){
                            console.log(data);
                            total = data["posts"]["total"];
                            $("#cont").html('');
                            var msg = '';
                            data["posts"]["list"].forEach(function(item){
                                msg +='<article class="excerpt excerpt-1">';
                                msg +='    <div class="focus thumb">';
                                msg +='<a href="/post?pid='+item["iD"]+'"';
                                msg +='title="'+item["postTitle"]+'">';
                                msg +='<img src="'+item["postPic"]+'"> </a> </div> <header> <h2>';
                                msg +='    <a target="_blank" href="/post?pid='+item["iD"]+'"';
                                msg +='title="'+item["postTitle"]+'">'+item["postTitle"]+'</a> </h2> </header>';
                                msg +='<p class="note">'+item["postExcerpt"]+'...</p>';
                                msg +='<p class="meta">';
                                var a = '<a class="name" target="_blank" href="#">博客</a>';
                                if(item["postType"] != 0){
                                    a='<a class="name" target="_blank" href="#">资讯</a>';
                                }
                                msg +=a;
                                msg +='<time></time>';
                                msg +='<span class="pvs">|</span>';
                                msg +='<span class="author">'+item["author"]["userNicename"]+'</span>';
                                msg +='<time>'+item["postDate"]+'</time>';
                                msg +='<span class="pv">评论('+item["commentCount"]+')</span>';
                                msg +='<span class="pvtags"></span>';
                                msg +='</p>';
                                msg +='</article>';
                            });

                            $("#cont").append(msg);
                            history.pushState(null, null, "tosearch?word="+'${param.word}'+"&page="+currPage);

                        }
                    });
                }
            </script>
        </div>
    </div>
    <aside class="sidebar">
        <div class="widget widget_ui_posts_list">
            <h3>热门文章<span class="w_title">TOP ARTICLES</span></h3>
            <div class="text-center" id="hotpostloading"></div>
            <ul id="myhotpost">
            </ul>
        </div>
        <div class="widget widget_ui_posts">
            <h3>最近发表<span class="w_title">NEW ARTICLES</span></h3>
            <div class="text-center" id="postloading"></div>
            <ul id="mypost">
            </ul>
        </div>

        <script>
            $(function () {
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
            })
        </script>
    </aside>
</section>
<div class="ffooter">
    <div class="container">
        <div class="ffooterl">
            <h4>关于cici资讯网</h4>
            <ul>
                cici资讯网为您提供一站式ACG服务新体验。动漫资讯、展会信息、宅文化、周边情报，最新的动漫资讯、活动情报一网打尽，致力于打造国内最新、最快的动漫交流平台。
                <br><br>
                版权申明：本站资讯情报由注册用户发布，本网站无法鉴别所上传图片或文字的知识版权，任何单位或个人认为本网站中的网页或链接内容可能涉嫌侵犯其知识产
                权，应该及时向本网站提出书面权利通知，并提供身份证明、权属证明及详细侵权情况证明。本网站在收到上述文件后，将会尽快删除相关内容或断开相关链接。
            </ul>
        </div>
        <div class="ffooterr">
            <div class="fimg"><img src="pic/logo.png" alt="cici资讯网"></div>
            <div class="ftext">关注我们</div>
            <div class="ficon">
                <span><a href="http://weibo.com/acgstage" target="_blank"><img src="pic/weibo.png" alt="微博"></a></span>
                <span class="fwx">
<a><img src="pic/weixin.png" alt="微信">
<div class="app-qrcode"><img src="pic/qrcode.jpg" alt="微信号"></div>
</a>
</span>
                <span><a href="http://www.moejam.com/feed.php" target="_blank"><img src="pic/icon4.png" alt="feed"></a></span>
            </div>
        </div>
    </div>
</div>

<footer class="footer">
    <div class="container">
        <p>Copyright © 2008 - 2017 Moejam All Rights Reserved.&nbsp;&nbsp;
            <a href="http://www.miitbeian.gov.cn/" target="_blank">粤ICP备12041107号-3</a>&nbsp;&nbsp;&nbsp;&nbsp;Powered
            by Z-blogPHP
        </p>
    </div>
</footer>

<div class="bottom_tools">
    <a id="scrollUp" href="javascript:;" title="飞回顶部"></a>
</div>


<script type="text/javascript">var zbPath = "http://www.moejam.com/", anbgColor = "none", anbgSpeed = "10",
    anbgPnum = 38;</script>
<!-- <script type="text/javascript">document.writeln(unescape("%3Cscript src=\""+zbPath+"zb_users/plugin/animatebg/main.js\" type=\"text/javascript\"%3E%3C/script%3E"));</script><script src="js/main.js" type="text/javascript"></script><div id="AnimateBg_Con"><canvas id="AnimateBg" style="position:fixed;top:0;left:0;background:none;z-index:-1" width="1366" height="560"></canvas></div> -->
</div>


</body>
</html>