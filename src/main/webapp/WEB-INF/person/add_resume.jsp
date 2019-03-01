<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>添加简历</title>
		<link rel="shortcut icon" href="img/head1.png">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Bootstrap -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/resume.css" rel="stylesheet">
		<link href="css/forAll.css" rel="stylesheet" media="screen">
		<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	</head>

	<body>
		<style>
			body {
				min-height: 457px;
			}
			
			.resumeName {
				height: 30px
			}
			
			.ggb {
				color: #a0a0a0;
				float: right;
			}
			
			.btn-default {
				width: 95px;
				height: 28px;
				line-height: 20px;
			}
			
			.btn-primary {
				width: 95px;
				height: 30px;
				line-height: 20px;
			}
			
			.modal {
				width: 300px;
				margin-left: -150px;
			}
		</style>
		<!--头部-->
		<header id="r_header" class="r_title">
			<div class="r_returnbk" onclick="location='showMyResume.do'">
				<img src="img/r_icon7.png" height="30">
			</div>
			添加简历
		</header>	
		<div class="t_half" style="margin-top: 2px;padding: 20px 10px;line-height:15px; background: #FFFFFF;">
			<div class="resumeName">
				<center>简历名称<input id="resumeName" type="text" name="username" value="" size="12" style="margin-left:10px;border:0px;border-bottom:#000000 1px solid;background: #FFFFFF;"></center>
			</div>
		</div>
		<div class="t_half" style="margin-top: 2px;padding: 20px 10px;line-height:15px; background: #FFFFFF;">
			<div class="resumeName">
				<center>应聘职位<input id="resuJob" type="text" name="username" value="" size="12" style="margin-left:10px;border:0px;border-bottom:#000000 1px solid;background: #FFFFFF;"></center>
			</div>
		</div>
		<div class="" data-toggle="modal" data-target="#myModa1" style="margin-top: 2px;padding: 20px 10px;line-height:15px; background: #FFFFFF;">
			<a>
				<span>教育背景</span>
				<span class="ggb"> > </span>
			</a>
		</div>
		<div class="t_half" data-toggle="modal" data-target="#myModa2" style="margin-top: 2px;padding: 20px 10px;line-height:15px; background: #FFFFFF;">
			<a>
				<span>工作/实习经历</span>
				<span class="ggb"> > </span>
			</a>
		</div>
		<div class="t_half" style="margin-top: 2px;padding: 20px 10px;line-height:15px; background: #FFFFFF;">
			<a data-toggle="modal" data-target="#myModa3">
				<span>项目经验（选填）</span>
				<span class="ggb"> > </span>
			</a>
		</div>
		<div class="" style="margin-top: 2px;padding: 20px 10px;line-height:15px; background: #FFFFFF;">
			<h5>自我评价</h5>
			<textarea id="selfEvaluate" style="width:95%" rows="5" cols="20"></textarea>
		</div>
		<div class="" style="padding-top: 1; background: #FFFFFF;">
			<center>
				<div class="button btn" style="margin-top: 0px;" onclick="addResume()"/>完成</center>
		</div>

		<!--弹出模板框！-->
		<!-- 教育背景 -->
		<div class="big">
			<center>
				<div class="modal fade" id="myModa1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="display: none">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header" style="padding-left:0px;padding-right:0px;">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<!--<h4 class="modal-title" id="myModalLabel">选择简历</h4>-->
								<div id="Resume_Jybj" class="Resume_Content_Box" style="margin-top: 30px;">
									<span class="tit" data-en-name="Education">教育背景</span><span data-en-name="(Required)" class="tit_required">(必填)</span>

								</div>
							</div>
							<div class="modal-body" style="padding:0px 0px;">

								<div id="Resume_Jybj_Content" class="Resume_Box_Content">
									<div class="edit" id="Resume_Jybj_Edit" style="display: block;">
										<ul class="list" style="margin-left: 10px; padding-left: 0px;">
											<li class="text">
												<b class="name" data-en-name="School Name">学校名称</b>
												<input id="edu_SchoolName" type="text" placeholder="请输入学校名称" value="">
											</li>
											<li class="text">
												<b class="name" data-en-name="Major">专业名称</b>
												<input id="edu_Major" type="text" placeholder="请输入专业名称" value=""></input>
											</li>
											<li class="text system">
												<b class="name" data-en-name="Degree">学历/学位</b>
												<input id="edu_Degree" class="Resume_Xlxw_Con" type="text" placeholder="请输入学历/学位" value=""></input>
											</li>
											<li class="text">
												<b class="name" data-en-name="Start Time">入学时间</b>
												<input id="edu_StartTime" type="text" value="" placeholder="年/月/日"></input>
											</li>
											<li class="text">
												<b class="name" data-en-name="End Time">毕业时间</b>
												<input id="edu_EndTime" type="text" value="" placeholder="年/月/日"></input>
											</li>

										</ul>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="button btn btn-primary" onclick="Resume_Save_Jybj(this);">确认</button>
									<button type="button" id="eduClose" class="button btn1 btn-default" data-dismiss="modal">关闭</button>

								</div>
							</div>
						</div>
					</div>
			</center>
			</div>

