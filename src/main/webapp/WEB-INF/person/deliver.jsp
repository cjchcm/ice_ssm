<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>我的投递</title>
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
				background: #FFFFFF;
			}
			
			.onesection {
				-webkit-box-flex: 1.0;
			}
			
		</style>
		<!--头部-->
		<header id="r_header" class="r_title">
            <div class="r_returnbk" onclick="location='mime.do'">
                <img src="img/r_icon7.png" height="30">
            </div>
            我的投递
        </header>
		<c:forEach var="recruitResumes" items="${recruitResumes}">
		<section class="listbox nobg  list">
			<div class="onesection">
				<a href="showRecruit.do?recrId=${recruitResumes.recruit.recr_id}">
					<div class="jobname">${recruitResumes.recruit.recr_job}</div>

					<div class="time">${recruitResumes.deliver_date}</div>

					<div class="companyname">${recruitResumes.recruit.comp_name}</div>
					<div class="box1">
						<span class="ads">简历名:</span>
						<span class="resum_name">${recruitResumes.resume.resu_name}</span>
					</div>
					<div class="salary">${recruitResumes.recruit.recr_salary}元/月</div>
				</a>
			</div>
		</section>
		</c:forEach>
		<div class="t_half" style="margin-top: 2px;padding: 5px; background: #ffffff;">
			
			
			<div class="j_page">
				<c:choose>
		   		<c:when test="${pageController.currentPage!=1}">
		   			<a rel="nofollow" href="showMyDeliver.do">首页</a>
		   		</c:when>
		   		<c:otherwise>
		   			<a rel="nofollow">首页</a>
		   		</c:otherwise>
	   		</c:choose>
	   		<c:choose>
		   		<c:when test="${pageController.hasPrevious}">
		   			<a class="hover" href="showMyDeliver.do?currentPage=${pageController.previousPage}">上一页</a>
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
		   			<a class="hover" href="showMyDeliver.do?currentPage=${pageController.nextPage}">下一页</a>
		   		</c:when>
		   		<c:otherwise>
		   			<a class="hover"">下一页</a>
		   		</c:otherwise>
	   		</c:choose>
	   		<c:choose>
		   		<c:when test="${pageController.hasNext}">
		   			<a rel="nofollow" href="showMyDeliver.do?currentPage=${pageController.totalPages}">末页</a>
		   		</c:when>
		   		<c:otherwise>
		   			<a rel="nofollow">末页</a>
		   		</c:otherwise>
	   		</c:choose>

			</div>
			
			
			
		</div>
		</div>
		<script type="text/javascript">
			function pagechange(targ,selObj,restore){ 
				eval(targ+".location='showMyDeliver.do?currentPage="+selObj.options[selObj.selectedIndex].value+"'"); 
				if (restore) selObj.selectedIndex=0; 
			} 
		</script>
	</body>

</html>