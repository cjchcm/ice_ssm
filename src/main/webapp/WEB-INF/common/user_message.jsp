<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>消息</title>
		<link rel="shortcut icon" href="img/head1.png">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Bootstrap -->
		<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
		<link href="css/forAll.css" rel="stylesheet" media="screen">

		<link href="css/message.css" rel="stylesheet" media="screen">
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
				<!--<img src="img/r_icon7.png" />
			--></div>
			消息
		</header>

		<div class="container" style="width:100%;background: #D5D5D5;">
			<div class="Userarchit" style="text-align: left;">
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation" class="li1 active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab" aria-expanded="true">招聘通知</a></li>
					<li role="presentation" class=""><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab" aria-expanded="false">推荐消息</a></li>
					<li role="presentation" class=""><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab" aria-expanded="false">系统通知</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<!--~~~~~~~~~~~~~~~~~~~招聘通知~~~~~~~~~~~~~~id="home"~~~~~~~~~~~-->
					<div role="tabpanel" class="tab-pane active" id="home">
						<div class="panel-group" role="tablist" aria-multiselectable="true">
							<!--招聘通知例子11111-->
							<!--备注：属性值：a标签里的 href="#collapseOne"很重要！id要唯一才可以！-->
							
							
							
							<c:forEach var="message" items="${recruitMess}">
							<div class="panel panel-body">
								<div class="panel-heading" role="tab" id="headingOne">
									<div class="sender">
										发送者：<span id="username">${message.resource}</span>
										<!--<small class="read_state">
                                        	已读
                                </small>-->
										<small class="read_state" style="color: #0088CC;">
                                        	未读
                                </small>
										<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
											<div class="css2">${message.mess_topic}</div>
										</a>
										<small class="smallid">${message.mess_date}</small>
									</div>

								</div>
								<div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
									<div class="panel-body" id="all_text">
										${message.content}
									</div><br />
								</div>

							</div>
						</c:forEach>
							
							

						</div>
					</div>

					<!--~~~~~~~~~~~~~~~~~~~推荐消息~~~~~~~~~~~~~id="profile"~~~~~~~~~~~~-->
					<div role="tabpanel" class="tab-pane" id="profile">
						<div class="panel-group" role="tablist" aria-multiselectable="true">






						<c:forEach var="message" items="${recommendMess}">
							<!--备注：属性值：a标签里的 href="#collapseOne"很重要！id要唯一才可以！-->
							<div class="panel panel-body">
								<div class="panel-heading" role="tab" id="headingOne">
									<div class="sender">
										发送者：<span id="username">${message.resource}</span>
										<!--<small class="read_state">
                                        	已读
                                </small>-->
										<small class="read_state" style="color: #0088CC;">
                                        	未读
                                </small>
										<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseA" aria-expanded="true" aria-controls="collapseOne">
											<div class="css2">${message.mess_topic}</div>
										</a>
										<small class="smallid">${message.mess_date}</small>
									</div>

								</div>
								<div id="collapseA" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
									<div class="panel-body" id="all_text">
										${message.content}
									</div><br />
								</div>

							</div>
						</c:forEach>
						
						
							

						</div>

					</div>
		<!--~~~~~~~~~~~~~~~~~~~系统通知~~~~~~~~~~~~~id="messages"~~~~~~~~~~~~-->
					<div role="tabpanel" class="tab-pane" id="messages">
						<div class="panel-group" role="tablist" aria-multiselectable="true">





						<c:forEach var="message" items="${systemMess}">
							<!--备注：属性值：a标签里的 href="#collapseOne"很重要！id要唯一才可以！-->
							<div class="panel panel-body">
								<div class="panel-heading" role="tab" id="headingOne">
									<div class="sender">
										发送者：<span id="username">${message.resource}</span>
										<!--<small class="read_state">
                                        	已读
                                </small>-->
										<small class="read_state" style="color: #0088CC;">
                                        	未读
                                </small>
										<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="true" aria-controls="collapseOne">
											<div class="css2">${message.mess_topic}</div>
										</a>
										<small class="smallid">${message.mess_date}</small>
									</div>

								</div>
								<div id="collapse1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
									<div class="panel-body" id="all_text">
										${message.content}
									</div><br />
								</div>
							</div>
						</c:forEach>
						
						
						
						
						
						
						</div>
					</div>

				</div>
			</div>
		</div>
		</div>

		<!--底部按钮-->

		<nav class="mui-bar mui-bar-tab footernav">
			<a class=" footernavli " href="index.do">
				<span class="footernavimg"><img src="img/home.png"></span>
				<span class="mui-tab-label footernavtxt">首页</span>
			</a>
			<a class="footernavli " href="searchPage.do">
				<span class="footernavimg"><img src="img/find.png"></span>
				<span class="mui-tab-label footernavtxt">发现</span>
			</a>
			<a class="footernavli" href="send.do">
				<span class="footernavimg"><img src="img/send.png"></span>
				<span class="mui-tab-label footernavtxt">发布</span>
			</a>
			<a class="footernavli mui-active " href="userMessage.do">
				<span class="footernavimg"><img src="img/message1.png"></span>
				<span class="mui-tab-label footernavtxt">消息</span>
			</a>
			<a class="footernavli" href="mime.do">
				<span class="footernavimg"><img src="img/user.png"></span>
				<span class="mui-tab-label footernavtxt">我的</span>
			</a>
		</nav>

		<script src="js/jquery-2.1.4.min.js"></script>
		<script src="js/bootstrap.min.js"></script>

	</body>

</html>