<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- saved from url=(0045)http://m.zhaopin.com/resume/resume?isCreate=1 -->
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>个人信息</title>
	<link rel="shortcut icon" href="img/head1.png">
	<meta name="baidu-tc-cerfication" content="315f7ed10c0de83badbd33934a33aec1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		
	<meta name="baidu-site-verification" content="SQUARaNLRZ">

	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta content="telephone=no,email=no" name="format-detection">
	<link href="css/resume.css" rel="stylesheet">
	<link href="css/Site.css" rel="stylesheet">
	<link href="css/b.css" rel="stylesheet">

	<script async="" src="js/analytics.js"></script>
	<script src="./Resume_files/push.js"></script>
	<script type="text/javascript" async="" srczipt="js/dywe.js"></script>
	<script src="js/zepto.js"></script>
	<script type="text/javascript" src="js/zp-m-share.js" ></script>

	<noscript>您的浏览器不支持JavaScript,请使用其它浏览器</noscript>

</head>
<body>
<style>
	.show_hide_pass {
	display: block;
	vertical-align: middle;
	background: url("http://img09.zhaopin.com/2012/other/mobile/m/img_login_16325.png") no-repeat;
	zoom: .5;
	position: absolute;
	text-align: center;
	right: 24px;
	top: 38px;
}

.show_hide_pass.icon_visible {
	width: 34px;
	height: 24px;
	background-position: -9px -10px;
}

.show_hide_pass.icon_invisible {
	width: 40px;
	height: 16px;
	background-position: -6px -59px;
	top: 45px;
}
</style>
<div id="minheight" style="min-height: 468px;">

	<script src="js/swiper.min.js"></script>

	<header id="r_header" class="r_title">
            <div class="r_returnbk" onclick="javascript:history.go(-1);">
                <img src="img/r_icon7.png" height="30">
            </div>
            个人信息
        </header>

<div id="Resume_Grxx" class="Resume_Content_Box" style="margin-top: 0px;">
    <span data-en-name="Personal Information" class="tit">个人信息</span>
    <span data-en-name="(Required)" class="tit_required">(必填)</span>
<!--
            <span style="display: none;" id="Resume_Grxx_Edit" class="Resume_Tit_Edit">编辑</span>
            <span style="display: none;" class="prompt b">新增</span>
-->
</div>

<div id="Resume_Grxx_Content" class="Resume_Box_Content">

	<div class="edit" style="display: block;">
		<ul class="list">
			<li class="select">
				<b class="name" data-en-name="HeadImg">照片</b>
				<span class="uploadPreview">

                    <img id="Resume_TouXiang" src="${user.user_photo}">
                </span>
                	<input type="file" name="picFile" id="picFile">

				
			</li>

			<li class="text">
				<b data-en-name="Name" class="name">姓名</b>
				<input class="yz" id="Resume_Name" type="text" value="${user.user_name}" placeholder="请输入姓名">
			</li>
			<li id="Resume_Sex" class="radio">
				
				<c:choose>
			   		<c:when test="${user.user_sex=='男'}">
			   			<b data-code="1" class="name" data-en-name="Gender">性别</b>
			   			<span data-en-name="Female" class="sex n">女</span>
						<span data-en-name="Male" class="sex m h">男</span>
			   		</c:when>
			   		<c:otherwise>
			   			<b data-code="2" class="name" data-en-name="Gender">性别</b>
			   			<span data-en-name="Female" class="sex n h">女</span>
						<span data-en-name="Male" class="sex m">男</span>
			   		</c:otherwise>
	   			</c:choose>

			</li>
			<!--<li class="text">
				<b class="name">密码</b>
				<input id="password" name="pwd" class="yz" type="password" value="" placeholder="输入新密码">
				<i class="show_hide_pass icon_invisible"></i>
				
			</li>
			--><li class="text">
				<b class="name" data-en-name="Date of Birth">出生日期</b>
				<input id="Resume_ChuSheng" class="yz" value="${user.user_birthday}" type="text" placeholder="年/月/日">
			</li>
			
			<li class="text">
				<b class="name" data-en-name="Starting to Work">参加工作时间</b>
				<input id="Resume_CanJia"  class="yz" type="text" value="${user.user_work_date}" placeholder="年/月/日"></input>
			</li>

			<li class="text">
				<b class="name" data-en-name="HUKOU">户口所在地</b>
				<input class="yz" id="Resume_Btn_Hukou" value="${user.user_born_city}" placeholder="请输入户口地" type="text"></input>
			</li>

			<li class="text">
				<b class="name" data-en-name="Current City">现居住城市</b>
				<input class="yz" id="Resume_Btn_XianJuZhu" value="${user.user_living_city}" placeholder="请输入居住地" type="text"></input>
			</li>

			<li class="text">
				<b class="name" data-en-name="Mobile Phone">手机号码</b>
				<input class="yz" id="Resume_MobilePhone" type="tel" placeholder="输入手机电话" maxlength="11" value="${user.user_phone}" ></input>
			</li>
			<li class="text">
				<b class="name" data-en-name="Email">邮箱地址</b>
				<input class="yz" id="Resume_Email" type="text" value="111110001@qq.com" readonly="readonly"></input>
				
			</li>
			<li class="Operation">
				<span class="close">取消</span>
				<span class="save" onclick="Resume_Save_Grxx(this);">保存</span>
			</li>
		</ul>
	</div>
			<div class="SignOut" onclick="location='logout.do'" ><span style="background: #FF0000;">退出登录</span></div>

