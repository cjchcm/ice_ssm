<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<title>审核求职</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Bootstrap -->
		<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
		<link href="css/forAll.css" rel="stylesheet" media="screen">
		
	</head>

	<body>
		<style>
			body {
				min-height: 457px;
			}
		</style>
		<!--头部-->
		<header id="r_header" class="r_title">
			<div class="r_returnbk" onclick="javascript:history.go(-1);">
			<img src="img/r_icon7.png" height="30">
		</div>
			审核求职
		</header>

		<div class="t_half" style="margin-top: 2px;padding: 20px 10px;line-height: 8px; background: #ffffff;">
			<h4>职位：${hunt.hunt_job}</h4>
			<div style="text-align:right; color: #C67605;">
				<span id="salary">${hunt.hunt_salary}</span>
			</div>
			<div style="text-align:right; margin-top: 12px;">
				<span id="time">${hunt.hunt_date}</span>
			</div>
			<hr width=100% style="border:1px dashed #000000; height:0px; text-align: center;">
			<h4>姓名：${hunt.user_name}</h4>
		</div>
		<div class="t_half" style="margin-top: 2px;padding: 20px 10px; background: #ffffff;">
			<h4>自我描述</h4>
			<hr width=100% style="border:1px dashed #000000; height:0px; text-align: center;"> 专业技能：
			<div style="margin: 5px 5px; padding:5px 10px;border: 1px solid #D0CFCF;" id="panel-body1">

				${hunt.hunt_skill}

			</div>
			工作经验：
			<div style="margin: 10px 5px; padding:5px 10px;border: 1px solid #D0CFCF;" id="panel-body2">
				${hunt.hunt_experience}
			</div>
		</div>
		<div class="info_btn">
			<center><button class="button btn2" type="button" onclick="pass(${hunt.hunt_id})">通过审核 </button> </center>
		</div>
		<div class="info_btn">
			<center><button class="button btn1" type="button" onclick="deletehunt(${hunt.hunt_id})">删除 </button> </center>
		</div>
		<script>
			function pass(hunt_id){
				window.location.href="passhunt.do?hunt_id="+hunt_id+"";
			}
			function deletehunt(hunt_id){
				window.location.href="deletehunt.do?hunt_id="+hunt_id+"";
			}
		</script>
	</body>

</html>