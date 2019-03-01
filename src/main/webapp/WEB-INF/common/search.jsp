<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>发现</title>
		<link rel="shortcut icon" href="img/head1.png">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Bootstrap -->
		<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
		<link href="css/forAll.css" rel="stylesheet" media="screen">
		<link href="css/main.css" rel="stylesheet" media="screen">
		<link href="css/search.css" rel="stylesheet" media="screen">
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
		</style>
		<header id="r_header" class="r_title">
			<div class="r_returnbk " onclick="javascript:history.go(-1);">
				<!--<i><</i>-->
				<img src="img/r_icon7.png" />
			</div>
			搜索
		</header>
		
		
		<div class="indexSearchContentTop">
            <span class="close left"></span>
            <div class="wrap left">
                <form action="search.do" method="post">
                    <input type="search" name="keyword" id="indexSearchBox" autofocus="autofocus" class="left tput">
                    <input class="btn right" type="submit" value="">
                </form>
            </div>
        </div>
        
<div id="minheight" style="min-height: 468px;">
	<div style="background-color:#fff;">
		
		<section id="r_content">
			<div class="r_shadow">
				<div class="r_searchlist positiolist">

					<!--每个session是一条记录-->
					<c:choose>
				<c:when test="${role=='person'}">
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
				</c:when>
				<c:otherwise>
			<c:forEach var="hunt" items="${hunts}">
				<style>
					.listbox.list {
						height: 70px;

					}
				</style>
					<section class="listbox nobg  list">
						<div class="onesection">
							<a href="showHunt.do?huntId=${hunt.hunt_id}">
								<div class="jobname">${hunt.hunt_job}</div>
	
								<div class="time">${hunt.hunt_date}</div>
	
								<div class="companyname"></div>
								<div class="box1">
									<span class="ads">${hunt.hunt_place}</span>
									<span class="fg">|</span>
									<span class="education">${hunt.hunt_degree}</span>
								</div>
	
								<div class="salary">${hunt.hunt_salary}元/月</div>
								</a>
						</div>
					</section>
			</c:forEach>
				</c:otherwise>
				</c:choose>
				
				
				
				</div>
			</div>

		</section>
		<div class="j_page">
	<c:choose>
		<c:when test="${keyword==null}">
		
		
		<!--不是关键字搜索-->
		<c:choose>
		   		<c:when test="${pageController.currentPage!=1}">
		   			<a rel="nofollow" href="searchPage.do">首页</a>
		   		</c:when>
		   		<c:otherwise>
		   			<a rel="nofollow">首页</a>
		   		</c:otherwise>
	   		</c:choose>
	   		<c:choose>
		   		<c:when test="${pageController.hasPrevious}">
		   			<a class="hover" href="searchPage.do?currentPage=${pageController.previousPage}">上一页</a>
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
		   			<a class="hover" href="searchPage.do?currentPage=${pageController.nextPage}">下一页</a>
		   		</c:when>
		   		<c:otherwise>
		   			<a class="hover"">下一页</a>
		   		</c:otherwise>
	   		</c:choose>
	   		<c:choose>
		   		<c:when test="${pageController.hasNext}">
		   			<a rel="nofollow" href="searchPage.do?currentPage=${pageController.totalPages}">末页</a>
		   		</c:when>
		   		<c:otherwise>
		   			<a rel="nofollow">末页</a>
		   		</c:otherwise>
	   		</c:choose>
		
		
		</c:when>
		
		
		<c:otherwise>
		
			
		
		</c:otherwise>
	</c:choose>
		</div>
	</div>
</div>
	
<!--底部按钮-->	

        <nav class="mui-bar mui-bar-tab footernav" >
			<a  class=" footernavli " href="index.do">
				<span class="footernavimg"><img src="img/home.png"></span>
				<span class="mui-tab-label footernavtxt" >首页</span>
			</a>
			<a class="footernavli mui-active " href="searchPage.do" >
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
		eval(targ+".location='searchPage.do?currentPage="+selObj.options[selObj.selectedIndex].value+"'"); 
		if (restore) selObj.selectedIndex=0; 
	} 
	function pagechange1(targ,selObj,restore){ 
		eval(targ+".location='search.do?currentPage="+selObj.options[selObj.selectedIndex].value+"'"); 
		if (restore) selObj.selectedIndex=0; 
	}
  </script>
  
  
	</body>

</html>