<!--填写完毕后，显示信息！！！！！！！！！！！！！-->
	<div id="Resume_Grxx_Show" class="show" style="display: none;">
		<dl class="list">
			<dt>
                <span class="Resume_Per_Info">
                    
                    <span class="headImg left">
                        <img id="Resume_TouXiang_Show" width="55" height="55" src="img/resume_headimg_60.png">
                    </span>
                    <span class="text left">
                        
                        <b id="Resume_Name_Show" class="name ResumeCheakVal" data-en-name="" data-cn-name=""></b>
                        <span class="wrap">
                                    <b data-en-name="Male" class="sex ResumeCheakVal" id="Resume_Sex_Show" data-code="1">男</b>

                            <b class="fg">|</b>
                            
                            <b class="chusheng ResumeCheakVal" id="Resume_ChuSheng_Show"></b>
                        </span>
                    </span>
                </span>
            </dt>

			<dd>
				<span data-en-name="Starting to Work:">参加工作时间:</span>
				<b class="ResumeCheakVal" data-en-name="Inexperienced" data-code="0" id="Resume_CanJia_Show">无工作经验</b>
			</dd>

			<dd>
				<span data-en-name="HUKOU:">户口所在地:</span>
				<b class="ResumeCheakVal" id="Resume_Btn_Hukou_Show" data-cn-name="" data-pro="0" data-en-name="" data-code=""></b>
			</dd>

			<dd>
				<span data-en-name="Current City:">现居住城市:</span>
				<b class="ResumeCheakVal" id="Resume_Btn_XianJuZhu_Show" data-cn-name="" data-en-name="" data-code="" data-pro="0" data-shi-code="0"></b>
			</dd>

			<dd>
				<span data-en-name="Mobile Phone:">手机号码:</span>
				<b class="ResumeCheakVal" id="Resume_MobilePhone_Show">18825076967</b>
			</dd>
			<dd>
				<span data-en-name="Email:">邮箱地址:</span>
				<b class="ResumeCheakVal" id="Resume_Email_Show"></b>
			</dd>
		</dl>
	</div>
</div>

   
</div>
<script src="js/lrz.bundle.js"></script>
<script>
    $("input[type=file]").on('change', function (event) {
        var file = this.files[0];
        var rReg = /\.(jpg)|(jpeg)|(gif)|(png)$/i;
        var maxSize = 20 * 1024 * 1024;
        if (!rReg.test(file.name)) {
//      	检查图片类型！！！！！！！！！！！！！！！！！！！！！！
            alert("图片类型必须是.gif,jpeg,jpg,png中的一种");
            return false;
        }
        lrz(this.files[0], { width: 180, height: 180 })
//      替换头像图片！！！！！！！！！！！！！！！！！！
        .then(function (rst) {
            $('#Resume_TouXiang').attr("src", rst.base64);
            return rst;
        })
//      保存图片
        .then(function (rst) {
        	/*$(logoForm).submit()rst.base64*/
            var formData = new FormData();
            formData.append("picFile", $("#picFile")[0].files[0]);
            $.ajax({
                url: 'uploadLogo.do',
                type: 'POST',
                data: formData,
                dataType:"json",
                async: false,
                cache: false,
                contentType: false,
                processData: false,
                success: function (ret) {
                    console.log(ret);
                },
                error: function (ret) {
                    console.log(ret);
                }
            });
            return rst;
            
            
        })
        .then(function (rst) {
            $('#Resume_TouXiang').attr("src", rst.base64);
            return rst;
        })
        
    })

