var check = [false, false, false, false, false];
var password;
$(function () {

// 用户名匹配
    $('#newUser').find('input').eq(0).change(function () {
        if ($(this).val().length < 5) {
            fail($(this), 0, '用户名太短，不能少于5个字符');
        }
        else {
        	//1.获取输入框的内容
    		var username = $(this).val();
    		var res = 1;
    		//2.发送请求
    		$.ajaxSettings.async = false;
    		$.post("/user?method=checkUsername", {username:username}, function(data, status) {
    		
    		//3.输出响应的数据
    			//alert(data);
    			console.log(data);
    			if(data != 1){res = 0;}	
    		});
    		$.ajaxSettings.async = true;
    		if(res == 1){
    			fail($(this), 0, '用户名已存在');
    		}else{
    			success($(this), 0);
    		}
          
        }
    });

    $('#newUser').find('input').eq(1).change(function () {

        password = $(this).val();

        if ($(this).val().length == 0) {
            fail($(this), 1, '请输入昵称');
        } else {
            success($(this), 1);
        }
    });

    $('#newUser').find('input').eq(2).change(function () {
        var reg = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$"); //正则表达式
        var msg = $(this).val(); //要验证的对象
        if(!reg.test(msg)){ //正则验证不通过，格式不对
            fail($(this), 2, '格式不正确');
        }else{
            success($(this), 2);
        }
    })

    $('#newUser').find('input').eq(3).change(function () {
        password = $(this).val();

        if ($(this).val().length < 8) {
            fail($(this), 3, '密码太短，不能少于8个字符');
        } else {
            success($(this), 3);
        }
    });

    $('#newUser').find('input').eq(4).change(function () {

        if ($(this).val() == password) {
            success($(this), 4);
        } else {
            fail($(this), 4, '两次密码不一致');
        }
    });


    $('#newsubmit').click(function (e) {
        var flag = true;
        for (key in check) {
            console.log(check[key]);
            if (!check[key]) {
                flag = false;
                $('#newUser').find('input').eq(key).parent().parent().removeClass('has-success').addClass('has-error');
            }
        }
        if(!flag){
        	
            return;
        }
        var newpd = $.md5($.md5($("#newpasswd").val()));
        $("#newpasswd").val(newpd);
       
        $("#newpasswd2").val(newpd);
        
        $.post("/adminusers?method=addUser", {uid : $("#newuid").val(), uname : $("#newname").val(), uemail: $("#newemail").val(), upass : newpd}, function (data) {
			
        	if(data == "success"){
        	    alert("添加成功");
                clear();
                $("#addUser").modal('hide');

        	}else{
        		alert("添加失败");
        	}

        });
//        //alert("success");
//        // clear();
//
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

function clear() {

    $('#newUser').find('input').slice(0, 5).parent().parent().removeClass('has-error has-success');
    $('#newUser').find('input').slice(0, 5).val("");
    $('.tips').hide();
    $('.glyphicon-ok').hide();
    $('.glyphicon-remove').hide();
    check = [false, false, false, false, false];

}