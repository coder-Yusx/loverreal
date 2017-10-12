<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/common_tag.jsp"%>
<%@ include file="/WEB-INF/common/common_css.jsp"%>
<%@ include file="/WEB-INF/common/common_js.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">

	/*bootstrap无间距栅格*/
	/* .row.no-gutter {
	    margin-left: 0;
	    margin-right: 0;
	}
	
	.row.no-gutter > [class*='col-'] {
	    padding-right: 0;
	    padding-left: 0;
	} */
	
	/* .row{
		margin-top: 1%;
	}
	
	.a{
	padding: 2px; 
}
*/

.border {
	border: 1px solid black;
}

.bottom_footer {  
       position：relative; /*or前面的是absolute就可以用*/  
       bottom: 0px;  
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

    <div class="container-fluid">
    	 <div class="row" style="border-bottom: 1px solid #ccc;">
    	 	<div class="col-md-12">
    	 		<div style="float:right;font-size: larger;">登陆/注册</div>
    	 	</div>
    	 </div>
	    <div class="row">
	    	<div class="col-md-4">
		    	<div class="navbar-header" style="float:right">
		        	<img src="${baseurl }/static/img/logo.jpg" alt="First slide" style="width: 142px;">
		    	</div>
	    	</div>
		   	<div class="col-md-4" style="padding-top: 20px;">
			   	<div style="float:right">
				   	<ul class="nav navbar-nav" style="font-size: x-large;">
				       	<li><a href="#">首页</a></li>
				           <li class="active"><a href="#">iOS</a></li>
				           <li><a href="#">SVN</a></li>
				           <li class="dropdown">
				               <a href="#" class="dropdown-toggle" data-toggle="dropdown">
				                   Java
				                   <b class="caret"></b>
				               </a>
				               <ul class="dropdown-menu">
				                   <li><a href="#">jmeter</a></li>
				                   <li><a href="#">EJB</a></li>
				                   <li><a href="#">Jasper Report</a></li>
				                   <li class="divider"></li>
				                   <li><a href="#">分离的链接</a></li>
				                   <li class="divider"></li>
				                   <li><a href="#">另一个分离的链接</a></li>
				               </ul>
				           </li>
				       </ul>
				   </div>
		       </div>
		    	<div class="col-md-4" style="padding-top: 20px;">
			    	<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search">
						</div>
						<button type="submit" class="btn btn-default">提交</button>
					</form>
				</div>
	    </div>
    </div>
	
	
	
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

</body>
</body>
</html>