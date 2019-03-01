<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>发布求职</title>
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
			.bigBody .warn_message {
				color: red;
				line-height: 20px;
				font-size: 13px;
				text-align: center;
				background:#ffffff;
				z-index: 4;
			}
		</style>
		<!--头部-->

		<header id="r_header" class="r_title">
		<div class="r_returnbk" onclick="javascript:history.go(-1);">
			<img src="img/r_icon7.png" height="30">
		</div>
		发布求职
		</header>
		<div class="bigBody" style="margin-bottom: 50px;">
			<form name="form" method="post">
				<div class="t_half" style="padding: 20px 10px 10px 10px; background: #FFFFFF;">
					<center>
						求职岗位：
						<input type="text" id="huntJob" />
					</center>
					<center>
						工资：
						<input id="salary_l" type="number" value="1000"
							style="width: 80px; margin-left: 28px;" />
						至
						<input id="salary_h" type="number" value="1000"
							style="width: 80px; margin-left: 8px;" />
					</center>
					<center>
						工作地点：
						<input type="text" id="huntPlace" />
					</center>
					
					<center>
						学历：
						<select style="margin-left: 28px;" id="huntDegree" name="recrDegree">
							<option value="博士研究生">博士研究生</option>
							<option value="硕士研究生">硕士研究生</option>
							<option value="本科">本科</option>
							<option value="专科">专科</option>
							<option value="高职">高职</option>
							<option value="高中">高中</option>
							<option value="中专">中专</option>
							<option value="初中">初中</option>
							<option value="小学">小学</option>
						</select>
						
					</center>
				</div>
				<div class="t_half"
					style="margin-top: 8px; padding: 20px 10px; background: #FFFFFF;">
					<div>
						自我描述：
						<hr width=95%
							style="border: 1px dashed #000000; height: 0px; text-align: center;">
					</div>
					专业技能：
					<br />
					<textarea id="huntSkill" style="width: 95%" rows="6" cols="20"></textarea>
					<br />
					工作经验：
					<br />
					<textarea id="huntExperience" style="width: 95%" rows="6" cols="20"></textarea>
					<br />
				</div>
				<div class="warn_message"></div>
				<div style="padding-bottom: 20px; background: #FFFFFF;">
					<center>
						<div class="button btn" onclick="send_qz();">发布求职</div>
					</center>
				</div>
			</form>
		</div>
		<!--底部按钮-->
		<nav class="mui-bar mui-bar-tab footernav" >
			<a  class=" footernavli " href="index.do">
				<span class="footernavimg"><img src="img/home.png"></span>
				<span class="mui-tab-label footernavtxt" >首页</span>
			</a>
			<a class="footernavli" href="searchPage.do" >
				<span class="footernavimg"><img src="img/find.png"></span>
				<span class="mui-tab-label footernavtxt">发现</span>
			</a>
			<a class="footernavli" href="send.do">
				<span class="footernavimg"><img src="img/send.png"></span>
				<span class="mui-tab-label footernavtxt">发布</span>
			</a>
			<a class="footernavli" href="userMessage.do">
				<span class="footernavimg"><img src="img/message1.png"></span>
				<span class="mui-tab-label footernavtxt">消息</span>
			</a>
			<a class="footernavli" href="mime.do">
				<span class="footernavimg"><img src="img/user.png"></span>
				<span class="mui-tab-label footernavtxt">我的</span>
			</a>

			
		</nav>

		<script src="js/jquery-2.1.4.min.js">
</script>
		<script src="js/bootstrap.min.js">
</script>


		<script type="text/javascript">
		function send_qz() {
			$(".warn_message").html("");
			
			var huntJob = $("#huntJob").val();
			var salary_l = $("#salary_l").val();
			var salary_h = $("#salary_h").val();
			var huntPlace = $("#huntPlace").val();
			var huntDegree = $("#huntDegree").val();
			var huntSkill = $("#huntSkill").val();
			var huntExperience = $("#huntExperience").val();
		
			if (huntJob == undefined || huntJob == '') {
				$(".warn_message").html("请输入求职岗位");
				return false;
			}
			if (salary_l == undefined || salary_l == '') {
				$(".warn_message").html("请输入工资");
				return false;
			}
			if (salary_h == undefined || salary_h == '') {
				$(".warn_message").html("请输入工资");
				return false;
			}
			if (salary_l >= salary_h) {
				$(".warn_message").html("工资区间出错，请重新输入");
				return false;
			}
			if (huntPlace == undefined || huntPlace == '') {
				$(".warn_message").html("请输入工作地点");
				return false;
			}
			if (huntDegree == undefined || huntDegree == '') {
				$(".warn_message").html("请输入学历");
				return false;
			}
			if (huntSkill == undefined || huntSkill == '') {
				$(".warn_message").html("请输入专业技能");
				return false;
			}
			if (huntExperience == undefined || huntExperience == '') {
				$(".warn_message").html("请输入工作经验");
				return false;
			}
		
			
			
			var url = "addHunt.do";
			$.post(url,
			{
			    huntJob:huntJob,
			    huntSalary:salary_l+"-"+salary_h,
			    huntPlace:huntPlace,
			    huntDegree:huntDegree,
			    huntSkill:huntSkill,
			    huntExperience:huntExperience
			},
			function(data){
			    if(data=="success")
			        window.location.href="index.do";
			    else if(data=="fail")
			        $(".warn_message").html("未知错误");
			    }
			);
		}
</script>
	</body>

</html>