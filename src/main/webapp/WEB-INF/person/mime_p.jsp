<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>我的</title>
		<link rel="shortcut icon" href="img/head1.png">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Bootstrap -->
		<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
		<link href="css/forAll.css" rel="stylesheet" media="screen">
		<link href="css/mine.css" rel="stylesheet"/>
	</head>

	<body>
		<style>
			body {
				min-height: 457px;
				/*background: #f0f0f0;*/
			}
		</style>
		<header id="r_header" class="r_title">
			<div class="r_returnbk" onclick="javascript:history.go(-1);">
				<!--<img src="img/r_icon7.png" height="30">-->
			</div>
			个人中心
		</header>
		<!--头像-->
		<div class="user_show">
			<div id="#">
				<a href="accountInfo.do">
					<img src="${user.user_photo}" alt="" class="abc">
				</a>
			</div>
			<div >
				<span id="open_id">${user.user_name}</span>
			</div>
		</div>
		
		<div class="list" style="margin-bottom: 50px;">
			<ul class="myZhilianList">
        <li>
            <a class="__ga__index_MyApplyEvent_001 wrap" href="showMyDeliver.do">
                <img src="img/myZhilianList_icon_1.png" width="30" height="30" alt="">
                <span class="name">我的投递<b id="myAppliedCount"></b></span>
            </a>
        </li>
        <li>
            <a href="showMyHunt.do" class="__ga__index_COpening09_001 wrap" >
                <img src="img/myZhilianList_icon_7.png" width="30" height="30" alt="">
                <span class="name">我的求职</span>
                
            </a>
        </li>
        <li>
            <a class="__ga__index_MyCollectEvent_001 wrap" href="collection.do">
                <img src="img/myZhilianList_icon_2.png" width="30" height="30" alt="">
                <span class="name">我的收藏</span>
            </a>
        </li>
        <li>
            <a class="__ga__index_MyResume_001 wrap" href="showMyResume.do">
                <img src="img/myZhilianList_icon_5.png" width="30" height="30" alt="">
                <span class="name">我的简历</span>
            </a>
        </li>
    </ul>
    <!--<div class="SignOut" onclick="#"><span>退出登录</span></div>-->
</div>
		

		<!--底部按钮-->
		<nav class="mui-bar mui-bar-tab footernav">
			<a class=" footernavli " href="index.do">
				<span class="footernavimg"><img src="img/home.png"></span>
				<span class="mui-tab-label footernavtxt">首页</span>
			</a>
			<a class="footernavli" href="searchPage.do">
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
			<a class="footernavli mui-active 、?" href="mime.do">
				<span class="footernavimg "><img src="img/user.png"></span>
				<span class="mui-tab-label footernavtxt">我的</span>
			</a>
		</nav>

		<script src="js/jquery-2.1.4.min.js"></script>
		<script src="js/bootstrap.min.js"></script>

	</body>

</html>