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

/* ul{
	float: left;
	padding: 0px;
}
li{
	font-size: small;
    list-style-type: none;
    float: left; 
    margin-left: 3px;
    margin-right: 3px;
    padding-left: 5px;
    padding-right: 5px;
} */
.properties_ul{
	padding: 0px;
}
.properties_ul>li{
	font-size: small;
	list-style-type: none;
}

.img_table{
	border-collapse:separate;
	border-spacing:5px 5px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
$(function($){ 
    $('.img').jqthumb({ 
        width: 100, 
        height: 100, 
        after: function(imgObj){ 
            imgObj.css('opacity', 0).animate({opacity: 1}, 2000); 
        } 
    }); 
    
    
    if(typeof(EventSource)!=="undefined"){
            var eventSource=new EventSource("${baseurl }/hello7");
            eventSource.onopen = function(){
               console.log("连接打开。。。。。。");
            }
			eventSource.onerror= function(e) {
			console.log('error');
			};
            eventSource.onmessage=function(event) {
            	console.log(event.data);
            document.getElementById("result").innerHTML+=event.data + "<br />";
         };
	    }else{
	        	document.getElementById("result").innerHTML="Sorry, your browser does not support server-sent events...";
	    }
}); 
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-9">
				<div class="row border">
					<div class="col-md-12">
						<h4>Android，IOS和微信端，等移动端页面设计</h4>
						<div>
							<a href="#"><img class="img-circle" src="${baseurl }/static/img/headpic.jpg" width="40px;"><span> 易大师</span></a>
							<span class="label label-success"> 资深前端工程师</span> <span class="label label-success"> 十年前端经验</span>
						</div>
						
						<table class="img_table">
							<tr>
								<td><img class="img" src="${baseurl }/static/img/headpic.jpg"></td>
								<td><img class="img" src="${baseurl }/static/img/headpic.jpg"></td>
								<td><img class="img" src="${baseurl }/static/img/headpic.jpg"></td>
							</tr>
							<tr>
								<td><img class="img" src="${baseurl }/static/img/headpic.jpg"></td>
								<td><img class="img" src="${baseurl }/static/img/headpic.jpg"></td>
								<td><img class="img" src="${baseurl }/static/img/headpic.jpg"></td>
							</tr>
						</table>
						
						<ul class="properties_ul" style="float: left;">
							<li>开课时间：</li>
							<li>课程时长：</li>
							<li>持续天数：</li>
							<li>参加人数：</li>
						</ul>
						<ul class="properties_ul">
							<li>授课地点：</li>
							<li>授课方式：</li>
							<li>课程分类：</li>
							<li>课程价格：</li>
						</ul>
						
						<div class="media-body">
							这是一些示例文本。这是一些示例文本。
							这是一些示例文本。这是一些示例文本。
							这是一些示例文本。这是一些示例文本。
							这是一些示例文本。这是一些示例文本。
							这是一些示例文本。这是一些示例文本。
						</div>
						
						<div id="result"></div>
					</div>
				</div>
			</div> 
			<div class="col-md-3">
				<table class="table table-bordered">
				  <thead>
				    <tr>
				      <th>名称</th>
				      <th>城市</th>
				      <th>邮编</th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <td>Tanmay</td>
				      <td>Bangalore</td>
				      <td>560001</td>
				    </tr>
				    <tr>
				      <td>Sachin</td>
				      <td>Mumbai</td>
				      <td>400003</td>
				    </tr>
				    <tr>
				      <td>Uma</td>
				      <td>Pune</td>
				      <td>411027</td>
				    </tr>
				    <tr>
				      <td>Tanmay</td>
				      <td>Bangalore</td>
				      <td>560001</td>
				    </tr>
				    <tr>
				      <td>Sachin</td>
				      <td>Mumbai</td>
				      <td>400003</td>
				    </tr>
				    <tr>
				      <td>Uma</td>
				      <td>Pune</td>
				      <td>411027</td>
				    </tr>
				  </tbody>
				</table>
			</div>
		</div>
		</div>
</body>

<script type="text/javascript">

</script>
</html>