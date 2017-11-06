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
#location{
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
    margin-right: 5px;
    width: 7%;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	$(function($) {
		 $(".select-list li").click(function() { 
			 	if($(this).hasClass("selected")){
			 		$(this).removeClass("selected");
			 	}
			 	else
			 	{
			 		$(this).addClass("selected").siblings().removeClass("selected");
			 	}
			 	
			 	var str="<li>"+$(this).val()+"</li>";
			 	$("#child_content ul").html(str);
			 	if($("#child_content").length > 0){
			 		$("#child_title").html("分类");
			 	}
			 	
			 	$("#location_content").html($(this).html());
		 });   
	}); 
</script>
</head>
<body>
	<div class="container border">
		<div id="location" class="row">
			<div id="location_title" class="col-md-1">当前选项：</div>
			<div id="location_content" class="col-md-11"></div>
		</div>
	
		<div id="circle" class="row">
			<div id="circle_title" class="col-md-1">圈子:</div>
			<div id="circle_content" class="col-md-11">
				<ul class="select-list">  
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
				<ul class="select-list">
					
				</ul>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">

</script>
</html>