//性别男女切换按钮
var $Resume_Sex = $("#Resume_Sex");
$Resume_Sex.children(".sex").click(function () {
    $(this).addClass("h").siblings(".sex").removeClass("h");
    if ($(this).hasClass("n")) {
        $Resume_Sex.children("b").attr("data-code", "2");
    } else {
        $Resume_Sex.children("b").attr("data-code", "1");
    }
});
</script>

<script>function Resume_Cheak_TextVal(obj) {
	var $cheak = $(obj).parents(".list").find(".yz");
	var ok = true;
	$cheak.each(function() {
		if (ok) {
			var type = $(this)[0].tagName.toLocaleLowerCase();
			switch (type) {
				case "input":
					if ($(this).val() == "" || $(this).val() == " ") {
						var name = $(this).parent().children(".name").text();
						handlePrompt(name + "不能为空");
						ok = false;
					}
					break;
				case "span":
					if ($(this).text() == "" || $(this).text() == " " || $(this).attr("data-code") == -1) {
						var name = $(this).parent().children(".name").text();
						handlePrompt(name + "不能为空");
						ok = false;
					}
					break;
			}
		}
	});
	return ok;
}

//保存个人信息
function Resume_Save_Grxx($t) {
	var name = $("#Resume_Name").val();
	var ResumeSex =  $("#Resume_Sex b").attr("data-code");
	var password =$("#password").val();
	var birthday = $("#Resume_ChuSheng").val();
    var workDate = $("#Resume_CanJia").val();
    var bornCity = $("#Resume_Btn_Hukou").val();
    var livingCity = $("#Resume_Btn_XianJuZhu").val();
    var phone = $("#Resume_MobilePhone").val();
    var sex;
    if(ResumeSex==1)
    	sex='男';
    else
    	sex='女';
    
	//验证
	if (!Resume_Cheak_TextVal($t)) {
		return false;
	}
	var reg = /^\d{4}(\-|\/|\.)\d{1,2}\1\d{1,2}$/;
    if (!reg.test(birthday)) {
        handlePrompt("出生日期格式应为：年/月/日");
        return;
    }
    if (!reg.test(workDate)) {
        handlePrompt("参加工作时间格式应为：年/月/日");
        return;
    }
	//手机
    if (!cheakMobile("#Resume_MobilePhone")) {
        handlePrompt("请输入正确的手机号码");
        return false;
    }
    
    var url = "updateUserInfo.do";
	    $.post(url,
	    {
	        name:name,
			sex:sex,
			birthday:birthday,
    		workDate:workDate,
   		 	bornCity:bornCity,
   		 	livingCity:livingCity,
   		 	phone:phone
	     },
	     function(data){
	        if(data=="success")
	        	handlePrompt("修改成功！");
	        else if(data=="fail")
	        	handlePrompt("修改失败！");
	     }
	);
}

//====处理完成后弹出提示====
function handlePrompt(val) {
    $("body").append("<div class='handlePrompt'>" + val + "</div>");
    setTimeout(function () {
        $(".handlePrompt").first().remove();
    }, 1000);
}
</script>
<script>

    //切换输入密码明暗文
    $password = $('#password');
    $('.show_hide_pass').click(function (event) {
        $(this).hasClass("icon_invisible") ? ($(this).removeClass("icon_invisible").addClass("icon_visible"),
         $password.attr("type", "text")) : $(this).hasClass("icon_visible") && ($(this).removeClass("icon_visible").addClass("icon_invisible"),
         $password.attr("type", "password"));
    });

</script>

</body>
</html>

