<%--
  Created by IntelliJ IDEA.
  User: panyiwen
  Date: 18-8-23
  Time: 下午8:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.easing.min.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script>
<script type="text/javascript" src="js/md5.js"></script>
<script type="text/javascript" src="js/jquery.form.js"></script>

<link rel="stylesheet" type="text/css" href="css/style.css"/>

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
                <form action="/register" method="post" id="reg-form" onsubmit="return doregister()">
                    <div class="logininput">
                        <input type="text" id="uid" name="userLogin" class="loginusername" value="" required
                               placeholder="用户名"/><label style="color:red; display: none;" id="uidmsg">该用户名已被注册</label>
                        <input type="text" id="nickname" name="userNicename" class="loginusername" value="" required
                               placeholder="昵称"/>
                        <input type="email" id="email" name="userEmail" class="loginusername" value="" required
                               placeholder="邮箱"/>
                        <input type="password" id="password1" required class="loginusername"
                               value="" placeholder="密码"/>
                        <input type="password" id="password2" class="loginuserpassword" required value=""
                               placeholder="确认密码"/>
                        <input type="hidden" id="rpasswd" name="userPass" />
                    </div>
                    <div class="loginbtn">
                        <div class="loginsubmit fl">
                            <input class="btn btn-success" type="submit" id="register" style="line-height: 0;"
                                   value="注册"/>
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