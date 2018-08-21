<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <title>cici资讯网_想你所想</title>

    <script src="/static/js/jquery-2.js" type="text/javascript"></script>
    <script src="/static/js/prism.js" type="text/javascript"></script>

    <script type="text/javascript" src="/static/js/jquery.min.js"></script>
    <script type="text/javascript" src="/static/js/jquery.easing.min.js"></script>
    <script type="text/javascript" src="/static/js/login.js"></script>
    <script type="text/javascript" src="/static/js/jquery.cookie.js"></script>
    <script type="text/javascript" src="/static/js/md5.js"></script>
    <script type="text/javascript" src="/static/js/jquery.form.js"></script>
    <script type="text/javascript" src="js/tagcanvas.js"></script>

    <link rel="stylesheet" type="text/css" href="/static/css/prism.css">
    <link rel="stylesheet" type="text/css" href="/static/css/style.css"/>
    <link rel="stylesheet" id="_bootstrap-css" href="/static/css/bootstrap.css" type="text/css" media="all">
    <link rel="stylesheet" id="_fontawesome-css" href="/static/css/font-awesome.css" type="text/css" media="all">
    <link rel="stylesheet" id="_main-css" href="/static/css/main.css" type="text/css" media="all">
    <link rel="shortcut icon" href="/static/pic/favicon.ico">

</head>

<body class="home blog site-layout-2">
<header class="header">
    <div class="container">
        <h1 class="logo">
            <a href="#" title="梦域动漫网">
                <img src="/static/pic/logo.png">
            </a>
        </h1>
        <ul class="site-nav site-navbar">
            <li>
                <a href="#">首页</a>
            </li>
            <li id="navbar-category-1">
                <a href="/info">资讯</a>
            </li>
            <li id="navbar-category-2">
                <a href="/static/http://www.moejam.com/manzhan">博客</a>
            </li>
            <li id="navbar-category-3">
                <a href="/static/http://www.moejam.com/doujin">资源</a>
            </li>
            <li id="navbar-category-4">
                <a href="/static/http://www.moejam.com/goods">其他</a>
            </li>
        </ul>
        <span class="navto-search">
            <a href="javascript:;" class="search-show active">
                <i class="fa fa-search"></i>
            </a>
        </span>

        <span class="usercc openlogin" id="plogin">
            <a href="javascript:void(0);">Hi, 请登录</a>
        </span>

        <span class="usercc" id="userinfo" style="display: none;">
            <div class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <img src="/photo/default.png" class="img-circle" id="user-photo" width="100%" height="100%"/>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="#">用户信息</a></li>
                    <li><a href="#">你的博客</a></li>
                    <li><a href="#">退出登录</a></li>
                </ul>
            </div>
        </span>

        <i class="fa fa-bars m-icon-nav"></i>
    </div>
</header>
<div class="site-search">
    <div class="container">
        <form method="get" class="site-search-form" action="/search" id="search">
            <input class="search-input" name="word" placeholder="输入关键字" type="text">
            <button class="search-btn" type="submit">
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

