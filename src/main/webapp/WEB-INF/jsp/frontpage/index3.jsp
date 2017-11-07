<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/common_tag.jsp"%>
<%@ include file="/WEB-INF/common/common_css.jsp"%>
<%@ include file="/WEB-INF/common/common_js.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
/* .border {
	border: 1px solid black;
}
.bg1{
	background-color:red;
}

.select-list dd{
	float: left;
	    margin-right: 5px;
}
.selected{
	background-color: #b5b8bd;
} */

.row{
	 margin-top: 5px;
}

.little_font1{
	font-size: small;
}
.selected{
	background-color: #b5b8bd;
}

ul{
	padding: 0px;
}
.select-list li{
	font-size: large;
    list-style-type: none;
    float: left;
    margin-left: 3px;
    margin-right: 3px;
    padding-left: 5px;
    padding-right: 5px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	$(function($) {
		 $("#circle_ul li").click(function() { 
			 	if($(this).hasClass("selected")){
			 		$(this).removeClass("selected");
			 	}
			 	else
			 	{
			 		$(this).addClass("selected").siblings().removeClass("selected");
			 	}
			 	
			 	var str="<li>"+$(this).val()+"</li>";
			 	$("#child_ul").html(str);
			 	if($("#child_ul").length > 0){
			 		$("#child_title").html("分类");
			 	}
			 	
			 	$("#location_content").html($(this).html());
		 });  
		 
		 $("#child_ul").on("click","li",function(){
			 if($(this).hasClass("selected")){
			 		$(this).removeClass("selected");
			 	}
			 	else
			 	{
			 		$(this).addClass("selected").siblings().removeClass("selected");
			 	}
			 	
			 	$("#location_content").append($(this).html());
		 });
	}); 
</script>
</head>
<body>
	<div class="container">
		<div id="location" class="row border">
			<div id="location_title" class="col-md-1 little_font1">当前选项：</div>
			<div id="location_content" class="col-md-11"></div>
		</div>
	
		<div id="circle" class="row border">
			<div id="circle_title" class="col-md-1">圈子:</div>
			<div id="circle_content" class="col-md-11">
				<ul id="circle_ul" class="select-list">  
				    <li value="1">  
				    	商圈
				    </li>
				    <li value="2">  
				    	商圈
				    </li> 
				    <li value="3">  
				    	商圈
				    </li> 
				    <li value="4">  
				    	商圈
				    </li>
				 </ul>
			</div>
		</div>

		<div id="child" class="row">
			<div id="child_title" class="col-md-1"></div>
			<div id="child_content" class="col-md-11">
				<ul id="child_ul" class="select-list">
					
				</ul>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-8">
				<div class="row">
					<div class="col-md-12">
						<div class="media">
							<div class="media-body">
								<span class="little_font1">来自：IT圈>大前端</span>
								<h4>Android，IOS和微信端，等移动端页面设计</h4>
								<div>
									<a href="#"><img class="img-circle" src="${baseurl }/static/img/headpic.jpg" width="40px;"><span> 易大师</span></a>
									<span class="label label-success"> 资深前端工程师</span> <span class="label label-success"> 资深前端工程师</span>
								</div>
								<div>开课时间：2017-10-24 | 持续时间：50min | 传授地点：上门传授</div>
								<div class="media">
									<a class="media-left" href="#">
										<img class="media-object" src="${baseurl }/static/img/logo.png" alt="媒体对象" width="100px;">
									</a>
									<div class="media-body">
										<!-- <h4 class="media-heading">媒体标题</h4> -->
										这是一些示例文本。这是一些示例文本。
										这是一些示例文本。这是一些示例文本。
										这是一些示例文本。这是一些示例文本。
										这是一些示例文本。这是一些示例文本。
										这是一些示例文本。这是一些示例文本。
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div> 
			<div class="col-md-4"></div>
		</div>
		</div>
</body>

<script type="text/javascript">

</script>
</html>