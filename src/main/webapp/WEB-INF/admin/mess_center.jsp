<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>消息中心</title>
		<link rel="shortcut icon" href="img/head1.png">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Bootstrap -->
		<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
		<link href="css/forAll.css" rel="stylesheet" media="screen">
		<link href="css/main.css" rel="stylesheet" media="screen">
	</head>

	<body>
		<style>
			body {
				min-height: 457px;
			}
			.css1 {
				color: #6699ff;
				border: 1px #FFFFFF dashed;
				margin-bottom: 20px;
				width: 20em;
				/*不允许出现半汉字截断*/
			}
			.css2 {
				overflow: hidden;
				/*自动隐藏文字*/
				
				text-overflow: ellipsis;
				/*文字隐藏后添加省略号*/
				
				white-space: nowrap;
				/*强制不换行*/
				
				width: 20em;
				/*不允许出现半汉字截断*/
				
				color: #6699ff;
				border: 1px #FFFFFF dashed;
			}
		</style>
		<!--头部-->
		<header id="r_header" class="r_title">
			<div class="r_returnbk" onclick="javascript:history.go(-1);">
				<img src="img/r_icon7.png" height="30">
			</div>
			消息中心
		</header>
		<c:forEach var="messages" items="${messages}">
		<div class="t_half" style="margin-top: 2px;padding: 20px 10px 10px 10px; background: #FFFFFF;">
			<a href="#" data-toggle="modal" data-target="#${messages.mess_id}">
				<div class="css2" style="text-align: left;">
					${messages.content}
				</div>
				<div style="text-align: right;">
					<font color="#666666">

		    		${messages.mess_date}

		    		</font>
				</div>
			</a>
			<div style="text-align: right;">
				<input type="button" onclick="deleteM(${messages.mess_id})" value="删除" style="color: #FF0000;"/>
			</div>
		</div>
		<div class="big">
		<center>
			<div class="modal fade" id="${messages.mess_id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header style= text-align:center;">
							<h3>${messages.mess_type}</h3>
						</div>
						<div class="modal-body ">
							<textarea style="width:90% " rows="5 " cols="20 ">
                          ${messages.content} 
							</textarea>
						</div>
					</div>
				</div>
			</div>
		</center>
	</div>
	</c:forEach>
		<div class="t_half" style="margin-top: 2px;padding: 20px 10px 10px 10px; background: #FFFFFF;">
			<div class="j_page">
				<c:choose>
		   		<c:when test="${pageController.currentPage!=1}">
		   			<a rel="nofollow" href="index.do">首页</a>
		   		</c:when>
		   		<c:otherwise>
		   			<a rel="nofollow">首页</a>
		   		</c:otherwise>
	   		</c:choose>
	   		<c:choose>
		   		<c:when test="${pageController.hasPrevious}">
		   			<a class="hover" href="messageCenter.do?currentPage=${pageController.previousPage}">上一页</a>
		   		</c:when>
		   		<c:otherwise>
		   			<a class="hover">上一页</a>
		   		</c:otherwise>
	   		</c:choose>
			<div class="j_pageSeWrap">
				<span class="text">${pageController.currentPage}</span>
				<select onchange="pagechange('parent',this,0);">
					
					<c:forEach var="i" begin="1" end="${pageController.totalPages}">
						<option value="${i}">${i}</option>
					</c:forEach>
                </select>
			</div>
			
		    <c:choose>
		   		<c:when test="${pageController.hasNext}">
		   			<a class="hover" href="messageCenter.do?currentPage=${pageController.nextPage}">下一页</a>
		   		</c:when>
		   		<c:otherwise>
		   			<a class="hover">下一页</a>
		   		</c:otherwise>
	   		</c:choose>
	   		<c:choose>
		   		<c:when test="${pageController.hasNext}">
		   			<a rel="nofollow" href="messageCenter.do?currentPage=${pageController.totalPages}">末页</a>
		   		</c:when>
		   		<c:otherwise>
		   			<a rel="nofollow">末页</a>
		   		</c:otherwise>
	   		</c:choose>
		</div>
        </div>
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
			<a class="footernavli" href="showHMessList.do">
				<span class="footernavimg"><img src="img/message2.png"></span>
				<span class="mui-tab-label footernavtxt">信息审核</span>
			</a>
			<a class="footernavli mui-active " href="#">
				<span class="footernavimg"><img src="img/message1.png"></span>
				<span class="mui-tab-label footernavtxt">消息中心</span>
			</a>
		</nav>
	<script>
			function deleteM(mess_id){
				window.location.href="deleteM.do?mess_id="+mess_id+"";
			}
			function pagechange(targ,selObj,restore){ 
		eval(targ+".location='messageCenter.do?currentPage="+selObj.options[selObj.selectedIndex].value+"'"); 
		if (restore) selObj.selectedIndex=0; 
	} 
		</script>
	<script src="js/jquery-2.1.4.min.js "></script>
	<script src="js/bootstrap.min.js "></script>
	</body>
</html>