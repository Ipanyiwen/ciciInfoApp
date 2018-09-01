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
    <title>cici资讯网_想你所想</title>

    <script src="js/jquery-2.js" type="text/javascript"></script>
    <script src="js/prism.js" type="text/javascript"></script>

    <link rel="stylesheet" type="text/css" href="css/bootstrap-pager.css">
    <link rel="stylesheet" type="text/css" href="css/prism.css">
    <link rel="stylesheet" id="_bootstrap-css" href="css/bootstrap.css" type="text/css" media="all">
    <link rel="stylesheet" id="_fontawesome-css" href="css/font-awesome.css" type="text/css" media="all">
    <link rel="stylesheet" id="_main-css" href="css/main.css" type="text/css" media="all">
    <link rel="shortcut icon" href="pic/favicon.ico">

</head>

<body class="home blog site-layout-2">
<%@ include file="login.jsp" %>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/bootstrap-pager.js"></script>
<script type="text/javascript" src="js/extendPagination.js"></script>
<script type="text/javascript" src="js/style.js"></script>

<header class="header">
    <div class="container">
        <h1 class="logo">
            <a href="#" title="cici资讯网">
                <img src="pic/logo.png">
            </a>
        </h1>
        <ul class="site-nav site-navbar">
            <li>
                <a href="#">首页</a>
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
            <input class="search-input" name="word" placeholder="输入关键字" type="text">
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
<style>
    .topadcss {
        padding-bottom: 16px;
    }
</style>

