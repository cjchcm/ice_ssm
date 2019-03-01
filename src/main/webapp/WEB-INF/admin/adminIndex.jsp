<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>首页</title>
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
				background: #f0f0f0;
			}
			.container-fluid{
				margin: 0 0;
				padding: 0 0;
			}
			.carousel{
				margin: 0 0;
				padding: 0 0;
			}
			.onesection{
				-webkit-box-flex:1.0;
			}
			.photos img{
				height: 100%;
				width: 100%;
				position:inherit;
			}
		</style>
		<header id="r_header" class="r_title">
			
			
				<div class="r_returnbk " style="width: 49px;height: 49px;text-align: center;">
			
			
				<!--<i><</i>-->
				</div>
			首页
		</header>
		
		<!--轮播图-->
		<div class="container-fluid">
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				</ol>
				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active photos">
						<img src="img/u4_state2.jpg" alt="...">
					</div>
					<div class="item photos">
						<img src="img/u4_state1.jpg" alt="...">
					</div>
					<div class="item photos">
						<img src="img/u4_state0.jpg" alt="...">
					</div>
				</div>
				<!-- Controls -->
				<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
				</a>
				<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				</a>
			</div>
		</div>
		
<div id="minheight" style="min-height: 468px;">
	<div style="background-color:#fff;">
		<section id="r_content">
			<div class="r_shadow">
				<div class="r_searchlist positiolist">
				
				
				<c:forEach var="recruit" items="${recruits}">
				
					<section class="listbox nobg  list">
						<div class="onesection">
							<a href="showRecruit.do?recrId=${recruit.recr_id}">
								<div class="jobname">${recruit.recr_job}</div>
	
								<div class="time">${recruit.recr_date}</div>
	
								<div class="companyname">${recruit.comp_name}</div>
								<div class="box1">
									<span class="ads">${recruit.recr_place}</span>
									<span class="fg">|</span>
									<span class="education">${recruit.recr_degree}</span>
								</div>
	
								<div class="salary">${recruit.recr_salary}元/月</div>
							</a>
						</div>
					</section>
					</c:forEach>
				
					
				<style>
					.listbox.list {
						height: 70px;

					}
				</style>
					
				
					<!--每个session是一条记录-->
					

					
				</div>
			</div>

		</section>
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
		   			<a class="hover" href="adminindex.do?currentPage=${pageController.previousPage}">上一页</a>
		   		</c:when>
		   		<c:otherwise>
		   			<a class="hover">上一页</a>
		   		</c:otherwise>
	   		</c:choose>
			<div class="j_pageSeWrap">
				<span class="text">${pageController.currentPage}</span>
				<select onchange="pagechange('parent',this,0);">
					
					<c:forEach var="i" begin="1" end="${pageController.totalPages}">
						<c:if test="${i == pageController.currentPage}">
							<option value="${i}" selected>${i}</option>
						</c:if>
						<c:if test="${i != pageController.currentPage}">
							<option value="${i}">${i}</option>
						</c:if>
					</c:forEach>
                </select>
			</div>
			
		    <c:choose>
		   		<c:when test="${pageController.hasNext}">
		   			<a class="hover" href="adminindex.do?currentPage=${pageController.nextPage}">下一页</a>
		   		</c:when>
		   		<c:otherwise>
		   			<a class="hover">下一页</a>
		   		</c:otherwise>
	   		</c:choose>
	   		<c:choose>
		   		<c:when test="${pageController.hasNext}">
		   			<a rel="nofollow" href="adminindex.do?currentPage=${pageController.totalPages}">末页</a>
		   		</c:when>
		   		<c:otherwise>
		   			<a rel="nofollow">末页</a>
		   		</c:otherwise>
	   		</c:choose>
		</div>
	</div>
</div>
	
<!--底部按钮-->	
<!--<ul class="nav nav-tabs navbar-fixed-bottom stand" role="tablist">
	<li role="presentation" class="active">
		<a href="#" aria-controls="home" role="tab" data-toggle="tab" style="color: #dff0d8;text-align: center">首页</a></li>
	<li role="presentation">
		<a href="#" aria-controls="profile" role="tab" data-toggle="tab" style="color: #dff0d8;text-align: center">发现</a></li>
	<li role="presentation">
		<a href="#" aria-controls="messages" role="tab" data-toggle="tab" style="color: #dff0d8;text-align: center">+</a></li>
	<li role="presentation">
		<a href="#" aria-controls="settings" role="tab" data-toggle="tab" style="color: #dff0d8;text-align: center">消息</a></li>
	<li role="presentation">
		<a href="#" aria-controls="settings" role="tab" data-toggle="tab" style="color: #dff0d8;text-align: center">我的</a></li>
</ul>-->
        <nav class="mui-bar mui-bar-tab footernav">
			<a class=" footernavli mui-active " href="#">
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
			<a class="footernavli" href="messageCenter.do">
				<span class="footernavimg"><img src="img/message1.png"></span>
				<span class="mui-tab-label footernavtxt">消息中心</span>
			</a>
		</nav>

		<script src="js/jquery-2.1.4.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		
<script>
// $(function(){
//  $(".footernavli").click(function(){
//      $(this).addClass("mui-active");
//      $(this).siblings().removeClass("mui-active");
//  });
//});

    function login() {
        window.location.href = "login.html";
    }

	function pagechange(targ,selObj,restore){ 
		eval(targ+".location='adminindex.do?currentPage="+selObj.options[selObj.selectedIndex].value+"'"); 
		if (restore) selObj.selectedIndex=0; 
	} 
  </script>
  
  
	</body>

</html>