<!--工作/实习经验-->
<div class="big">
	<center>
		<div class="modal fade" id="myModa2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="display: none">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header" style="padding-left:0px;padding-right:0px;">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<!--<h4 class="modal-title" id="myModalLabel">选择简历</h4>-->
						<div id="Resume_Gzjy" class="Resume_Content_Box" style="margin-top: 30px;">
							<span class="tit" data-en-name="Work Experience">工作经验</span><span data-en-name="(Required)" class="tit_required">(必填)</span>
						</div>
					</div>
					<div class="modal-body" style="padding:0px 0px;">
						<div id="Resume_Gzjy_Content" class="Resume_Box_Content">

							<div class="edit" id="Resume_Gzjy_Edit" style="display: block;">
								<ul class="list" style="margin-left: 10px; padding-left: 0px;">

									<li class="text">
										<b class="name" data-en-name="Company Name">公司名称</b>
										<input id="workExp_CompanyName" type="text" placeholder="请输入公司名称" value="">
									</li>
									<li class="text">
										<b class="name" data-en-name="Start Time">任职时间(开始)</b>
										<input class=" " id="workExp_StartTime" data-code="1" type="text" placeholder="年/月/日"></input>
									</li>
									<li class="text">
										<b class="name" data-en-name="End Time">任职时间(结束)</b>
										<input class=" " data-code="0" id="workExp_EndTime" type="text" placeholder="年/月/日"></input>
									</li>
									<li class="text">
										<b class="name" data-en-name="Industry">所在行业</b>
										<input id="workExp_Industry" placeholder="请输入所在行业"></input>
									</li>
									<!--<li class="text">
										<b class="name" data-en-name="JobType">职位类别</b>
										<span id="workExp_JobType" data-code="" data-scode="" data-en-name="" data-cn-name=""></span>
									</li>-->
									<li class="text">
										<b class="name" data-en-name="Job Name">职位名称</b>
										<input id="workExp_JobName" type="text" placeholder="请输入职位名称" value="">
									</li>
									<!--<li class="text system">
										<b class="name" data-en-name="Salary">职位薪金(税前)</b>
										<span id="Resume_Btn_Zwxjpre"></span>
									</li>-->
									<li class="text job_description">
										<b class="name" data-en-name="Job Description">工作描述:</b>
										<textarea id="workExp_JobDesc" data-cn-name="工作描述" placeholder="请输入工作描述，字数不超过2000字。" maxlength="2000"></textarea>
									</li>
								</ul>
							</div>
						</div>

						<div class="modal-footer">
							<button type="button" class="button btn btn-primary" onclick="Resume_Save_Gzjy(this);">确认</button>
							<button type="button" id="jobClose" class="button btn1 btn-default" data-dismiss="modal">关闭</button>

						</div>
					</div>
				</div>
			</div>
	</center>
	</div>
	
	
	<!--项目经验-->