<link rel="stylesheet" href="/static/css/slick.css">
<script src="/static/js/slick.js"></script>
<section class="container">
    <div class="content-wrap">
        <div class="content">
            <div class="slick">
                <div>
                    <a href="/static/http://www.moejam.com/news/25703.html" target="_blank"
                       title="刀剑乱舞音乐剧《加州清光 单骑出阵 2018》公开主视觉海报">
                        <img alt="刀剑乱舞音乐剧《加州清光 单骑出阵 2018》公开主视觉海报" title="刀剑乱舞音乐剧《加州清光 单骑出阵 2018》公开主视觉海报"
                             src="/static/pic/201807261532537869614263.jpg">
                    </a>
                    <span>
                        <a href="/static/http://www.moejam.com/news/25703.html" target="_blank"
                           title="刀剑乱舞音乐剧《加州清光 单骑出阵 2018》公开主视觉海报"> 刀剑乱舞音乐剧《加州清光 单骑出阵 2018》公开主视觉海报 </a>
                    </span>
                </div>
                <div>
                    <a href="/static/http://www.moejam.com/news/25698.html" target="_blank"
                       title="《Love Live! Sunshine!!》Aqours成员樱内梨子、松浦果南跃入游戏《碧蓝幻想》">
                        <img alt="《Love Live! Sunshine!!》Aqours成员樱内梨子、松浦果南跃入游戏《碧蓝幻想》"
                             title="《Love Live! Sunshine!!》Aqours成员樱内梨子、松浦果南跃入游戏《碧蓝幻想》"
                             src="/static/pic/201807251532487380272120.jpg">
                    </a>
                    <span>
                        <a href="/static/http://www.moejam.com/news/25698.html" target="_blank"
                           title="《Love Live! Sunshine!!》Aqours成员樱内梨子、松浦果南跃入游戏《碧蓝幻想》">
									《Love Live! Sunshine!!》Aqours成员樱内梨子、松浦果南跃入游戏《碧蓝幻想》 </a>
                    </span>
                </div>
                <div>
                    <!--<div style="width: 670px; position: relative; left: -1340px; top: 0px; z-index: 800; opacity: 0;">-->
                    <a href="/static/http://www.moejam.com/news/25693.html" target="_blank"
                       title="声优歌手「上坂堇」将于2019年举办巡回演唱会">
                        <img alt="声优歌手「上坂堇」将于2019年举办巡回演唱会" title="声优歌手「上坂堇」将于2019年举办巡回演唱会"
                             src="/static/pic/201807241532447864368392.jpg">
                    </a>
                    <span>
                        <a href="/static/http://www.moejam.com/news/25693.html" target="_blank"
                           title="声优歌手「上坂堇」将于2019年举办巡回演唱会"> 声优歌手「上坂堇」将于2019年举办巡回演唱会 </a>
                    </span>
                </div>
                <div>
                    <!--<div style="width: 670px; position: relative; left: -2010px; top: 0px; z-index: 800; opacity: 0;">-->
                    <a href="/static/http://www.moejam.com/news/25684.html" target="_blank"
                       title="真人电影《伪恋》视觉图及特报公开">
                        <img alt="真人电影《伪恋》视觉图及特报公开" title="真人电影《伪恋》视觉图及特报公开"
                             src="/static/pic/201807241532397343481788.jpg">
                    </a>
                    <span>
                        <a href="/static/http://www.moejam.com/news/25684.html" target="_blank"
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
                    <a href="/static/http://www.moejam.com/news/25696.html" class="img" target="_blank">
                        <img alt="日本漫画《弟之夫》获得美国漫画艾斯纳奖最佳亚洲漫画奖" title="日本漫画《弟之夫》获得美国漫画艾斯纳奖最佳亚洲漫画奖"
                             src="/static/pic/201807251532486091896035.jpg">
                        <span class="bg"></span>
                        <p class="title">日本漫画《弟之夫》获得美国漫画艾斯纳奖最佳亚洲漫画奖</p>
                    </a>
                </div>
                <div class="thumbtt">
                    <a href="/static/http://www.moejam.com/news/25679.html" class="img" target="_blank">
                        <img alt="《K 七个故事》系列剧场版动画第一部将被改编成漫画" title="《K 七个故事》系列剧场版动画第一部将被改编成漫画"
                             src="/static/pic/201807231532316335101890.jpg">
                        <span class="bg"></span>
                        <p class="title">《K 七个故事》系列剧场版动画第一部将被改编成漫画</p>
                    </a>
                </div>
                <div class="thumbtt">
                    <a href="/static/http://www.moejam.com/news/25675.html" class="img" target="_blank">
                        <img alt="《超时空要塞 Frontier》7年后首发单曲" title="《超时空要塞 Frontier》7年后首发单曲"
                             src="/static/pic/201807231532312989852119.jpg">
                        <span class="bg"></span>
                        <p class="title">《超时空要塞 Frontier》7年后首发单曲</p>
                    </a>
                </div>
            </div>
            <div class="clear"></div>

            <%--正文--%>
            <c:forEach var="item"  items="${posts}">
                <article class="excerpt excerpt-1">
                    <div class="focus thumb">
                        <a href="/static/http://www.moejam.com/news/25885.html" title="动画《只要别西卜大小姐喜欢就好》公开新视觉图&amp;角色介绍PV">
                            <img src="/static/pic/201808161534414472563431.jpg">
                        </a>
                    </div>
                    <header>
                        <h2>
                            <a target="_blank" href="/static/http://www.moejam.com/news/25885.html"
                               title="动画《只要别西卜大小姐喜欢就好》公开新视觉图&amp;角色介绍PV">动画《只要别西卜大小姐喜欢就好》公开新视觉图&amp;角色介绍PV</a>
                        </h2>
                    </header>
                    <p class="note">matoba原作的漫画《只要别西卜大小姐喜欢就好》即将改编为动画，由LIDENFILMS负责制作。官方日前公开了新视觉图和角色介绍PV。从天界堕落，成为恶魔的前...</p>
                    <p class="meta">
                        <a href="/static/http://www.moejam.com/news" rel="category">资讯</a>
                        <time></time>
                        <span class="pvs">|</span>
                        <span class="author">菜菜</span>
                        <time>2018-08-16</time>
                        <span class="pv">阅读(1539)</span>
                        <span class="pvtags"></span>
                    </p>
                </article>
            </c:forEach>


            <div class="pagination">
                <ul>
                    <li>
                        <a href="/static/http://www.moejam.com/">‹‹</a>
                    </li>
                    <li class="active">
                        <span>1</span>
                    </li>
                    <li>
                        <a href="/static/http://www.moejam.com/page_2.html">2</a>
                    </li>
                    <li>
                        <a href="/static/http://www.moejam.com/page_3.html">3</a>
                    </li>
                    <li>
                        <a href="/static/http://www.moejam.com/page_4.html">4</a>
                    </li>
                    <li>
                        <a href="/static/http://www.moejam.com/page_5.html">5</a>
                    </li>
                    <li>
                        <a href="/static/http://www.moejam.com/page_6.html">6</a>
                    </li>
                    <li>
                        <a href="/static/http://www.moejam.com/page_7.html">7</a>
                    </li>
                    <li>
                        <a href="/static/http://www.moejam.com/page_8.html">8</a>
                    </li>
                    <li>
                        <a href="/static/http://www.moejam.com/page_9.html">9</a>
                    </li>
                    <li>
                        <a href="/static/http://www.moejam.com/page_10.html">10</a>
                    </li>
                    <li class="next-page">
                        <a href="/static/http://www.moejam.com/page_2.html">下一页</a>
                    </li>
                    <li>
                        <a href="/static/http://www.moejam.com/page_2233.html">››</a>
                    </li>
                    <li>
                        <span>共 2233 页</span>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <aside class="sidebar">
        <div class="recommend">
            <div class="tag">推荐</div>
            <a href="/static/http://www.moejam.com/news/25699.html" class="imgbox">
                <img src="/static/pic/201807251532490341898399.jpg" title="TV版动画《妖精的尾巴》最终季10月播出，视觉图公布"
                     alt="TV版动画《妖精的尾巴》最终季10月播出，视觉图公布">
                <i class="imark"></i>
            </a>
            <a href="/static/http://www.moejam.com/news/25699.html" class="tit">TV版动画《妖精的尾巴》最终季10月播出，视觉图公布</a>
        </div>
        <div class="recommend-list">
            <ul>
                <li>
                    <a href="/static/http://www.moejam.com/news/25674.html" title="电视动画《队长小翼》10月起进入中学生篇 成长的小翼和日向视觉图公开"
                       target="_blank">电视动画《队长小翼》10月起进入中学生篇 成长的小翼和日向视觉图公开</a>
                </li>
                <li>
                    <a href="/static/http://www.moejam.com/news/25668.html" title="动画《我喜欢的妹妹不是妹妹》公开主角声优名单"
                       target="_blank">动画《我喜欢的妹妹不是妹妹》公开主角声优名单</a>
                </li>
            </ul>
        </div>
        <div class="widget widget_ui_posts_list">
            <h3>热门文章
                <span class="w_title">TOP ARTICLES</span>
            </h3>
            <ul>
                <c:forEach var="item"  items="${hostPosts}">
                    <li>
                        <span>1</span>
                        <a href="/static/http://www.moejam.com/manzhan/23289.html" title="2017中国（苏州）电子竞技博览会金鸡湖畔火热开幕">2017中国（苏州）电子竞技博览会金鸡湖畔火热开幕</a>
                    </li>
                </c:forEach>
            </ul>
        </div>
        <div class="widget widget_ui_posts">
            <h3>最近发表
                <span class="w_title">NEW ARTICLES</span>
            </h3>
            <ul>
                <c:forEach var="item"  items="${lastposts}">
                    <li>
                    <a target="_blank" href="/static/http://www.moejam.com/news/25885.html">
							<span class="thumbnail">
								<img src="/static/pic/201808161534414472563431.jpg"
                                     alt="动画《只要别西卜大小姐喜欢就好》公开新视觉图&amp;角色介绍PV"> </span>
                        <span class="text">动画《只要别西卜大小姐喜欢就好》公开新视觉图&amp;角色介绍PV</span>
                        <span class="muted">2018-08-16</span>
                        <span class="muted">阅读(1539)</span>
                    </a>
                </li>
                </c:forEach>
            </ul>
        </div>

        <script type="text/javascript">
            window.onload = function() {
                try {
                    TagCanvas.Start('myTag','tags',{
                        textColour: '#000',
                        outlineColour: '#000',
                        reverse: true,
                        depth: 0.8,
                        maxSpeed: 0.05,
                        weight:true,
                        weightMode:'both'
                    });
                } catch(e) {
                    document.getElementById('myCloudTag').style.display = 'none';
                }
            };
            function changeshape(s) {
                var locks = { hcylinder: 'x', vcylinder: 'y', hring: 'x', vring: 'y', sphere: '' };
                lock = locks[s] || '';
                shape = s;
                TagCanvas.initial = (lock == 'x' && [0,0.2]) || (lock == 'y' && [0.2,0]) || [0.2,0.2];
                restart();
            }
            changeshape('vcylinder')

        </script>
        <div class="widget widget_ui_tags">
            <h3>热门标签
                <span class="w_title">TOP TAGS</span>
            </h3>
            <div id="myCloudTag">
            <canvas width="350" height="300px" id="myTag">
                <p>Anything in here will be replaced on browsers that support the canvas element</p>
            </canvas>
            </div>
            <div id="tags" class="items">
                <ul>
                    <li><a href="#">小说</a></li>
                    <li><a href="http://dojava.cn" style="font-size:30px;">php</a></li>
                    <li><a href="#">python </a></li>
                    <li><a href="#">linux</a></li>
                    <li><a href="#">java</a></li>
                    <li><a href="#">golang</a></li>
                    <li><a href="#">vue</a></li>
                    <li><a href="#">js </a></li>
                    <li><a href="#">html</a></li>
                    <li><a href="#">css</a></li>
                    <li><a href="http://dojava.cn" style="font-size:30px;">php</a></li>
                    <li><a href="#">python </a></li>
                    <li><a href="#" style="color:red">linux</a></li>
                    <li><a href="#">java</a></li>
                    <li><a href="#">golang</a></li>
                    <li><a href="#">vue</a></li>
                    <li><a href="#">js </a></li>
                    <li><a href="#">html</a></li>
                    <li><a href="#">css</a></li>
                    <li><a href="http://dojava.cn" style="font-size:30px;">php</a></li>
                    <li><a href="#">python </a></li>
                    <li><a href="#" style="color:red">linux</a></li>
                    <li><a href="#">java</a></li>
                    <li><a href="#">golang</a></li>
                    <li><a href="#">vue</a></li>
                    <li><a href="#">js </a></li>
                    <li><a href="#">html</a></li>
                    <li><a href="#">css</a></li>
                    <li><a target="_blank" href="/static/http://www.moejam.com/tags/%E6%BC%AB%E7%94%BB/">漫画</a></li>
                    <li><a target="_blank" href="/static/http://www.moejam.com/tags/%E6%BC%AB%E7%94%BB/">漫画</a></li>
                </ul>
            </div>
        </div>
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
                    <a href="/static/http://www.moejam.com/" target="_blank" title="">
							<span class="hzimg">
								<img src="/static/pic/logo.jpg" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="/static/http://www.cnaci.com.cn/" target="_blank" title="">
							<span class="hzimg">
								<img src="/static/pic/a_003.jpg" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="/static/http://comic.sina.com.cn/" target="_blank" title="">
							<span class="hzimg">
								<img src="/static/pic/a_005.gif" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="/static/http://www.hxsd.com/" target="_blank" title="">
							<span class="hzimg">
								<img src="/static/pic/a_005.jpg" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="/static/http://www.actoys.net/" target="_blank" title="">
							<span class="hzimg">
								<img src="/static/pic/ac_logo.gif" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="/static/http://www.cccnews.com.cn/" target="_blank" title="">
							<span class="hzimg">
								<img src="/static/pic/a_004.gif" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="/static/http://www.comicfans.net/" target="_blank" title="">
							<span class="hzimg">
								<img src="/static/pic/a_003.gif" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="/static/http://www.ishangman.com/" target="_blank" title="">
							<span class="hzimg">
								<img src="/static/pic/a_002.jpg" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="/static/http://comic.zongheng.com/" target="_blank" title="">
							<span class="hzimg">
								<img src="/static/pic/a.gif" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="/static/http://www.cos-show.com/" target="_blank" title="">
							<span class="hzimg">
								<img src="/static/pic/COSSHOW.jpg" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="/static/http://www.ifenghui.com/" target="_blank" title="">
							<span class="hzimg">
								<img src="/static/pic/a.jpg" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="/static/http://www.chinacyx.com/" target="_blank" title="">
							<span class="hzimg">
								<img src="/static/pic/a_006.jpg" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="/static/http://www.gxdmw.com/" target="_blank" title="">
							<span class="hzimg">
								<img src="/static/pic/a_002.gif" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="/static/http://www.0dzs.80.hk/" target="_blank" title="">
							<span class="hzimg">
								<img src="/static/pic/a_007.gif" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="/static/http://www.manzhan.com/" target="_blank" title="">
							<span class="hzimg">
								<img src="/static/pic/a_004.jpg" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="/static/http://www.mcpmaid.com/" target="_blank" title="">
							<span class="hzimg">
								<img src="/static/pic/MCP.gif" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="/static/http://www.69ps.com/" target="_blank" title="">
							<span class="hzimg">
								<img src="/static/pic/a_006.gif" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="/static/http://www.sosg.net/" target="_blank" title="">
							<span class="hzimg">
								<img src="/static/pic/sosg.gif" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="/static/http://www.manshen.net/" target="_blank" title="">
							<span class="hzimg">
								<img src="/static/pic/manshen.png" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="/static/http://mcyacg.com/" target="_blank" title="">
							<span class="hzimg">
								<img src="/static/pic/myclogo.gif" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
                <li>
                    <a href="/static/http://www.manwuxian123.com/" target="_blank" title="">
							<span class="hzimg">
								<img src="/static/pic/mwx.jpg" alt="" width="88" height="31">
							</span>
                    </a>
                </li>
            </ul>
        </div>
        <div style="height: 10px;"></div>
        <div class="ffooterlink">
            <ul>
                <li>
                    <a href="/static/http://www.nyato.com/" target="_blank" title="喵特漫展" width="88">喵特漫展</a>
                </li>
                <li>
                    <a href="/static/http://job.nyato.com/" target="_blank" title="喵特工坊" width="88">喵特工坊</a>
                </li>
                <li>
                    <a href="/static/http://www.acgland.com/" target="_blank" title="御宅梦域" width="88">御宅梦域</a>
                </li>
                <li>
                    <a href="/static/http://www.vsochina.com/" target="_blank" title="在线创作" width="88">在线创作 </a>
                </li>
                <li>
                    <a href="/static/http://www.mz-oneacg.com/" target="_blank" title="梦之翼ACG" width="88">梦之翼ACG </a>
                </li>
                <li>
                    <a href="/static/http://acg.shunwang.com/" target="_blank" title="顺网动漫频道" width="88">顺网动漫 </a>
                </li>
                <li>
                    <a href="/static/http://www.comicyu.com/" target="_blank" title="漫域" width="88">漫域 </a>
                </li>
                <li>
                    <a href="/static/http://acg.17173.com/" target="_blank" title="17173动漫频道" width="88">17173动漫 </a>
                </li>
                <li>
                    <a href="/static/http://www.2cyxw.com/" target="_blank" title="二次元小窝" width="88">二次元小窝 </a>
                </li>
                <li>
                    <a href="/static/http://www.wowodm.com/" target="_blank" title="喔喔动漫网" width="88">喔喔动漫 </a>
                </li>
                <li>
                    <a href="/static/http://www.mycacg.com/" target="_blank" title="M.Y.COMIC游园会" width="88">M.Y.COMIC游园会 </a>
                </li>
                <li>
                    <a href="/static/http://www.78dm.net/" target="_blank" title="78动漫" width="88">78动漫 </a>
                </li>
                <li>
                    <a href="/static/http://cartoon.youth.cn/" target="_blank" title="中青网动漫频道" width="88">中青网 </a>
                </li>
                <li>
                    <a href="/static/http://www.mkzhan.com/" target="_blank" title="漫客栈" width="88">漫客栈 </a>
                </li>
                <li>
                    <a href="/static/http://www.91ac.com/" target="_blank" title="91AC" width="88">91AC </a>
                </li>
                <li>
                    <a href="/static/http://www.yaca.cn/" target="_blank" title="YACA动漫" width="88">YACA动漫 </a>
                </li>
                <li>
                    <a href="/static/http://v.61.com/" target="_blank" title="动画片大全" width="88">动画片大全 </a>
                </li>
                <li>
                    <a href="/static/http://www.dmcy.ibicn.com/" target="_blank" title="动漫产业联盟网" width="88">动漫产业联盟 </a>
                </li>
                <li>
                    <a href="/static/http://www.cosplay8.com/" target="_blank" title="COSPLAY中国"
                       width="88">COSPLAY中国 </a>
                </li>
                <li>
                    <a href="/static/https://manhua.163.com/" target="_blank" title="网易漫画" width="88">网易漫画 </a>
                </li>
                <li>
                    <a href="/static/http://cartoon.zwbk.org/" target="_blank" title="动漫百科" width="88">动漫百科 </a>
                </li>
                <li>
                    <a href="/static/http://www.ddc.com.cn/index.html" target="_blank" title="DDC传媒"
                       width="88">DDC传媒 </a>
                </li>
                <li>
                    <a href="/static/http://www.chahua.org/" target="_blank" title="插画中国" width="88">插画中国 </a>
                </li>
                <li>
                    <a href="/static/http://www.dogame.com.cn/" target="_blank" title="游戏兵工厂" width="88">游戏兵工厂 </a>
                </li>
                <li>
                    <a href="/static/http://www.sefor.com.cn/" target="_blank" title="影视动漫谷" width="88">影视动漫谷 </a>
                </li>
                <li>
                    <a href="/static/http://www.youqudao.com/" target="_blank" title="有趣岛" width="88">有趣岛 </a>
                </li>
                <li>
                    <a href="/static/http://www.77acg.com/" target="_blank" title="77动漫" width="88">77动漫 </a>
                </li>
                <li>
                    <a href="/static/http://www.moejam.com/www.zerolh.com" target="_blank" title="ZERO动漫网" width="88">ZERO动漫网 </a>
                </li>
                <li>
                    <a href="/static/http://www.pmxsd.com/" target="_blank" title="神奇宝贝新生代" width="88">神奇宝贝新生代 </a>
                </li>
                <li>
                    <a href="/static/http://bbs.comicdd.com/" target="_blank" title="动漫东东" width="88">动漫东东 </a>
                </li>
                <li>
                    <a href="/static/http://www.konotaku.com/" target="_blank" title="现音研" width="88">现音研 </a>
                </li>
                <li>
                    <a href="/static/http://www.kamigami.org/forum.php" target="_blank" title="诸神字幕组"
                       width="88">诸神字幕组 </a>
                </li>
                <li>
                    <a href="/static/http://www.e2046.com/" target="_blank" title="e2046" width="88">e2046 </a>
                </li>
                <li>
                    <a href="/static/http://www.5coser.com/" target="_blank" title="桐萌社-四川天府Cos同萌会" width="88">桐萌社 </a>
                </li>
                <li>
                    <a href="/static/http://www.missevan.com/" target="_blank" title="Missevan动漫新闻网"
                       width="88">Missevan </a>
                </li>
                <li>
                    <a href="/static/http://www.zhansu.com/" target="_blank" title="站速在线绘图" width="88">站速 </a>
                </li>
                <li>
                    <a href="/static/http://bcy.net/" target="_blank" title="半次元cosplay频道" width="88">半次元cosplay频道 </a>
                </li>
                <li>
                    <a href="/static/http://www.ifenghui.com/hudong" target="_blank" title="《锋绘》读者互动平台"
                       width="88">锋绘 </a>
                </li>
                <li>
                    <a href="/static/http://www.legames.cn/" target="_blank" title="Legames" width="88">Legames </a>
                </li>
                <li>
                    <a href="/static/http://www.yimoe.cc/" target="_blank" title="翼萌动漫" width="88">翼萌动漫 </a>
                </li>
                <li>
                    <a href="/static/http://www.comicst.com/" target="_blank" title="漫社堂" width="88">漫社堂 </a>
                </li>
                <li>
                    <a href="/static/http://www.manzhan8.com/" target="_blank" title="manzhan8" width="88">漫展吧</a>
                </li>
                <li>
                    <a href="/static/http://danmu.tudou.com/" target="_blank" title="tudou" width="88">土豆弹幕</a>
                </li>
                <li>
                    <a href="/static/http://www.c3acg.com/" target="_blank" title="C3ACG" width="88">C3ACG</a>
                </li>
                <li>
                    <a href="/static/http://www.pangci.cc/" target="_blank" title="胖次网" width="88">胖次网</a>
                </li>
                <li>
                    <a href="/static/http://www.youxiacg.com/" target="_blank" title="柚栖二次元" width="88">柚栖二次元</a>
                </li>
                <li>
                    <a href="/static/http://www.acglivefans.com/" target="_blank" title="二次元现场" width="88">二次元现场</a>
                </li>
                <li>
                    <a href="/static/http://gulugulu.cn/" target="_blank" title="咕噜咕噜" width="88">咕噜咕噜</a>
                </li>
                <li>
                    <a href="/static/http://www.anicoga.com/" target="_blank" title="ANICOGA" width="88">ANICOGA</a>
                </li>
                <li>
                    <a href="/static/http://www.sunacg.net/" target="_blank" title="阳光菌动漫" width="88">阳光菌动漫</a>
                </li>
                <li>
                    <a href="/static/http://www.aimanzhan.com/" target="_blank" title="爱漫展" width="88">爱漫展</a>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="bottom_nav">
    <ul>
        <li>
            <a href="/static/#">站点地图</a>
        </li>
        <li>
            <a href="/static/#">关于我们</a>
        </li>
        <li>
            <a href="/static/#">招聘信息</a>
        </li>
        <li>
            <a href="/static/http://www.moejam.com/about/%E6%84%8F%E8%A7%81%E5%8F%8D%E9%A6%88">意见反馈</a>
        </li>
        <li>
            <a href="/static/http://www.moejam.com/about/impunity">免责声明</a>
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
                <img src="/static/pic/logo.png" alt="cici资讯网">
            </div>
            <div class="ftext">关注我们</div>
            <div class="ficon">
					<span>
						<a href="/static/http://weibo.com/acgstage" target="_blank">
							<img src="/static/pic/weibo.png" alt="微博">
						</a>
					</span>
                <span class="fwx">
						<a>
							<img src="/static/pic/weixin.png" alt="微信">
							<div class="app-qrcode">
								<img src="/static/pic/qrcode.jpg" alt="微信号">
							</div>
						</a>
					</span>
                <span>
						<a href="/static/http://www.moejam.com/feed.php" target="_blank">
							<img src="/static/pic/icon4.png" alt="feed">
						</a>
					</span>
            </div>
        </div>
    </div>
