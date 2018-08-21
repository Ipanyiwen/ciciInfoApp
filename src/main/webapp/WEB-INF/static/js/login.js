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


    $('#login').click(function (e) {


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
                    k && (k = !1, $("#loginalert").animate({top: -600}, 400, "easeOutQuart", function () {
                        $("#loginalert").hide();
                        k = !0
                    }), $(".loginmask").fadeOut(500))

                    $("#plogin").hide();
                    $("#userinfo").show();
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


//校验成功函数
function success(Obj, counter) {
    Obj.parent().parent().removeClass('has-error').addClass('has-success');
    $('.tips').eq(counter).hide();
    $('.glyphicon-ok').eq(counter).show();
    $('.glyphicon-remove').eq(counter).hide();
    check[counter] = true;

}

// 校验失败函数
function fail(Obj, counter, msg) {
    Obj.parent().parent().removeClass('has-success').addClass('has-error');
    $('.glyphicon-remove').eq(counter).show();
    $('.glyphicon-ok').eq(counter).hide();
    $('.tips').eq(counter).text(msg).show();
    check[counter] = false;
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




