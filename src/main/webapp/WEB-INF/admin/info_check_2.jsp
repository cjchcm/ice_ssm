<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<title>审核招聘</title>
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
			
			.btn-default {
				width: 95px;
				height: 28px;
				line-height: 20px;
			}
			
			.btn-primary {
				width: 95px;
				height: 30px;
				line-height: 20px;
			}
			
			.modal {
				width: 300px;
				margin-left: -150px;
			}
			
			/*.big {
				width: 100%;
			}*/
		</style>
		<!--头部-->
		<header id="r_header" class="r_title">
			<div class="r_returnbk" onclick="javascript:history.go(-1);">
			<img src="img/r_icon7.png" height="30">
		</div>
			审核招聘
		</header>

		<div class="t_half" style="padding: 20px 10px 5px 10px; background: #ffffff;">
			<span id="jobname" style="font-size: 18px;">${recruit.recr_job}</span>
			<span id="salary" style="float:right; color: #C67605;">${recruit.recr_salary}</span>

		</div>

		<div style="padding: 0px 10px 20px 10px; background: #ffffff;">
			<span id="company" style="color: #565656;">${recruit.comp_name}</span>
			<span id="time" style="float:right; color: #565656;">${recruit.recr_date}</span>
		</div>
		<div id="" style="background: #ffffff;padding: 0px 10px 10px 10px;">
			<hr width=100% style=" margin: 0px 0px 10px; border:1px dashed #000000; height:0px; text-align: center;"> 上班地点：
			<span id="address" style=" color: #565656;">${recruit.recr_place}</span>
		</div>

		<div class="t_half" style="margin-top: 2px;padding: 20px 10px; background: #ffffff;">
			<h4>岗位描述</h4>
			<hr width=100% style="border:1px dashed #000000; height:0px; text-align: center;"> 岗位职责：
			<div style="margin: 5px 5px; padding:5px 10px;border: 1px solid #D0CFCF;" id="panel-body1">

				${recruit.recr_duty}

			</div>
			岗位要求：
			<div style="margin: 10px 5px; padding:5px 10px;border: 1px solid #D0CFCF;" id="panel-body2">
				${recruit.recr_demand}
			</div>
		</div>

		<div class="info_btn">
			<center>
				<div class="button btn2" onclick="pass(${recruit.recr_id})">通过审核 </div>
			</center>
		</div>
		<div class="info_btn">
			<center>
				<div class="button btn1" onclick="deleteRecruit(${recruit.recr_id})">删除 </div>
			</center>
		</div>
		<script>
			function pass(recr_id){
				window.location.href="passRecruit.do?recr_id="+recr_id+"";
			}
			function deleteRecruit(recr_id){
				window.location.href="deleteRecruit.do?recr_id="+recr_id+"";
			}
		</script>
	
		<script src="js/jquery-2.1.4.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
	</body>

</html>