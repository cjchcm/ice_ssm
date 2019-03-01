<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>发布消息</title>
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
			input {
				border: 1px solid #D5D5D5;
			}
			.warn_message {
				color: red;
				background: #fff;
				line-height: 20px;
				font-size: 13px;
				text-align: center;
				z-index: 4;
				
			}
		</style>
		<!--头部-->
		<header id="r_header" class="r_title">
            <div class="r_returnbk" onclick="javascript:history.go(-1);">
                <img src="img/r_icon7.png" height="30">
            </div>
           发布消息
        </header>
        
		<div class="t_half" style="padding: 20px 10px 20px 10px; background: #FFFFFF;">
					<form name="messForm">
					<center>
						<div>
							消息标题：
							<input type="text" name="title" id="mTitle" />
						</div>
						<div>
							角色选择：
							<span><input type="radio" name="role" value="person" checked="checked" onclick="showSelect();">个人</span>&nbsp;
							<span><input type="radio" name="role" value="company" onclick="showSelect();">公司</span>&nbsp;
							<span><input type="radio" name="role" value="all" onclick="showSelect();">所有人</span>&nbsp;
							<span><input id="only" type="radio" name="role" value="only" onclick="showSelect();">指定接收者</span>
						</div>
						<select name="sel" id="sel" style="display:none; margin-top: 20px;margin-bottom:5px ;">
							<option value="0">--指定接收人--</option>
							<c:forEach var="user" items="${users}">
								<option value="${user.user_email}">${user.user_email}</option>
							</c:forEach>
							<c:forEach var="company" items="${companys}">
								<option value="${company.comp_email}">${company.comp_email}</option>
							</c:forEach>
						</select>
					</center>
					</form>
		</div>
		<div class="t_half" style="margin-top: 2px;padding:20px 0 0 10px; background: #FFFFFF;">
			详细内容：
			<textarea id="mContent" style="width:95%" rows="8" cols="20"></textarea>
		</div>
		
		<div class="t_half" style="margin-top: 2px;padding:20px 0 0 10px; background: #FFFFFF;">
			<div class="warn_message"></div>
			<div style="padding-bottom: 20px;background: #FFFFFF;">
				<center><div class="button btn" onclick="sendMessage()">发送信息 </div> </center>
			</div>
		</div>
		<nav class="mui-bar mui-bar-tab footernav">
			<a class=" footernavli" href="adminindex.do">
				<span class="footernavimg"><img src="img/home.png"></span>
				<span class="mui-tab-label footernavtxt">我的首页</span>
			</a>
			<a class="footernavli" href="#">
				<span class="footernavimg"><img src="img/find.png"></span>
				<span class="mui-tab-label footernavtxt">企业认证</span>
			</a>
			<a class="footernavli mui-active " href="#">
				<span class="footernavimg"><img src="img/send.png"></span>
				<span class="mui-tab-label footernavtxt">发布信息</span>
			</a>
			<a class="footernavli" href="showHMessList.do">
				<span class="footernavimg"><img src="img/message2.png"></span>
				<span class="mui-tab-label footernavtxt">信息审核</span>
			</a>
			<a class="footernavli" href="messageCenter.do">
				<span class="footernavimg"><img src="img/message1.png"></span>
				<span class="mui-tab-label footernavtxt">消息中心</span>
			</a>
		</nav>
		<script src="js/jquery-2.1.4.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script type="text/javascript">
			function showSelect(){
			    var status = $("#only")[0].checked;
				var _s = document.getElementById('sel');
			   if ( status ){
					_s.style.display = '';
				}
				else{
					_s.style.display = 'none';
				}
			}

			function sendMessage(){
				$(".warn_message").html("");
				var mTitle=$("#mTitle").val();
				var role=document.messForm.role.value;
				var mContent=$("#mContent").val();
				var sel=$('#sel option:selected').val();
				
				if (mTitle == undefined || mTitle == '') {
		            $(".warn_message").html("请输入标题");
		            return;
        		}
        		if (role == undefined || role == '') {
		            $(".warn_message").html("请选择角色");
		            return;
        		}
        		if(role == 'only' && sel == '0'){
		            $(".warn_message").html("请选择收件人");
		            return;
        		}
        		if (mContent == undefined || mContent == '') {
		            $(".warn_message").html("请输入消息内容");
		            return;
        		}
        		var url="sendMessage.do";
        		$.post(url,
	        	{
	        		mTitle:mTitle,
	        		role:role,
	        		mContent:mContent,
	        		sel:sel
	        	},
	        	function(data){
	        		if(data=="success"){
	        			alert("发送成功！");
	        			window.location.href="sendMessagePage.do";
	        		}
	        			
	        		else if(data=="fail")
	        			$(".warn_message").html("发送失败");
	        	}
	        );
			}
		</script>
	</body>
</html>
