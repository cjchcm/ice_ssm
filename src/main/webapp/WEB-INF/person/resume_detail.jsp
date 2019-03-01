<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- saved from url=(0064)http://m.zhaopin.com/Resume/resume?resumeId=246110141&language=1 -->
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>简历详情</title>
		<link rel="shortcut icon" href="img/head1.png">
		<meta name="baidu-tc-cerfication" content="315f7ed10c0de83badbd33934a33aec1">
		<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no,minimal-ui">

		<meta name="baidu-site-verification" content="SQUARaNLRZ">

		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta content="telephone=no,email=no" name="format-detection">

		<link href="css/resume.css" rel="stylesheet">
		<link href="css/forAll.css" rel="stylesheet">
		<noscript>您的浏览器不支持JavaScript,请使用其它浏览器</noscript>
	</head>

	<body>
		<style>
			.gga{
				color: #a0a0a0;
			}
		</style>
		<div id="minheight" style="min-height: 468px;">

			<!--头部-->
			<header id="r_header" class="r_title">
            <div class="r_returnbk" onclick="javascript:history.go(-1);">
				<img src="img/r_icon7.png" height="30">
			</div>
            简历详情
        </header>

			<div id="Resume_Grxx_Content" class="Resume_Box_Content">

				<div id="Resume_Grxx_Show" class="show" style="display: block;">
					<dl class="list">
						<dt>
                <span class="Resume_Per_Info">
                    <span class="headImg left">
                        <img id="Resume_TouXiang_Show" width="55" height="55" src="${user.user_photo}">
                    </span>
                    <span class="text left">
                        
                        <b id="Resume_Name_Show" class="name ResumeCheakVal" data-en-name="" data-cn-name="Nikki">${user.user_name}</b>
                        <span class="wrap">
			                <c:choose>
						   		<c:when test="${user.user_sex=='男'}">
						   			<b data-en-name="Female" class="sex ResumeCheakVal m" id="Resume_Sex_Show" data-code="1">男</b>
						   		</c:when>
						   		<c:otherwise>
						   			<b data-en-name="Female" class="sex ResumeCheakVal n" id="Resume_Sex_Show" data-code="2">女</b>
						   		</c:otherwise>
				   			</c:choose>
                            
                            
                        <!--男的图标不一样！！！！！！！！！！！-->
                            
                            
                            <b class="fg">|</b>
                            
                            <b class="chusheng ResumeCheakVal" id="Resume_ChuSheng_Show">${user.user_birthday}</b>
                        </span>
                    </span>
                </span>
            </dt>

						<dd>
							<span data-en-name="Starting to Work:">参加工作时间:</span>
							<b class="ResumeCheakVal" data-en-name="Inexperienced" data-code="0" id="Resume_CanJia_Show">${user.user_work_date}</b>
						</dd>

						<dd>
							<span data-en-name="HUKOU:">户口所在地:</span>
							<b class="ResumeCheakVal" id="Resume_Btn_Hukou_Show" data-cn-name="肇庆" data-pro="548" data-en-name="ZHAOQING" data-code="772">${user.user_born_city}</b>
						</dd>

						<dd>
							<span data-en-name="Current City:">现居住城市:</span>
							<b class="ResumeCheakVal" id="Resume_Btn_XianJuZhu_Show" data-cn-name="广州-番禺区" data-en-name="GUANGZHOU-Fanyu" data-code="2052" data-pro="548" data-shi-code="763">${user.user_living_city}</b>
						</dd>

						<dd>
							<span data-en-name="Mobile Phone:">手机号码:</span>
							<b class="ResumeCheakVal" id="Resume_MobilePhone_Show">${user.user_phone}</b>
						</dd>
						<dd>
							<span data-en-name="Email:">邮箱地址:</span>
							<b class="ResumeCheakVal" id="Resume_Email_Show">${user.user_email}</b>
						</dd>
					</dl>
				</div>
			</div>
			
			<div class="" style="font-family: '微软雅黑';line-height: 25px;color: #555555;">
				<div class="t_half" style="margin-top: 2px;padding: 15px 10px;  background: #ffffff;">
					<span class="gga">教育背景：</span>
					<div style="border: 1px solid #D0CFCF; padding:3px 10px;">${resume.education}</div>
					<!--
					<div style="text-align:center;">
						<span id="time" style="float: left"></span>
						
						<span id="time" style="float: left">2013.09-2017.07</span>
						<span id="school">广东药科大学</span>
						<span id="degree" style="float: right">学士</span>
					</div>
					-->
					<!--<span id="major">医药软件服务外包</span>-->
				</div>
				<div class="t_half" style="margin-top: 2px;padding: 15px 10px;  background: #ffffff;">
					<div><span class="gga">工作/实习经历：</span></div>
					<div style="border: 1px solid #D0CFCF; padding:3px 10px;">${resume.job_experience}</div>
				</div>
				<div class="t_half" style="margin-top: 2px;padding: 15px 10px;  background: #ffffff;">
					<div><span class="gga">项目经验：</span></div>
					<div style="border: 1px solid #D0CFCF; padding:3px 10px;">${resume.project_experience}</div>
				</div>
				<div class="t_half" style="margin-top: 2px;padding: 15px 10px;  background: #ffffff;">
					<div><span class="gga">自我评价：</span></div>
					<div style="border: 1px solid #D0CFCF; padding:3px 10px;">
						 ${resume.self_evaluate}
					</div>
				</div>
			</div>
			<div class="info_btn">
				<br />
			<center><button class="button btn1" type="button" onclick="deleteResume(${resume.resu_id})">删除 </button> </center>
		</div>
		<script type="text/javascript">
			function deleteResume(resumeId){
				if(confirm("确定删除吗？")){
					window.location.href="deleteResume.do?resumeId="+resumeId;

			    }
			    else{
			        return false;
			    }
			}
		</script>
	</body>

</html>