<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/common_tag.jsp"%>
<%@ include file="/WEB-INF/common/common_css.jsp"%>
<%@ include file="/WEB-INF/common/common_js.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
	.border {
		border: 1px solid black;
	}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	
	//找学生
	function find_stu(){
		$.ajax({
			type:"GET",
			url:"${baseurl}/hello5",
			contentType : "application/html; charset=utf-8",
			success:function(data){
				$("#content").html(data);
			}
		});
	}
	
</script>
<body>

    <div class="container-fluid">
    	 <div class="row" style="border-bottom: 1px solid #ccc;">
    	 	<div class="col-md-11">
    	 		<div style="float:right;font-size: larger;">
	    	 		<a href="${baseurl }/hello3">登陆</a>&nbsp;|&nbsp;
	    	 		<a href="${baseurl }/hello4">注册</a>
    	 		</div>
    	 	</div>
    	 	<div class="col-md-1">
    	 		<div>&nbsp;</div>
    	 	</div>
    	 </div>
	    <div class="row">
	    	<div class="col-md-3">
		    	<div class="navbar-header" style="float:right">
		        	<img src="${baseurl }/static/img/logo.png" alt="First slide" style="width: 135px;">
		    	</div>
	    	</div>
		   	<div class="col-md-6" style="padding-top: 20px;">
			   	<div style="float:right">
				   	<ul class="nav navbar-nav" style="font-size: x-large;">
				       	<li><a href="#">首页</a></li>
				           <li class="dropdown">
				               <a href="#" class="dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown" data-hover="dropdown">
				                  	传授
				                   <b class="caret"></b>
				               </a>
				               <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
				                   <li role="presentation"><a href="javascript:find_stu();">找学生</a></li>
				                   <li class="divider"></li>
				                   <li role="presentation"><a href="#">发布课程</a></li>
				               </ul>
				           </li>
				           <li class="dropdown">
				               <a href="#" class="dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" data-hover="dropdown">
				                  	 学习
				                   <b class="caret"></b>
				               </a>
				               <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu2">
				                   <li role="presentation"><a href="#">找老师</a></li>
				                   <li class="divider"></li>
				                   <li role="presentation"><a href="#">发布难题</a></li>
				               </ul>
				           </li>
				           <li class="dropdown">
				               <a href="#" class="dropdown-toggle" id="dropdownMenu3" data-toggle="dropdown" data-hover="dropdown">
				                  	 我的账户 
				                   <b class="caret"></b>
				               </a>
				               <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu3">
				                   <li role="presentation"><a href="#">充值</a></li>
				                   <li class="divider"></li>
				                   <li role="presentation"><a href="#">提现</a></li>
				                   <li class="divider"></li>
				                   <li role="presentation"><a href="#">交易记录</a></li>
				               </ul>
				           </li>
				           <li class="dropdown">
				               <a href="#" class="dropdown-toggle" id="dropdownMenu4" data-toggle="dropdown" data-hover="dropdown">
				                  	 我的资料
				                   <b class="caret"></b>
				               </a>
				               <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu4">
				                   <li role="presentation"><a href="#">基本信息</a></li>
				                   <li class="divider"></li>
				                   <li role="presentation"><a href="#">传习记录</a></li>
				                   <li class="divider"></li>
				                   <li role="presentation"><a href="#">积分明细</a></li>
				               </ul>
				           </li>
				       </ul>
				   </div>
		       </div>
		    	<div class="col-md-3" style="padding-top: 20px;">
			    	<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search">
						</div>
						<button type="submit" class="btn btn-default">提交</button>
					</form>
				</div>
	    </div>
    </div>
	
	<div id="content">
	<!--轮播  -->
	<div id="myCarousel" class="carousel slide" style="width: 100%;">
	<!-- 轮播（Carousel）指标 -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>   
	<!-- 轮播（Carousel）项目 -->
	<div class="carousel-inner">
		<div class="item active">
			<img src="${baseurl }/static/img/default.jpg" alt="First slide" style="width: 100%;">
		</div>
		<div class="item">
			<img src="${baseurl }/static/img/default1.jpg" alt="Second slide" style="width: 100%;">
		</div>
		<div class="item">
			<img src="${baseurl }/static/img/default2.jpg" alt="Third slide" style="width: 100%;">
		</div>
	</div>
	<!-- 轮播（Carousel）导航 -->
	<a class="carousel-control left" href="#myCarousel" 
	   data-slide="prev">&lsaquo;</a>
	<a class="carousel-control right" href="#myCarousel" 
	   data-slide="next">&rsaquo;</a>
</div> 

<!--内容  -->
<div class="container">
	<div class="row clearfix">
		<div class="col-md-4 column">
			<h2>
				Heading
			</h2>
			<p>
				Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
			</p>
			<p>
				 <a class="btn" href="#">View details »</a>
			</p>
		</div>
		<div class="col-md-4 column">
			<h2>
				Heading
			</h2>
			<p>
				Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
			</p>
			<p>
				 <a class="btn" href="#">View details »</a>
			</p>
		</div>
		<div class="col-md-4 column">
			<h2>
				Heading
			</h2>
			<p>
				Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
			</p>
			<p>
				 <a class="btn" href="#">View details »</a>
			</p>
		</div>
	</div>
</div>
</div>

	<!--页脚  -->
   <%@ include file="common/footer.jsp"%>

</body>
</html>