</div>
<footer class="footer">
    <div class="container">
        <p>Copyright © 2008 - 2017 Moejam All Rights Reserved.&nbsp;&nbsp;
            <a href="/static/http://www.miitbeian.gov.cn/" target="_blank">粤ICP备12041107号-3</a>&nbsp;&nbsp;
            &nbsp;&nbsp;Powered by Z-blogPHP</p>
    </div>
</footer>
<div class="bottom_tools">
    <a id="scrollUp" href="javascript:;" title="飞回顶部"></a>
</div>
<script type="text/javascript" src="/static/js/bootstrap.js"></script>
<script type="text/javascript" src="/static/js/style.js"></script>
<script type="text/javascript">
    var zbPath = "http://www.moejam.com/",
        anbgColor = "none",
        anbgSpeed = "10",
        anbgPnum = 38;
</script>
<!-- <script type="text/javascript">document.writeln(unescape("%3Cscript src=\""+zbPath+"zb_users/plugin/animatebg/main.js\" type=\"text/javascript\"%3E%3C/script%3E"));</script><script src="/static/js/main.js" type="text/javascript"></script><div id="AnimateBg_Con"><canvas id="AnimateBg" style="position:fixed;top:0;left:0;background:none;z-index:-1" width="1366" height="560"></canvas></div> -->
<!-- 登录 -->
<div class="loginmask"></div>

