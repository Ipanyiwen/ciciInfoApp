$(document).ready(function () {
    var k = !0;

    $(".loginmask").css("opacity", 0.8);

    if ($.browser.version <= 6) {
        $('#reg_setp,.loginmask').height($(document).height());
    }

    $(".thirdlogin ul li:odd").css({marginRight: 0});

    $(".openlogin").click(function () {
        k && "0px" != $("#loginalert").css("top") && ($("#loginalert").show(), $(".loginmask").fadeIn(500), $("#loginalert").animate({top: 0}, 400, "easeOutQuart"))
    });

    $(".loginmask,.closealert").click(function () {
        k && (k = !1, $("#loginalert").animate({top: -600}, 400, "easeOutQuart", function () {
            $("#loginalert").hide();
            k = !0
        }), $(".loginmask").fadeOut(500))
    });


    $("#sigup_now,.reg a").click(function () {
        $("#reg_setp,#setp_quicklogin").show();
        $("#reg_setp").animate({left: 0}, 500, "easeOutQuart")
    });

    $(".back_setp").click(function () {
        "block" == $("#setp_quicklogin").css("display") && $("#reg_setp").animate({left: "100%"}, 500, "easeOutQuart", function () {
            $("#reg_setp,#setp_quicklogin").hide()
        })
    });


    if ($.cookie("rmbUser") == "true") {
        $("#rmbUser").prop("checked", true);
        $("#username").val($.cookie("userName"));
        $("#password").val("****************");
    }

    $("#uid").blur(function () {

        var uid = $("#uid").val();
        $.ajax({
            method:"post",
            data: {"uid": uid},
            url:"/checkuid",
            success: function (result) {
                if(result != "OK"){
                    $("#uidmsg").show();
                    $("#uid").focus();
                }else {
                    $("#uidmsg").hide();
                }
            }
        });
    });

    $("#reg-form").ajaxForm(function (data) {
        alert(data['msg']);
        window.location.href="index";
    });
    
    // $("#reg-form").onsubmit(function () {
    //
    // })


    $('#login').click(function (e) {

        if($("#password").val() == "" || $("#username").val() == "")
            return;
        if ($("#password").val() == "****************") {
            $("#password").val($.cookie("passWord"));
            if ($("#rmbUser").prop("checked") == false) {
                $.cookie("rmbUser", "false", {
                    expires: -1
                });
                $.cookie("userName", '', {
                    expires: -1
                });
                $.cookie("passWord", '', {
                    expires: -1
                });
            }
        } else {

            saveUserInfo();
        }
        $.ajax({
            url: "/login",
            method: "post",
            data: {'username': $("#username").val(), 'password': $("#password").val()},
            success: function (data) {
                if(data["msg"] == "success"){

                    $('#errmsg').hide();
                    k && (k = !1, $("#loginalert").animate({top: -600}, 1, "easeOutQuart", function () {
                        $("#loginalert").hide();
                        k = !0
                    }), $(".loginmask").fadeOut(1))
                    location.reload();


                    // $("#plogin").hide();
                    // $("#userinfo").show();
                    // $("#user-photo").src=data["user"]["pic"];

                    //alert(data["user"]["userLogin"]);
                }else{
                    $('#errmsg').show();
                    $("#username").val("");
                    $("#password").val("")

                }
            }


        });

    });

});

function doregister() {
    if(!checkPassword())
        return false;
    else{
        var passwd = $.md5($.md5($("#password1").val()));
        $("#rpasswd").val(passwd);
        return true;
    }
}

function checkPassword(){
    var p1 = $("#password1").val();
    var p2 = $("#password2").val();
    if(p1 == "" || p1 == null || p2 == "" || p2 == null) return false;

    if(p1 != p2)
        return false;
    else
        return true;
}


function saveUserInfo() {

    if ($("#rmbUser").prop("checked") == true) {
        var userName = $("#username").val();
        var passWord = $.md5($.md5($("#password").val()));
        $("#password").val(passWord);
        $.cookie("rmbUser", "true", {
            expires: 7
        });
        // 存储一个带7天期限的 cookie
        $.cookie("userName", userName, {
            expires: 7
        });
        // 存储一个带7天期限的 cookie
        $.cookie("passWord", passWord, {
            expires: 7
        });
    }
    else {
        var passWord = $.md5($.md5($("#password").val()));
        $("#password").val(passWord);
        $.cookie("rmbUser", "false", {
            expires: -1
        });
        $.cookie("userName", '', {
            expires: -1
        });
        $.cookie("passWord", '', {
            expires: -1
        });
    }
}