<link rel="stylesheet" href="css/slick.css">
<script src="js/slick.js"></script>
<section class="container">
    <div class="content-wrap">
        <div class="content">
            <div class="slick">
                <div>
                    <a href="http://www.moejam.com/news/25703.html" target="_blank"
                       title="刀剑乱舞音乐剧《加州清光 单骑出阵 2018》公开主视觉海报">
                        <img alt="刀剑乱舞音乐剧《加州清光 单骑出阵 2018》公开主视觉海报" title="刀剑乱舞音乐剧《加州清光 单骑出阵 2018》公开主视觉海报"
                             src="pic/201807261532537869614263.jpg">
                    </a>
                    <span>
                        <a href="http://www.moejam.com/news/25703.html" target="_blank"
                           title="刀剑乱舞音乐剧《加州清光 单骑出阵 2018》公开主视觉海报"> 刀剑乱舞音乐剧《加州清光 单骑出阵 2018》公开主视觉海报 </a>
                    </span>
                </div>
                <div>
                    <a href="http://www.moejam.com/news/25698.html" target="_blank"
                       title="《Love Live! Sunshine!!》Aqours成员樱内梨子、松浦果南跃入游戏《碧蓝幻想》">
                        <img alt="《Love Live! Sunshine!!》Aqours成员樱内梨子、松浦果南跃入游戏《碧蓝幻想》"
                             title="《Love Live! Sunshine!!》Aqours成员樱内梨子、松浦果南跃入游戏《碧蓝幻想》"
                             src="pic/201807251532487380272120.jpg">
                    </a>
                    <span>
                        <a href="http://www.moejam.com/news/25698.html" target="_blank"
                           title="《Love Live! Sunshine!!》Aqours成员樱内梨子、松浦果南跃入游戏《碧蓝幻想》">
									《Love Live! Sunshine!!》Aqours成员樱内梨子、松浦果南跃入游戏《碧蓝幻想》 </a>
                    </span>
                </div>
                <div>
                    <!--<div style="width: 670px; position: relative; left: -1340px; top: 0px; z-index: 800; opacity: 0;">-->
                    <a href="http://www.moejam.com/news/25693.html" target="_blank"
                       title="声优歌手「上坂堇」将于2019年举办巡回演唱会">
                        <img alt="声优歌手「上坂堇」将于2019年举办巡回演唱会" title="声优歌手「上坂堇」将于2019年举办巡回演唱会"
                             src="pic/201807241532447864368392.jpg">
                    </a>
                    <span>
                        <a href="http://www.moejam.com/news/25693.html" target="_blank"
                           title="声优歌手「上坂堇」将于2019年举办巡回演唱会"> 声优歌手「上坂堇」将于2019年举办巡回演唱会 </a>
                    </span>
                </div>
                <div>
                    <!--<div style="width: 670px; position: relative; left: -2010px; top: 0px; z-index: 800; opacity: 0;">-->
                    <a href="http://www.moejam.com/news/25684.html" target="_blank"
                       title="真人电影《伪恋》视觉图及特报公开">
                        <img alt="真人电影《伪恋》视觉图及特报公开" title="真人电影《伪恋》视觉图及特报公开"
                             src="pic/201807241532397343481788.jpg">
                    </a>
                    <span>
                        <a href="http://www.moejam.com/news/25684.html" target="_blank"
                           title="真人电影《伪恋》视觉图及特报公开"> 真人电影《伪恋》视觉图及特报公开 </a>
                    </span>
                </div>
            </div>
            <script>
                $(function () {
                    $('.slick').slick({
                        dots: true, //显示项目导航
                        fade: true, //淡入淡出
                        autoplay: true //自动播放
                    });
                });
            </script>
            <div class="thumbs">
                <div class="thumbtt">
                    <a href="http://www.moejam.com/news/25696.html" class="img" target="_blank">
                        <img alt="日本漫画《弟之夫》获得美国漫画艾斯纳奖最佳亚洲漫画奖" title="日本漫画《弟之夫》获得美国漫画艾斯纳奖最佳亚洲漫画奖"
                             src="pic/201807251532486091896035.jpg">
                        <span class="bg"></span>
                        <p class="title">日本漫画《弟之夫》获得美国漫画艾斯纳奖最佳亚洲漫画奖</p>
                    </a>
                </div>
                <div class="thumbtt">
                    <a href="http://www.moejam.com/news/25679.html" class="img" target="_blank">
                        <img alt="《K 七个故事》系列剧场版动画第一部将被改编成漫画" title="《K 七个故事》系列剧场版动画第一部将被改编成漫画"
                             src="pic/201807231532316335101890.jpg">
                        <span class="bg"></span>
                        <p class="title">《K 七个故事》系列剧场版动画第一部将被改编成漫画</p>
                    </a>
                </div>
                <div class="thumbtt">
                    <a href="http://www.moejam.com/news/25675.html" class="img" target="_blank">
                        <img alt="《超时空要塞 Frontier》7年后首发单曲" title="《超时空要塞 Frontier》7年后首发单曲"
                             src="pic/201807231532312989852119.jpg">
                        <span class="bg"></span>
                        <p class="title">《超时空要塞 Frontier》7年后首发单曲</p>
                    </a>
                </div>
            </div>
            <div class="clear"></div>

            <%--正文--%>
            <div id="cont"></div>
            <div class="text-center pagination"><div id="callBackPager" class="text-center"></div></div>
        </div>

    </div>
    <script>
        var total = 0;
        $(function () {

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
                url:'/indexpost',
                method:'post',
                async: false,
                data:{'start': currPage, 'size':limit},
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
                    history.pushState(null, null, "index?page="+currPage);
                }
            });
        }
    </script>
    <aside class="sidebar">
        <div class="recommend">
            <div class="tag">推荐</div>
            <a href="http://www.moejam.com/news/25699.html" class="imgbox">
                <img src="pic/201807251532490341898399.jpg" title="TV版动画《妖精的尾巴》最终季10月播出，视觉图公布"
                     alt="TV版动画《妖精的尾巴》最终季10月播出，视觉图公布">
                <i class="imark"></i>
            </a>
            <a href="http://www.moejam.com/news/25699.html" class="tit">TV版动画《妖精的尾巴》最终季10月播出，视觉图公布</a>
        </div>
        <div class="recommend-list">
            <ul>
                <li>
                    <a href="http://www.moejam.com/news/25674.html" title="电视动画《队长小翼》10月起进入中学生篇 成长的小翼和日向视觉图公开"
                       target="_blank">电视动画《队长小翼》10月起进入中学生篇 成长的小翼和日向视觉图公开</a>
                </li>
                <li>
                    <a href="http://www.moejam.com/news/25668.html" title="动画《我喜欢的妹妹不是妹妹》公开主角声优名单"
                       target="_blank">动画《我喜欢的妹妹不是妹妹》公开主角声优名单</a>
                </li>
            </ul>
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
                            msg += '<li><a href="/tags?tid='+term["termId"]+'">' + term["name"] + '</a></li>';
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
                <canvas width="350px" height="300px" id="myTag">
                    <p>Anything in here will be replaced on browsers that support the canvas element</p>
                </canvas>
            </div>

            <div id="mytags" class="items">

            </div>
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

            function changeshape(s) {
                var locks = {hcylinder: 'x', vcylinder: 'y', hring: 'x', vring: 'y', sphere: ''};
                lock = locks[s] || '';
                shape = s;
                TagCanvas.initial = (lock == 'x' && [0, 0.2]) || (lock == 'y' && [0.2, 0]) || [0.2, 0.2];
                restart();
            }

            changeshape('vcylinder');
        </script>
    </aside>
