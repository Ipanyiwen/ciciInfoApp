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
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.easing.min.js"></script>
    <script type="text/javascript" src="js/login.js"></script>
    <script type="text/javascript" src="js/jquery.cookie.js"></script>
    <script type="text/javascript" src="js/md5.js"></script>
    <script type="text/javascript" src="js/jquery.form.js"></script>

    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <link rel="stylesheet" type="text/css" href="css/prism.css">
    <link rel="stylesheet" id="_bootstrap-css" href="css/bootstrap.css" type="text/css" media="all">
    <link rel="stylesheet" id="_fontawesome-css" href="css/font-awesome.css" type="text/css" media="all">
    <link rel="stylesheet" id="_main-css" href="css/main.css" type="text/css" media="all">
    <link rel="shortcut icon" href="pic/favicon.ico">

    <!--[if lt IE 9]>
    <script src="js/html5.min.js"></script><![endif]-->
</head>
<body class="archive category category-1 site-layout-2">
<header class="header">
    <div class="container">
        <h1 class="logo"><a href="<%=basePath%>" title="cici资讯网"><img src="pic/logo.png"></a></h1>
        <ul class="site-nav site-navbar">
            <li><a href="<%=basePath%>">首页</a></li>
            <li id="navbar-category-1"><a href="http://www.moejam.com/news">资讯</a></li>
            <li id="navbar-category-2"><a href="http://www.moejam.com/manzhan">博客</a></li>
            <li id="navbar-category-3"><a href="http://www.moejam.com/doujin">资源</a></li>
            <li id="navbar-category-4"><a href="http://www.moejam.com/goods">其他</a></li>
        </ul>
        <span class="navto-search"><a href="javascript:;" class="search-show active"><i
                class="fa fa-search"></i></a></span>

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
        <form method="get" class="site-search-form" action="http://www.moejam.com/search.php?act=search">
            <input class="search-input" name="q" placeholder="输入关键字" type="text">
            <button class="search-btn" type="submit"><i class="fa fa-search"></i></button>
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
                <h1><i class="i itag tag-channel"></i>资讯</h1>
            </div>
            <article class="excerpt excerpt-1">
                <div class="focus thumb"><a href="http://www.moejam.com/news/25889.html"
                                            title="Alim、tri-Ace、集英社开始多媒体项目“Mist Gears”"> <img
                        src="pic/201808171534484443600302.jpg"></a>
                </div>
                <header>
                    <h2><a target="_blank" href="http://www.moejam.com/news/25889.html"
                           title="Alim、tri-Ace、集英社开始多媒体项目“Mist Gears”">Alim、tri-Ace、集英社开始多媒体项目“Mist Gears”</a></h2>
                </header>
                <p class="note">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 周三，游戏公司Alim、tri-Ace和集英社联合宣布，他们正在合作一个多媒体项目“Mist Ge...</p>
                <p class="meta"><a href="http://www.moejam.com/news" rel="category">资讯</a>
                    <time></time>
                    <span class="pvs">|</span><span class="author">musquall</span>
                    <time>2018-08-17</time>
                    <span class="pv">阅读(88)</span><span class="pvtags"></span>
                </p>
            </article>
            <article class="excerpt excerpt-2">
                <div class="focus thumb"><a href="http://www.moejam.com/news/25887.html"
                                            title="《梦王国与沉睡的100名王子》公布第二张关键视觉图"> <img
                        src="pic/201808171534477706839605.jpg"></a>
                </div>
                <header>
                    <h2><a target="_blank" href="http://www.moejam.com/news/25887.html"
                           title="《梦王国与沉睡的100名王子》公布第二张关键视觉图">《梦王国与沉睡的100名王子》公布第二张关键视觉图</a></h2></header>
                <p class="note">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 周四，TV版动画《梦王国与沉睡的100名王子（日文：夢王国と眠れる100人の王子様）》在其官方网站...</p>
                <p class="meta"><a href="http://www.moejam.com/news" rel="category">资讯</a>
                    <time></time>
                    <span class="pvs">|</span><span class="author">musquall</span>
                    <time>2018-08-17</time>
                    <span class="pv">阅读(284)</span><span class="pvtags"></span>
                </p>
            </article>
            <article class="excerpt excerpt-3">
                <div class="focus thumb"><a href="http://www.moejam.com/news/25886.html"
                                            title="LiSA、蓝井艾露将为动画《刀剑神域 Alicization》演唱主题曲"> <img
                        src="pic/201807101531196808240555.jpg"></a>
                </div>
                <header>
                    <h2><a target="_blank" href="http://www.moejam.com/news/25886.html"
                           title="LiSA、蓝井艾露将为动画《刀剑神域 Alicization》演唱主题曲">LiSA、蓝井艾露将为动画《刀剑神域 Alicization》演唱主题曲</a></h2>
                </header>
                <p class="note">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 周四，TV版动画《刀剑神域 Alicization（日语：ソードアート・オンライン アリシゼーショ...</p>
                <p class="meta"><a href="http://www.moejam.com/news" rel="category">资讯</a>
                    <time></time>
                    <span class="pvs">|</span><span class="author">musquall</span>
                    <time>2018-08-17</time>
                    <span class="pv">阅读(407)</span><span class="pvtags"></span>
                </p>
            </article>
            <article class="excerpt excerpt-4">
                <div class="focus thumb"><a href="http://www.moejam.com/news/25885.html"
                                            title="动画《只要别西卜大小姐喜欢就好》公开新视觉图&amp;角色介绍PV"> <img
                        src="pic/201808161534414472563431.jpg"></a>
                </div>
                <header>
                    <h2><a target="_blank" href="http://www.moejam.com/news/25885.html"
                           title="动画《只要别西卜大小姐喜欢就好》公开新视觉图&amp;角色介绍PV">动画《只要别西卜大小姐喜欢就好》公开新视觉图&amp;角色介绍PV</a></h2></header>
                <p class="note">matoba原作的漫画《只要别西卜大小姐喜欢就好》即将改编为动画，由LIDENFILMS负责制作。官方日前公开了新视觉图和角色介绍PV。从天界堕落，成为恶魔的前...</p>
                <p class="meta"><a href="http://www.moejam.com/news" rel="category">资讯</a>
                    <time></time>
                    <span class="pvs">|</span><span class="author">菜菜</span>
                    <time>2018-08-16</time>
                    <span class="pv">阅读(2121)</span><span class="pvtags"></span>
                </p>
            </article>
            <article class="excerpt excerpt-5">
                <div class="focus thumb"><a href="http://www.moejam.com/news/25884.html" title="动画《一拳超人》第二季将于2019年春季播出">
                    <img src="pic/201808161534413232810781.jpg"></a>
                </div>
                <header>
                    <h2><a target="_blank" href="http://www.moejam.com/news/25884.html" title="动画《一拳超人》第二季将于2019年春季播出">动画《一拳超人》第二季将于2019年春季播出</a>
                    </h2></header>
                <p class="note">ONE原作、村田雄介负责绘画的漫画《一拳超人》，其改编动画即将制作第二季，故事将会进入饿狼篇。官方日前公开主视觉图、特报影像。动画预计在2019年4月播出。故事...</p>
                <p class="meta"><a href="http://www.moejam.com/news" rel="category">资讯</a>
                    <time></time>
                    <span class="pvs">|</span><span class="author">菜菜</span>
                    <time>2018-08-16</time>
                    <span class="pv">阅读(2121)</span><span class="pvtags"></span>
                </p>
            </article>
            <article class="excerpt excerpt-6">
                <div class="focus thumb"><a href="http://www.moejam.com/news/25883.html"
                                            title="游戏《甲铁城的卡巴内利 -乱- 起始的轨跡》将于9月发售"> <img
                        src="pic/201808161534409317231711.jpg"></a>
                </div>
                <header>
                    <h2><a target="_blank" href="http://www.moejam.com/news/25883.html"
                           title="游戏《甲铁城的卡巴内利 -乱- 起始的轨跡》将于9月发售">游戏《甲铁城的卡巴内利 -乱- 起始的轨跡》将于9月发售</a></h2></header>
                <p class="note">WIT STUDIO制作的原创动画《甲铁城的卡巴内利》即将推出游戏《甲铁城的卡巴内利 -乱- 起始的轨跡》。官方表示游戏故事内容将为正统续篇，与动画本篇和剧场版...</p>
                <p class="meta"><a href="http://www.moejam.com/news" rel="category">资讯</a>
                    <time></time>
                    <span class="pvs">|</span><span class="author">菜菜</span>
                    <time>2018-08-16</time>
                    <span class="pv">阅读(2178)</span><span class="pvtags"></span>
                </p>
            </article>
            <article class="excerpt excerpt-7">
                <div class="focus thumb"><a href="http://www.moejam.com/news/25882.html" title="车田正美漫画《男坂》将进入新篇章"> <img
                        src="pic/201808161534390655898654.jpg"></a>
                </div>
                <header>
                    <h2><a target="_blank" href="http://www.moejam.com/news/25882.html" title="车田正美漫画《男坂》将进入新篇章">车田正美漫画《男坂》将进入新篇章</a>
                    </h2></header>
                <p class="note">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 周二，漫画家车田正美的官方网站宣布，车田正美的漫画《男坂》将从8月18日起进入新篇章《天下泰平編》...</p>
                <p class="meta"><a href="http://www.moejam.com/news" rel="category">资讯</a>
                    <time></time>
                    <span class="pvs">|</span><span class="author">musquall</span>
                    <time>2018-08-16</time>
                    <span class="pv">阅读(2685)</span><span class="pvtags"></span>
                </p>
            </article>
            <article class="excerpt excerpt-8">
                <div class="focus thumb"><a href="http://www.moejam.com/news/25881.html"
                                            title="剧场版动画《我想吃掉你的胰脏》观影特典、主创致敬情报公开"> <img
                        src="pic/201808161534389138153258.jpg"></a>
                </div>
                <header>
                    <h2><a target="_blank" href="http://www.moejam.com/news/25881.html"
                           title="剧场版动画《我想吃掉你的胰脏》观影特典、主创致敬情报公开">剧场版动画《我想吃掉你的胰脏》观影特典、主创致敬情报公开</a></h2></header>
                <p class="note">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 周二，剧场版动画《我想吃掉你的胰脏（日语：君の膵臓をたべたい）》官方网站公布了剧场版动画的观影特典...</p>
                <p class="meta"><a href="http://www.moejam.com/news" rel="category">资讯</a>
                    <time></time>
                    <span class="pvs">|</span><span class="author">musquall</span>
                    <time>2018-08-16</time>
                    <span class="pv">阅读(2642)</span><span class="pvtags"></span>
                </p>
            </article>
            <article class="excerpt excerpt-9">
                <div class="focus thumb"><a href="http://www.moejam.com/news/25880.html" title="真人电影《银魂2》冈田将生“桂”新剧照公开">
                    <img src="pic/201808161534388278492349.jpg"></a>
                </div>
                <header>
                    <h2><a target="_blank" href="http://www.moejam.com/news/25880.html" title="真人电影《银魂2》冈田将生“桂”新剧照公开">真人电影《银魂2》冈田将生“桂”新剧照公开</a>
                    </h2> <i class="public-icon-first">银魂2</i>&nbsp;<i class="public-icon-first">真人版</i>&nbsp;<i
                        class="public-icon-first">冈田将生</i>&nbsp;
                </header>
                <p class="note">　　空知英秋原作改编的真人电影《银魂2 规定就是为了被打破而存在的》中，冈田将生饰演的桂小太郎剧照公开。&nbsp;　　《银魂2 规定就是为了被打破而存在的》将...</p>
                <p class="meta"><a href="http://www.moejam.com/news" rel="category">资讯</a>
                    <time></time>
                    <span class="pvs">|</span><span class="author">十月轻舞</span>
                    <time>2018-08-16</time>
                    <span class="pv">阅读(2708)</span><span class="pvtags"></span>
                </p>
            </article>
            <article class="excerpt excerpt-10">
                <div class="focus thumb"><a href="http://www.moejam.com/news/25879.html" title="《恋爱的白熊》新角色及视觉图公开"> <img
                        src="pic/201808161534387298635143.jpg"></a>
                </div>
                <header>
                    <h2><a target="_blank" href="http://www.moejam.com/news/25879.html" title="《恋爱的白熊》新角色及视觉图公开">《恋爱的白熊》新角色及视觉图公开</a>
                    </h2> <i class="public-icon-first">恋爱的白熊</i>&nbsp;<i class="public-icon-first">视觉图</i>&nbsp;
                </header>
                <p class="note">　　根据日本漫画家“衣”在月刊《COMIC GENE》上连载的漫画《恋爱的白熊》改编的动画公开最新主视觉图。　　《恋爱的白熊》故事讲述在纯白的北极雪原，一只大白...</p>
                <p class="meta"><a href="http://www.moejam.com/news" rel="category">资讯</a>
                    <time></time>
                    <span class="pvs">|</span><span class="author">十月轻舞</span>
                    <time>2018-08-16</time>
                    <span class="pv">阅读(1950)</span><span class="pvtags"></span>
                </p>
            </article>
            <div class="pagination">
                <ul>
                    <li><a href="http://www.moejam.com/news">‹‹</a></li>
                    <li class="active"><span>1</span></li>
                    <li><a href="http://www.moejam.com/news_2">2</a></li>
                    <li><a href="http://www.moejam.com/news_3">3</a></li>
                    <li><a href="http://www.moejam.com/news_4">4</a></li>
                    <li><a href="http://www.moejam.com/news_5">5</a></li>
                    <li><a href="http://www.moejam.com/news_6">6</a></li>
                    <li><a href="http://www.moejam.com/news_7">7</a></li>
                    <li><a href="http://www.moejam.com/news_8">8</a></li>
                    <li><a href="http://www.moejam.com/news_9">9</a></li>
                    <li><a href="http://www.moejam.com/news_10">10</a></li>
                    <li class="next-page"><a href="http://www.moejam.com/news_2">下一页</a></li>
                    <li><a href="http://www.moejam.com/news_2032">››</a></li>
                    <li><span>共 2032 页</span></li>
                </ul>
            </div>
        </div>
    </div>
    <aside class="sidebar">
        <div class="widget widget_ui_posts_list">
            <h3>热门文章<span class="w_title">TOP ARTICLES</span></h3>
            <ul>
                <li><span>1</span><a href="http://www.moejam.com/manzhan/23289.html" title="2017中国（苏州）电子竞技博览会金鸡湖畔火热开幕">2017中国（苏州）电子竞技博览会金鸡湖畔火热开幕</a>
                </li>
                <li><span>2</span><a href="http://www.moejam.com/news/24032.html" title="《名侦探柯南 纯黑的噩梦》2018年2月上映4D版">《名侦探柯南
                    纯黑的噩梦》2018年2月上映4D版</a></li>
                <li><span>3</span><a href="http://www.moejam.com/news/24436.html" title="肉番《甜蜜惩罚 我是看守专用宠物》动画化">肉番《甜蜜惩罚
                    我是看守专用宠物》动画化</a></li>
                <li><span>4</span><a href="http://www.moejam.com/news/23390.html" title="“赌博吧！”日本TBS电视台制作真人秀节目“人生逆转战斗”">“赌博吧！”日本TBS电视台制作真人秀节目“人生逆转战斗”</a>
                </li>
                <li><span>5</span><a href="http://www.moejam.com/news/24979.html" title="漫画《政宗君的复仇》将在3话后完结">漫画《政宗君的复仇》将在3话后完结</a>
                </li>
                <li><span>6</span><a href="http://www.moejam.com/news/24042.html" title="动画《伊藤润二 》将会有12话TV版和2话OVA">动画《伊藤润二
                    》将会有12话TV版和2话OVA</a></li>
                <li><span>7</span><a href="http://www.moejam.com/news/24907.html" title="富坚义博《灵异E接触》LINE表情上线">富坚义博《灵异E接触》LINE表情上线</a>
                </li>
                <li><span>8</span><a href="http://www.moejam.com/news/24852.html" title="经典游戏《樱花大战》即将展开新作企划">经典游戏《樱花大战》即将展开新作企划</a>
                </li>
                <li><span>9</span><a href="http://www.moejam.com/news/24040.html" title="赌博题材漫画《噬谎者》即将完结">赌博题材漫画《噬谎者》即将完结</a>
                </li>
                <li><span>10</span><a href="http://www.moejam.com/news/23055.html" title="初音未来V4中文版发布会梦域动漫特别专稿">初音未来V4中文版发布会梦域动漫特别专稿</a>
                </li>
            </ul>
        </div>
        <div class="widget widget_ui_posts">
            <h3>最近发表<span class="w_title">NEW ARTICLES</span></h3>
            <ul>
                <li><a target="_blank" href="http://www.moejam.com/news/25889.html"><span class="thumbnail"><img
                        src="pic/201808171534484443600302.jpg" alt="Alim、tri-Ace、集英社开始多媒体项目“Mist Gears”"> </span><span
                        class="text">Alim、tri-Ace、集英社开始多媒体项目“Mist Gears”</span><span
                        class="muted">2018-08-17</span><span class="muted">阅读(88)</span></a>
                </li>
                <li><a target="_blank" href="http://www.moejam.com/manzhan/25888.html"><span class="thumbnail"><img
                        src="%E8%B5%84%E8%AE%AF_%E6%A2%A6%E5%9F%9F%E5%8A%A8%E6%BC%AB%E7%BD%91_files/1534318980921.html"
                        alt="合肥第九届动漫欢乐节即将来袭"> </span><span class="text">合肥第九届动漫欢乐节即将来袭</span><span class="muted">2018-08-17</span><span
                        class="muted">阅读(274)</span></a>
                </li>
                <li><a target="_blank" href="http://www.moejam.com/news/25887.html"><span class="thumbnail"><img
                        src="pic/201808171534477706839605.jpg" alt="《梦王国与沉睡的100名王子》公布第二张关键视觉图"> </span><span
                        class="text">《梦王国与沉睡的100名王子》公布第二张关键视觉图</span><span class="muted">2018-08-17</span><span
                        class="muted">阅读(284)</span></a>
                </li>
                <li><a target="_blank" href="http://www.moejam.com/news/25886.html"><span class="thumbnail"><img
                        src="pic/201807101531196808240555.jpg" alt="LiSA、蓝井艾露将为动画《刀剑神域 Alicization》演唱主题曲"> </span><span
                        class="text">LiSA、蓝井艾露将为动画《刀剑神域 Alicization》演唱主题曲</span><span
                        class="muted">2018-08-17</span><span class="muted">阅读(407)</span></a>
                </li>
                <li><a target="_blank" href="http://www.moejam.com/news/25885.html"><span class="thumbnail"><img
                        src="pic/201808161534414472563431.jpg" alt="动画《只要别西卜大小姐喜欢就好》公开新视觉图&amp;角色介绍PV"> </span><span
                        class="text">动画《只要别西卜大小姐喜欢就好》公开新视觉图&amp;角色介绍PV</span><span class="muted">2018-08-16</span><span
                        class="muted">阅读(2121)</span></a>
                </li>
                <li><a target="_blank" href="http://www.moejam.com/news/25884.html"><span class="thumbnail"><img
                        src="pic/201808161534413232810781.jpg" alt="动画《一拳超人》第二季将于2019年春季播出"> </span><span class="text">动画《一拳超人》第二季将于2019年春季播出</span><span
                        class="muted">2018-08-16</span><span class="muted">阅读(2121)</span></a>
                </li>
            </ul>
        </div>
        <div class="widget widget_categories">
            <h3>网站分类<span class="w_title">TOP CATELOG</span></h3>
            <ul>
                <li><a href="http://www.moejam.com/news">资讯</a></li>
                <li><a href="http://www.moejam.com/manzhan">漫展</a></li>
                <li><a href="http://www.moejam.com/doujin">同人</a></li>
                <li><a href="http://www.moejam.com/goods">周边</a></li>
            </ul>
        </div>
    </aside>