<div class="big">
	<center>
		<div class="modal fade" id="myModa3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="display: none">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header" style="padding-left:0px;padding-right:0px;">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<!--<h4 class="modal-title" id="myModalLabel">选择简历</h4>-->
						<div id="Resume_Qzyx" class="Resume_Content_Box">
						    <span data-en-name="Career Objective" class="tit">项目经验</span><span data-en-name="(Required)" class="tit_required">(选填)</span>
						
						</div>
					</div>
					<div class="modal-body" style="padding:0px 0px;">
						<div id="Resume_Gzjy_Content" class="Resume_Box_Content">

							<div class="edit" id="Resume_Gzjy_Edit" style="display: block;">
								<ul class="list" style="margin-left: 10px; padding-left: 0px;">

									<li class="text">
										<b class="name" data-en-name="Company Name">项目名称</b>
										<input id="ProjectName" type="text" placeholder="请输入项目名称" value="">
									</li>
									
									<li class="text job_description">
										<b class="name" data-en-name="Job Description">项目描述:</b>
										<textarea id="ProjectDesc" data-cn-name="项目描述" placeholder="请输入项目描述，字数不超过2000字。" maxlength="2000"></textarea>
									</li>
									<li class="text job_description">
										<b class="name" data-en-name="Job Description">负责内容:</b>
										<textarea id="chargeDesc" data-cn-name="负责内容" placeholder="请输入负责内容，字数不超过2000字。" maxlength="2000"></textarea>
									</li>
								</ul>
							</div>
						</div>

						<div class="modal-footer">
							<button type="button" class="button btn btn-primary" onclick="ProjectCheck()">确认</button>
							<button type="button" id="projectClose" class="button btn1 btn-default" data-dismiss="modal">关闭</button>

						</div>
					</div>
				</div>
			</div>
	</center>
	</div>
		
			<script src="js/jquery-2.1.4.min.js"></script>
			<script src="js/bootstrap.min.js"></script>


<!--教育背景的js！！！！！-->
<script>
	//保存教育背景
	function Resume_Save_Jybj(_this) {
		//判断学校名称是否为空
		if ($("#edu_SchoolName").val() == "") {
			handlePrompt("学校名称不能为空");
			return false;
		}
		//判断专业名称是否为空
		if ($("#edu_Major").val() == "") {
			handlePrompt("专业名称不能为空");
			return false;
		}
		//判断学历是否为空
		if ($("#edu_Degree").val() == "" || $("#edu_Degree").attr("data-code") == -1) {
			handlePrompt("学历/学位不能为空");
			return false;
		}
		//判断入学时间是否为空
		if ($("#edu_StartTime").val() == "") {
			handlePrompt("入学时间不能为空");
			return false;
		}
		var reg = /^\d{4}(\-|\/|\.)\d{1,2}\1\d{1,2}$/;
		if (!reg.test($("#edu_StartTime").val())) {
			handlePrompt("入学时间格式不正确");
			return false;
		}
		
		if ($("#edu_EndTime").val() == "") {
			handlePrompt("毕业时间不能为空");
			return false;
		}
		if (!reg.test($("#edu_EndTime").val())) {
			handlePrompt("毕业时间格式不正确");
			return false;
		}
		
		$('#eduClose').click();
		
	}

	//判断完整度
	function EduCheakVal() {
		var Eduwanzheng = true;
		$("#Resume_Jybj_Show .list dd").each(function() {
			var Jytext = $(this).children("b").text();
			if (Jytext == "" || Jytext == " " || Jytext == undefined) {
				$(this).children("b").addClass("weitianxie").css("color", "#f00");
				$(this).children("b").text("未填写");
				Eduwanzheng = false;
				$(this).parents(".list").attr("data-wz", "F");
			}
		});
	}
	//判断是否为空 
	EduCheakVal();
</script>

