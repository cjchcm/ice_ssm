<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>我的简历</title>
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
	background: #ffffff;
}
</style>
		<!--头部-->
		<header id="r_header" class="r_title">
			<div class="r_returnbk" onclick="location='mime.do'">
				<img src="img/r_icon7.png" height="30">
			</div>
			我的简历
		</header>
		<div style="background: #d6d6d6;">
			<div style="margin-bottom: 50px;">
				<c:forEach var="r" items="${resumes}">
					<a href="resumeDetail.do?resumeId=${r.resu_id}"> 
						<div class="t_half" style="margin-bottom: 3px; padding: 20px 10px; line-height: 6px; background: #ffffff;">
							<h4>
								${r.resu_name}
							</h4>
							<br>
							<div style="float: left">
								<span id="jobname">${r.resu_job}</span>
							</div>
							<div style="text-align: right;">
								<a href="#">修改</a>
							</div>
						</div>
					 </a>
				</c:forEach>
				<div style="padding-bottom: 20px;padding-top: 20px; background: #FFFFFF;">
					<center>
						<div class="button btn" onclick="location='addResumePage.do'">
							添加简历
						</div>
					</center>
				</div>


			</div>
		</div>
		<!--底部按钮-->
		<nav class="mui-bar mui-bar-tab footernav">
		<a class=" footernavli  " href="index.do"> <span
			class="footernavimg"><img src="img/home.png">
		</span> <span class="mui-tab-label footernavtxt">首页</span> </a>
		<a class="footernavli" href="searchPage.do"> <span
			class="footernavimg"><img src="img/find.png">
		</span> <span class="mui-tab-label footernavtxt">发现</span> </a>
		<a class="footernavli" href="send.do"> <span
			class="footernavimg"><img src="img/send.png">
		</span> <span class="mui-tab-label footernavtxt">发布</span> </a>
		<a class="footernavli" href="userMessage.do"> <span
			class="footernavimg"><img src="img/message1.png">
		</span> <span class="mui-tab-label footernavtxt">消息</span> </a>
		<a class="footernavli" href="mime.do"> <span
			class="footernavimg mui-active"><img src="img/user.png">
		</span> <span class="mui-tab-label footernavtxt">我的</span> </a>
		</nav>

		<script src="js/jquery-2.1.4.min.js">
</script>
		<script src="js/bootstrap.min.js">
</script>
	</body>

</html>