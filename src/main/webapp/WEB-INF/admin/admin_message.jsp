<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>

	<head>
		<title>信息审核</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Bootstrap -->
		<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
		<link href="css/forAll.css" rel="stylesheet" media="screen">
		<link href="css/message.css" rel="stylesheet" media="screen">
		<link href="css/main.css" rel="stylesheet" media="screen">
	</head>

	<body>
		<style>
			body {
				min-height: 457px;
				background: #FFFFFF;
			}
		</style>
		<header id="r_header" class="r_title">
			<div class="r_returnbk " onclick="javascript:history.go(-1);">
				<!--<i><</i>-->
				<img src="img/r_icon7.png" />
			</div>
			信息审核
		</header>

<div class="container" style="width:100%;background: #D5D5D5;">
	<div class="Userarchit" style="text-align: left;">
		<ul class="nav nav-tabs" role="tablist">
			<li role="presentation" class="li1 active" style="width: 50%;">
			<a href="#home" aria-controls="home" role="tab" data-toggle="tab" aria-expanded="true">求职审核</a></li>
			<li role="presentation" class="" style="width: 50%;">
			<a href="#profile" aria-controls="profile" role="tab" data-toggle="tab" aria-expanded="false">招聘审核</a></li>
		</ul>

		<!-- Tab panes -->
		<div class="tab-content">
			<!--~~~~~~~~~~~~~~~~~~~求职审核~~~~~~~~~~~~~~id="home"~~~~~~~~~~~-->
			<div role="tabpanel" class="tab-pane active" id="home">
				<div class="">
				<c:forEach var="hunts" items="${hunts}">
					<section class="listbox nobg  list">
						<div class="onesection">
							<a href="checkhunt.do?hunt_id=${hunts.hunt_id}">
								<div class="jobname">${hunts.hunt_job}</div>

								<div class="time">${hunts.hunt_date}</div>

								<div class="companyname" id="username"></div>
								<div class="box1">
									<span class="ads"></span>
									<span class="fg"></span>
									<span class="education"></span>
								</div>
								<div class="salary"></div>
							</a>
						</div>
					</section>
					</c:forEach>
					
					<div class="t_half" style="margin-top: 2px;padding: 5px; background: #ffffff;">
						<div class="j_page">
						
		   		
					</div>
				</div>
			</div>
		</div>
		
		
			<!--~~~~~~~~~~~~~~~~~~~推荐消息~~~~~~~~~~~~~id="profile"~~~~~~~~~~~~-->
			<div role="tabpanel" class="tab-pane" id="profile">
				<div class="">
				<c:forEach var="recruits" items="${recruits}">
					<section class="listbox nobg  list">
						<div class="onesection">
							<a href="checkRecruit.do?recr_id=${recruits.recr_id}">
								<div class="jobname">${recruits.recr_job}</div>

								<div class="time">${recruits.recr_date}</div>

								<div class="companyname"></div>
								<div class="box1">
									<span class="ads"></span>
									<span class="fg"></span>
									<span class="education"></span>
								</div>
								<div class="salary"></div>
							</a>
						</div>
					</section>
					</c:forEach>
					<div class="t_half" style="margin-top: 2px;padding: 5px; background: #ffffff;">
						<div class="j_page">
							</div>
				</div>

			</div>
		</div>
		
		
		
	</div>
</div>
</div>

		<!--底部按钮-->

		<nav class="mui-bar mui-bar-tab footernav">
			<a class=" footernavli" href="adminindex.do">
				<span class="footernavimg"><img src="img/home.png"></span>
				<span class="mui-tab-label footernavtxt">我的首页</span>
			</a>
			<a class="footernavli" href="showCheckCompany.do">
				<span class="footernavimg"><img src="img/find.png"></span>
				<span class="mui-tab-label footernavtxt">企业认证</span>
			</a>
			<a class="footernavli" href="sendMessagePage.do">
				<span class="footernavimg"><img src="img/send.png"></span>
				<span class="mui-tab-label footernavtxt">发布信息</span>
			</a>
			<a class="footernavli  mui-active " href="#">
				<span class="footernavimg"><img src="img/message2.png"></span>
				<span class="mui-tab-label footernavtxt">信息审核</span>
			</a>
			<a class="footernavli" href="messageCenter.do">
				<span class="footernavimg"><img src="img/message1.png"></span>
				<span class="mui-tab-label footernavtxt">消息中心</span>
			</a>
		</nav>
<script>
			function pagechange1(targ,selObj,restore){ 
		eval(targ+".location='showHMessList.do?currentPage="+selObj.options[selObj.selectedIndex].value+"'"); 
		if (restore) selObj.selectedIndex=0; 
	} 
			function pagechange2(targ,selObj,restore){ 
		eval(targ+".location='messageCenter.do?currentPage="+selObj.options[selObj.selectedIndex].value+"'"); 
		if (restore) selObj.selectedIndex=0; 
	} 
		</script>

		<script src="js/jquery-2.1.4.min.js"></script>
		<script src="js/bootstrap.min.js"></script>

	</body>

</html>