<!--工作/实习经历的js！！！！！！！-->
<script>
	//保存工作经验
    function Resume_Save_Gzjy(_this){
        //判断公司名称是否为空
        if($("#workExp_CompanyName").val()==""){
            handlePrompt("公司名称不能为空");
            return false;
        }
        //判断任职时间(开始)是否为空
        if($("#workExp_StartTime").val()==""){
            handlePrompt("任职时间(开始)不能为空");
            return false;
        }
        var reg = /^\d{4}(\-|\/|\.)\d{1,2}\1\d{1,2}$/;
		if (!reg.test($("#workExp_StartTime").val())) {
			handlePrompt("任职时间(开始)格式不正确");
			return false;
		}
        //判断任职时间(结束)是否为空
        if($("#workExp_EndTime").val()==""){
            handlePrompt("任职时间(结束)不能为空");
            return false;
        }
        if (!reg.test($("#workExp_EndTime").val())) {
			handlePrompt("任职时间(结束)格式不正确");
			return false;
		}
        //判断行业类别是否为空
        if($("#workExp_Industry").val()==""){
            handlePrompt("所在行业不能为空");
            return false;
        }
        //判断职位名称是否为空
        if($("#workExp_JobName").val()==""){
            handlePrompt("职位名称不能为空");
            return false;
        }
        
        //判断工作描述是否为空
        if($("#workExp_JobDesc").val()==""){
            handlePrompt("工作描述不能为空");
            return false;
        }
        
       $('#jobClose').click();
    }

	function ProjectCheck(){
		$('#projectClose').click();
	}
    //判断完整度
    function WorkCheakVal(){
        var Workwanzheng = true;
        $("#Resume_Gzjy_Show .list dd").each(function () {
            var Gztext= $(this).children("b").text();
            if (Gztext == "" || Gztext == " " || Gztext == undefined) {
                $(this).children("b").addClass("weitianxie").css("color","#f00");
                $(this).children("b").text("未填写");
                Workwanzheng=false;
                $(this).parents(".list").attr("data-wz","F");
            }
        
        });
    }

    //判断是否为空
    WorkCheakVal();
</script>

<script>
	//====处理完成后弹出提示====
	function handlePrompt(val) {
		$("body").append("<div class='handlePrompt'>" + val + "</div>");
		setTimeout(function() {
			$(".handlePrompt").first().remove();
		}, 1000);
	}
	
	function addResume(){
		var resumeName = $("#resumeName").val();
		var resuJob = $("#resuJob").val();
		
		var edu_SchoolName = $("#edu_SchoolName").val();
		var edu_Major = $("#edu_Major").val();
		var edu_Degree = $("#edu_Degree").val();
		var edu_StartTime = $("#edu_StartTime").val();
		var edu_EndTime = $("#edu_EndTime").val();
		
		var education=edu_SchoolName+"-"+edu_Major+"-"+edu_Degree+"-"+edu_StartTime+"~"+edu_EndTime;
		
		var workExp_CompanyName = $("#workExp_CompanyName").val();
		var workExp_StartTime = $("#workExp_StartTime").val();
		var workExp_EndTime = $("#workExp_EndTime").val();
		var workExp_Industry = $("#workExp_Industry").val();
		var workExp_JobName = $("#workExp_JobName").val();
		var workExp_JobDesc = $("#workExp_JobDesc").val();
		
		var jobExperience=workExp_CompanyName+"-"+workExp_StartTime+"~"+workExp_EndTime+"-"+workExp_Industry+"-"+workExp_JobName+"-"+workExp_JobDesc;
		
		
		var ProjectName = $("#workExp_JobName").val();
		var ProjectDesc = $("#ProjectDesc").val();
		var chargeDesc = $("#chargeDesc").val();
		
		var projectExperience=ProjectName+"-"+ProjectDesc+"-"+chargeDesc;
		
		var selfEvaluate = $("#selfEvaluate").val();
	
		
		if (resumeName == "") {
			handlePrompt("简历名称不能为空");
			return false;
		}
		if(edu_SchoolName==""||edu_Major==""||edu_Degree==""||edu_StartTime==""||edu_EndTime==""){
			handlePrompt("请补全教育背景信息");
			return false;
		}
		if(workExp_CompanyName==""||workExp_StartTime==""||workExp_EndTime==""||workExp_Industry==""||workExp_JobName==""||workExp_JobDesc==""){
			handlePrompt("请补全工作/实习经历信息");
			return false;
		}
		if (resuJob == "") {
			handlePrompt("应聘职位不能为空");
			return false;
		}
		if (selfEvaluate == "") {
			handlePrompt("自我评价不能为空");
			return false;
		}

		var url = "addResume.do";
	    $.post(url,
	    {
	    	resumeName:resumeName,
	    	resuJob:resuJob,
	    	education:education,
	    	jobExperience:jobExperience,
	    	projectExperience:projectExperience,
	    	selfEvaluate:selfEvaluate
	    },
	     function(data){
	        if(data=="success")
	        	window.location.href="showMyResume.do";
	        else if(data=="fail")
	        	handlePrompt("修改失败！");
	     }
		);
		
	}
</script>

	</body>

</html>