<div id="loginalert">

    <div class="pd20 loginpd">
        <h3>
            <i class="closealert fr"></i>
            <div class="clear"></div>
        </h3>
        <div class="loginwrap">
            <div class="loginh">
                <div class="fl">会员登录</div>
                <div class="fr">还没有账号
                    <a id="sigup_now" href="javascript:void(0);">立即注册</a>
                </div>
            </div>
            <h3>
                <span class="fl">邮箱登录</span>
                <span class="login_warning" id="errmsg" style="display: none;">用户名或密码错误</span>
                <div class="clear"></div>
            </h3>
            <form action="#" id="login_form">
                <div class="logininput">
                    <input type="text" id="username" name="username" required class="loginusername" value=""
                           placeholder="邮箱/用户名"/>
                    <input type="password" id="password" class="loginuserpasswordt" required value="" placeholder="密码"/>
                    <input type="password" name="password" class="loginuserpasswordp" style="display:none"/>
                </div>
                <div class="loginbtn">
                    <div class="loginsubmit fl">
                        <input class="btn btn-success" type="button" id="login" style="line-height: 0;" value="登录"/>
                    </div>
                    <div class="fl" style="margin:26px 0 0 0;">
                        <input type="checkbox" id="rmbUser" checked="true"/>保持登录
                    </div>
                    <div class="fr" style="margin:26px 0 0 0;">
                        <a href="/static//">忘记密码?</a>
                    </div>
                    <div class="clear"></div>
                </div>
            </form>
        </div>
    </div>

    <div class="thirdlogin">
        <div class="pd50">
            <h4>用第三方帐号直接登录</h4>
            <ul>
                <li id="sinal">
                    <a href="/static//">微博账号登录</a>
                </li>
                <li id="qql">
                    <a href="/static//">QQ账号登录</a>
                </li>
            </ul>
            <div class="clear"></div>
        </div>
    </div>

