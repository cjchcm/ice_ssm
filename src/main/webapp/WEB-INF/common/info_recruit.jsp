<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ page  isELIgnored = "false" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>招聘详情</title>
		<link rel="shortcut icon" href="img/head1.png">
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
			
			.big {
				width: 100%;
			}
		</style>
		<!--头部-->
		<header id="r_header" class="r_title">
			<div class="r_returnbk" onclick="javascript:history.go(-1);">
				<img src="img/r_icon7.png" height="30">
			</div>
			招聘详情
		</header>

		<div class="t_half" style="padding: 20px 10px 5px 10px; background: #ffffff;">
			<span id="jobname" style="font-size: 18px;">${recruit.recr_job}</span>
			<span id="salary" style="float:right; color: #C67605;">${recruit.recr_salary}元/月</span>

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
			<!--企业身份，可以收藏和邀请面试-->
			<span id="img" class="like">
				<img src="img/star1.png" onclick="changePicture()"/>
				
				<!--<img src="img/star2.png" onclick="changePct()"/>-->
				</span>
			<center>
				<div class="button btn2" data-toggle="modal" data-target="#myModal">投递简历 </div>
			</center>
		</div>
		<script>
			function changePicture() {
				var img = document.getElementById("img");
				img.innerHTML = "<img src=\"img/star2.png\" onclick=\"changePct()\"/>";
			}

			function changePct() {
				var img = document.getElementById("img");
				img.innerHTML = "<img src=\"img/star1.png\" onclick = \"changePicture()\"/>";
			}
		</script>

		<!-- Modal -->
		<div class="big">
			<center>
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title" id="myModalLabel">选择简历</h4>
							</div>
							<div class="modal-body">
								<select name="select">
									<option value="0">--选择简历--</option>
									<option value="1">简历名字1</option>
									<option value="2">简历名字2</option>
									<option value="3">简历名字3</option>
									<option value="4">简历名字4</option>
								</select>
								
							</div>
							<div class="modal-footer">
								<button type="button" class="button btn2 btn-primary">确认</button>
								<button type="button" class="button btn1 btn-default" data-dismiss="modal">关闭</button>

							</div>
						</div>
					</div>
				</div>
			</center>
		</div>
		<script src="js/jquery-2.1.4.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
	</body>

</html>