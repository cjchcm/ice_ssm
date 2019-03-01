<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>我的收藏</title>
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
            <div class="r_returnbk" onclick="javascript:history.go(-1);">
				<img src="img/r_icon7.png" height="30">
			</div>
            我的收藏
        </header>
<div class="">

      <c:choose>
      <c:when test="${role=='company'}">
      <c:forEach var="hunt" items="${hunts}">
		<section class="listbox nobg  list">
			<div class="onesection">
				<a href="showHunt.do?huntId=${hunt.hunt_id}">
					<div class="jobname">${hunt.hunt_job }</div>

					<div class="time">${hunt.hunt_date }</div>

					<div class="companyname">${hunt.user_name }</div>
					<div class="box1">
						<span class="ads">${hunt.hunt_place }</span>
						<span class="fg">|</span>
						<span class="education">${hunt.hunt_degree }</span>
					</div>
					<div class="salary">${hunt.hunt_salary }元/月</div>
				</a>
			</div>
		</section>
		</c:forEach>
		</c:when>
		<c:otherwise>
		<c:forEach var="recruit" items="${recruits}">
		<section class="listbox nobg  list">
			<div class="onesection">
				<a href="showRecruit.do?recrId=${recruit.recr_id}">
					<div class="jobname">${recruit.recr_job }</div>

					<div class="time">${recruit.recr_date }</div>

					<div class="companyname">${recruit.comp_name }</div>
					<div class="box1">
						<span class="ads">${recruit.recr_place }</span>
						<span class="fg">|</span>
						<span class="education">${recruit.recr_degree }</span>
					</div>
					<div class="salary">${recruit.recr_salary }元/月</div>
				</a>
			</div>
		</section>
		</c:forEach>
		</c:otherwise>
		</c:choose>
		<div class="t_half" style="margin-top: 2px;padding: 5px; background: #ffffff;">
			<div class="j_page">
				<a rel="nofollow" href="#">首页</a>
				<a class="hover">上一页</a>
				<div class="j_pageSeWrap">
					<span class="text">1</span>
					<select onchange="pagechange(this);">
                            <option value="1" selected="selected">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                            <option value="13">13</option>
                            <option value="14">14</option>
                            <option value="15">15</option>
                            <option value="16">16</option>
                            <option value="17">17</option>
                            <option value="18">18</option>
                            <option value="19">19</option>
                            <option value="20">20</option>
                </select>
				</div>
				<a rel="nofollow" href="#">下一页</a>
				<a rel="nofollow" href="#">末页</a>

			</div>
		</div>
		</div>
	</body>

</html>