</div>
<!--loginalert end-->

<!--注册-->
<div id="reg_setp">
    <div class="back_setp">返回</div>
    <div class="blogo"></div>
    <div id="setp_quicklogin">
        <div>
            <div class="loginwrap">
                <div class="loginh">
                    <div class="fl">用户注册</div>
                </div>
                <h3>
                    <span class="fl">请填写完整</span>
                    <span class="login_warning" id="errmsg2" style="display: none;">用户名或密码错误</span>
                    <div class="clear"></div>
                </h3>
                <form action="/register" method="post" id="reg-form">
                    <div class="logininput">
                        <input type="text" id="uid" name="userLogin" class="loginusername" value="" required placeholder="用户名"/>
                        <input type="text" id="nickname" name="userNicename" class="loginusername" value="" required placeholder="昵称"/>
                        <input type="email" id="email" name="userEmail" class="loginusername" value="" required placeholder="邮箱"/>
                        <input type="password" id="password1" name="loginusername" required class="loginusername" value="" placeholder="密码"/>
                        <input type="password" id="password2" class="loginuserpasswordt" required value="" placeholder="确认密码"/>
                        <input type="password" id="rpasswd" name="userPass" style="display:none;"/>
                    </div>
                    <div class="loginbtn">
                        <div class="loginsubmit fl">
                            <input class="btn btn-success" type="submit" id="register" style="line-height: 0;" value="注册"/>
                        </div>
                        <div class="clear"></div>
                    </div>
                </form>
            </div>
        </div>

        <!--<h3>您可以选择以下第三方帐号直接登录，一分钟完成注册</h3>-->
        <!--<ul class="quicklogin_socical">-->
        <!--<li class="quicklogin_socical_weibo"><a href="/">微博帐号注册</a></li>-->
        <!--<li class="quicklogin_socical_qq" style="margin:0;"><a href="/">QQ帐号注册</a></li>-->
        <!--</ul>-->
    </div>
</div><!--reg_setp end-->


</body>

</html>