</section>
<div class="container">
    <div class="ffooter2">
        <div class="sec-panel-head">
            <h2>友情链接
                <small>--</small>
            </h2>
        </div>
        <div class="ffooterlink">
            <ul>
                <li>
                    <a href="http://www.moejam.com/" target="_blank" title="">
							<span class="hzimg">
								<img src="pic/logo.jpg" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="http://www.cnaci.com.cn/" target="_blank" title="">
							<span class="hzimg">
								<img src="pic/a_003.jpg" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="http://comic.sina.com.cn/" target="_blank" title="">
							<span class="hzimg">
								<img src="pic/a_005.gif" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="http://www.hxsd.com/" target="_blank" title="">
							<span class="hzimg">
								<img src="pic/a_005.jpg" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="http://www.actoys.net/" target="_blank" title="">
							<span class="hzimg">
								<img src="pic/ac_logo.gif" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="http://www.cccnews.com.cn/" target="_blank" title="">
							<span class="hzimg">
								<img src="pic/a_004.gif" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="http://www.comicfans.net/" target="_blank" title="">
							<span class="hzimg">
								<img src="pic/a_003.gif" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="http://www.ishangman.com/" target="_blank" title="">
							<span class="hzimg">
								<img src="pic/a_002.jpg" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="http://comic.zongheng.com/" target="_blank" title="">
							<span class="hzimg">
								<img src="pic/a.gif" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="http://www.cos-show.com/" target="_blank" title="">
							<span class="hzimg">
								<img src="pic/COSSHOW.jpg" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="http://www.ifenghui.com/" target="_blank" title="">
							<span class="hzimg">
								<img src="pic/a.jpg" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="http://www.chinacyx.com/" target="_blank" title="">
							<span class="hzimg">
								<img src="pic/a_006.jpg" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="http://www.gxdmw.com/" target="_blank" title="">
							<span class="hzimg">
								<img src="pic/a_002.gif" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="http://www.0dzs.80.hk/" target="_blank" title="">
							<span class="hzimg">
								<img src="pic/a_007.gif" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="http://www.manzhan.com/" target="_blank" title="">
							<span class="hzimg">
								<img src="pic/a_004.jpg" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="http://www.mcpmaid.com/" target="_blank" title="">
							<span class="hzimg">
								<img src="pic/MCP.gif" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="http://www.69ps.com/" target="_blank" title="">
							<span class="hzimg">
								<img src="pic/a_006.gif" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="http://www.sosg.net/" target="_blank" title="">
							<span class="hzimg">
								<img src="pic/sosg.gif" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="http://www.manshen.net/" target="_blank" title="">
							<span class="hzimg">
								<img src="pic/manshen.png" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="http://mcyacg.com/" target="_blank" title="">
							<span class="hzimg">
								<img src="pic/myclogo.gif" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="http://www.manwuxian123.com/" target="_blank" title="">
							<span class="hzimg">
								<img src="pic/mwx.jpg" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
            </ul>
        </div>
        <div style="height: 10px;"></div>
        <div class="ffooterlink">
            <ul>
                <li>
                    <a href="http://www.nyato.com/" target="_blank" title="喵特漫展" width="88">喵特漫展</a>
                </li>
                <li>
                    <a href="http://job.nyato.com/" target="_blank" title="喵特工坊" width="88">喵特工坊</a>
                </li>
                <li>
                    <a href="http://www.acgland.com/" target="_blank" title="御宅梦域" width="88">御宅梦域</a>
                </li>
                <li>
                    <a href="http://www.vsochina.com/" target="_blank" title="在线创作" width="88">在线创作 </a>
                </li>
                <li>
                    <a href="http://www.mz-oneacg.com/" target="_blank" title="梦之翼ACG" width="88">梦之翼ACG </a>
                </li>
                <li>
                    <a href="http://acg.shunwang.com/" target="_blank" title="顺网动漫频道" width="88">顺网动漫 </a>
                </li>
                <li>
                    <a href="http://www.comicyu.com/" target="_blank" title="漫域" width="88">漫域 </a>
                </li>
                <li>
                    <a href="http://acg.17173.com/" target="_blank" title="17173动漫频道" width="88">17173动漫 </a>
                </li>
                <li>
                    <a href="http://www.2cyxw.com/" target="_blank" title="二次元小窝" width="88">二次元小窝 </a>
                </li>
                <li>
                    <a href="http://www.wowodm.com/" target="_blank" title="喔喔动漫网" width="88">喔喔动漫 </a>
                </li>
                <li>
                    <a href="http://www.mycacg.com/" target="_blank" title="M.Y.COMIC游园会" width="88">M.Y.COMIC游园会 </a>
                </li>
                <li>
                    <a href="http://www.78dm.net/" target="_blank" title="78动漫" width="88">78动漫 </a>
                </li>
                <li>
                    <a href="http://cartoon.youth.cn/" target="_blank" title="中青网动漫频道" width="88">中青网 </a>
                </li>
                <li>
                    <a href="http://www.mkzhan.com/" target="_blank" title="漫客栈" width="88">漫客栈 </a>
                </li>
                <li>
                    <a href="http://www.91ac.com/" target="_blank" title="91AC" width="88">91AC </a>
                </li>
                <li>
                    <a href="http://www.yaca.cn/" target="_blank" title="YACA动漫" width="88">YACA动漫 </a>
                </li>
                <li>
                    <a href="http://v.61.com/" target="_blank" title="动画片大全" width="88">动画片大全 </a>
                </li>
                <li>
                    <a href="http://www.dmcy.ibicn.com/" target="_blank" title="动漫产业联盟网" width="88">动漫产业联盟 </a>
                </li>
                <li>
                    <a href="http://www.cosplay8.com/" target="_blank" title="COSPLAY中国"
                       width="88">COSPLAY中国 </a>
                </li>
                <li>
                    <a href="https://manhua.163.com/" target="_blank" title="网易漫画" width="88">网易漫画 </a>
                </li>
                <li>
                    <a href="http://cartoon.zwbk.org/" target="_blank" title="动漫百科" width="88">动漫百科 </a>
                </li>
                <li>
                    <a href="http://www.ddc.com.cn/index.html" target="_blank" title="DDC传媒"
                       width="88">DDC传媒 </a>
                </li>
                <li>
                    <a href="http://www.chahua.org/" target="_blank" title="插画中国" width="88">插画中国 </a>
                </li>
                <li>
                    <a href="http://www.dogame.com.cn/" target="_blank" title="游戏兵工厂" width="88">游戏兵工厂 </a>
                </li>
                <li>
                    <a href="http://www.sefor.com.cn/" target="_blank" title="影视动漫谷" width="88">影视动漫谷 </a>
                </li>
                <li>
                    <a href="http://www.youqudao.com/" target="_blank" title="有趣岛" width="88">有趣岛 </a>
                </li>
                <li>
                    <a href="http://www.77acg.com/" target="_blank" title="77动漫" width="88">77动漫 </a>
                </li>
                <li>
                    <a href="http://www.moejam.com/www.zerolh.com" target="_blank" title="ZERO动漫网"
                       width="88">ZERO动漫网 </a>
                </li>
                <li>
                    <a href="http://www.pmxsd.com/" target="_blank" title="神奇宝贝新生代" width="88">神奇宝贝新生代 </a>
                </li>
                <li>
                    <a href="http://bbs.comicdd.com/" target="_blank" title="动漫东东" width="88">动漫东东 </a>
                </li>
                <li>
                    <a href="http://www.konotaku.com/" target="_blank" title="现音研" width="88">现音研 </a>
                </li>
                <li>
                    <a href="http://www.kamigami.org/forum.php" target="_blank" title="诸神字幕组"
                       width="88">诸神字幕组 </a>
                </li>
                <li>
                    <a href="http://www.e2046.com/" target="_blank" title="e2046" width="88">e2046 </a>
                </li>
                <li>
                    <a href="http://www.5coser.com/" target="_blank" title="桐萌社-四川天府Cos同萌会" width="88">桐萌社 </a>
                </li>
                <li>
                    <a href="http://www.missevan.com/" target="_blank" title="Missevan动漫新闻网"
                       width="88">Missevan </a>
                </li>
                <li>
                    <a href="http://www.zhansu.com/" target="_blank" title="站速在线绘图" width="88">站速 </a>
                </li>
                <li>
                    <a href="http://bcy.net/" target="_blank" title="半次元cosplay频道" width="88">半次元cosplay频道 </a>
                </li>
                <li>
                    <a href="http://www.ifenghui.com/hudong" target="_blank" title="《锋绘》读者互动平台"
                       width="88">锋绘 </a>
                </li>
                <li>
                    <a href="http://www.legames.cn/" target="_blank" title="Legames" width="88">Legames </a>
                </li>
                <li>
                    <a href="http://www.yimoe.cc/" target="_blank" title="翼萌动漫" width="88">翼萌动漫 </a>
                </li>
                <li>
                    <a href="http://www.comicst.com/" target="_blank" title="漫社堂" width="88">漫社堂 </a>
                </li>
                <li>
                    <a href="http://www.manzhan8.com/" target="_blank" title="manzhan8" width="88">漫展吧</a>
                </li>
                <li>
                    <a href="http://danmu.tudou.com/" target="_blank" title="tudou" width="88">土豆弹幕</a>
                </li>
                <li>
                    <a href="http://www.c3acg.com/" target="_blank" title="C3ACG" width="88">C3ACG</a>
                </li>
                <li>
                    <a href="http://www.pangci.cc/" target="_blank" title="胖次网" width="88">胖次网</a>
                </li>
                <li>
                    <a href="http://www.youxiacg.com/" target="_blank" title="柚栖二次元" width="88">柚栖二次元</a>
                </li>
                <li>
                    <a href="http://www.acglivefans.com/" target="_blank" title="二次元现场" width="88">二次元现场</a>
                </li>
                <li>
                    <a href="http://gulugulu.cn/" target="_blank" title="咕噜咕噜" width="88">咕噜咕噜</a>
                </li>
                <li>
                    <a href="http://www.anicoga.com/" target="_blank" title="ANICOGA" width="88">ANICOGA</a>
                </li>
                <li>
                    <a href="http://www.sunacg.net/" target="_blank" title="阳光菌动漫" width="88">阳光菌动漫</a>
                </li>
                <li>
                    <a href="http://www.aimanzhan.com/" target="_blank" title="爱漫展" width="88">爱漫展</a>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="bottom_nav">
    <ul>
        <li>
            <a href="#">站点地图</a>
        </li>
        <li>
            <a href="#">关于我们</a>
        </li>
        <li>
            <a href="http://www.moejam.com/about/%E6%84%8F%E8%A7%81%E5%8F%8D%E9%A6%88">意见反馈</a>
        </li>
        <li>
            <a href="http://www.moejam.com/about/impunity">免责声明</a>
        </li>
    </ul>
</div>
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
<div class="bottom_tools">
    <a id="scrollUp" href="javascript:;" title="飞回顶部"></a>
</div>
</body>

</html>
