<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- saved from url=(0045)http://m.zhaopin.com/resume/resume?isCreate=1 -->
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>企业信息</title>

	<meta charset="utf-8">

	<meta name="baidu-tc-cerfication" content="315f7ed10c0de83badbd33934a33aec1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		
	<meta name="baidu-site-verification" content="SQUARaNLRZ">

	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta content="telephone=no,email=no" name="format-detection">
	<link href="css/login.css" rel="stylesheet">
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

.uploadPreview1 {
	width:100%;
	height: auto;
	
}
.uploadPreview1 img {
	width: auto;
	height: 250px;
	margin: 50px 10px 20px 10px;
	background-position: center center;
	background-size: cover;
	/*border-radius: 50%;*/
}
.input1 {
	position: absolute;
	/*width: 20%;*/
	float: right;
	margin-top: 12px;
	margin-left: 40%;
	height: 45px;
	left: 0;
	right: 0px;
	top: 0px;
	text-align: right;
	overflow: hidden;
	text-overflow: clip;
	white-space: nowrap;
	color: #555;
	background: none;
	font-size: 14px;
}
	</style>
<div id="minheight" style="min-height: 468px;">

	<script src="js/swiper.min.js"></script>

	<header id="r_header" class="r_title">
		<div class="r_returnbk" onclick="javascript:history.go(-1);">
			<img src="img/r_icon7.png" height="30">
		</div>
		企业信息
	</header>

<div id="Resume_Grxx" class="Resume_Content_Box" style="margin-top: 0px;">
    <span data-en-name="Personal Information" class="tit">企业信息</span>
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
				<b class="name" data-en-name="HeadImg">LOGO</b>
				<span class="uploadPreview">

                    <img id="Resume_TouXiang" src="${companyinfo.comp_logo}">
                </span>
				<!--<input readonly="readonly" type="file" name="picFile" id="picFile">-->
			</li>
			
			

			<li class="text">
				<b data-en-name="Name" class="name">公司名</b>
				<input readonly="readonly" class="yz" id="Resume_Name" type="text" value="${companyinfo.comp_name}">
			</li>


			<li class="text">
				<b class="name">专注领域</b>
				<input readonly="readonly" class="yz" id="goodAt" value="${companyinfo.comp_focus}" type="text"></input>
			</li>
			<li class="text">
				<b class="name" >公司描述</b>
				<input readonly="readonly" class="yz" id="company_dec" value="${companyinfo.comp_info}" type="text"></input>
			</li>
			

			<li class="text">
				<b class="name" >公司地址</b>
				<input readonly="readonly" class="yz" id="company_address" value="${companyinfo.comp_address}" type="text"></input>
			</li>

			<li class="text">
				<b class="name" data-en-name="Mobile Phone">HR手机号</b>
				<input readonly="readonly" class="yz" id="HR_MobilePhone" type="tel" value="${companyinfo.comp_phone}" maxlength="11"  ></input>
			</li>
			<li class="text">
				<b class="name" data-en-name="Email">邮箱地址</b>
				<input readonly="readonly" class="yz" id="Resume_Email" type="text" value="${companyinfo.comp_email}" ></input>
				
			</li>
			<li class="text" style="height: 320px;">
				<b class="name">公司执照</b>
				<center class="uploadPreview1" >
                    <img id="company_picture" src="${companyinfo.comp_license}">
                </center>
				 <!--<input readonly="readonly" class="yz input1" id="c_picFile" name="c_picFile" type="file" >-->
			</li>
			
			<li class="Operation">
				<span class="save" onclick="pass(${companyinfo.comp_id})">审核通过</span>
			</li>
			<li class="Operation">
				<span class="save" onclick="reject(${companyinfo.comp_name})" style="background: #FF0000;">回绝</span>
			</li>
		</ul>
	</div>

</div>
</div>

<script>
			function pass(comp_id){
				window.location.href="pass.do?comp_id="+comp_id+"";
			}
		</script>
</body>
</html>