</section>
<div class="ffooter">
    <div class="container">
        <div class="ffooterl">
            <h4>关于梦域动漫网</h4>
            <ul>
                梦域动漫网为您提供一站式ACG服务新体验。动漫资讯、展会信息、宅文化、周边情报，最新的动漫资讯、活动情报一网打尽，致力于打造国内最新、最快的动漫交流平台。
                <br><br>
                版权申明：本站资讯情报由注册用户发布，本网站无法鉴别所上传图片或文字的知识版权，任何单位或个人认为本网站中的网页或链接内容可能涉嫌侵犯其知识产
                权，应该及时向本网站提出书面权利通知，并提供身份证明、权属证明及详细侵权情况证明。本网站在收到上述文件后，将会尽快删除相关内容或断开相关链接。
            </ul>
        </div>
        <div class="ffooterr">
            <div class="fimg"><img src="pic/logo.png" alt="梦域动漫网"></div>
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
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/style.js"></script>


<script type="text/javascript">var zbPath = "http://www.moejam.com/", anbgColor = "none", anbgSpeed = "10",
    anbgPnum = 38;</script>
<!-- <script type="text/javascript">document.writeln(unescape("%3Cscript src=\""+zbPath+"zb_users/plugin/animatebg/main.js\" type=\"text/javascript\"%3E%3C/script%3E"));</script><script src="js/main.js" type="text/javascript"></script><div id="AnimateBg_Con"><canvas id="AnimateBg" style="position:fixed;top:0;left:0;background:none;z-index:-1" width="1366" height="560"></canvas></div> -->
</div>


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