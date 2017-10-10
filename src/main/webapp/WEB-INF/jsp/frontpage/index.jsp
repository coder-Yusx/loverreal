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
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid">
	<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid"> 
	<div class="navbar-header">
		<a class="navbar-brand" href="#">菜鸟教程</a>
	</div>
	<form class="navbar-form navbar-left" role="search">
		<div class="form-group">
			<input type="text" class="form-control" placeholder="Search">
		</div>
		<button type="submit" class="btn btn-default">提交</button>
	</form>
	</div>
</nav>
	<div class="row-fluid">
		<div class="span12">
			<!-- <ul class="nav nav-tabs">
				<li>
					 <a href="#">首页</a>
				</li>
				
				<li>
					 <a href="#">首页</a>
				</li>
				<li>
					 <a href="#">资料</a>
				</li>
				<li class="disabled">
					 <a href="#">信息</a>
				</li>
				<li class="dropdown pull-right">
					 <a href="#" data-toggle="dropdown" class="dropdown-toggle">下拉<strong class="caret"></strong></a>
					<ul class="dropdown-menu">
						<li>
							 <a href="#">操作</a>
						</li>
						<li>
							 <a href="#">设置栏目</a>
						</li>
						<li>
							 <a href="#">更多设置</a>
						</li>
						<li class="divider">
						</li>
						<li>
							 <a href="#">分割线</a>
						</li>
					</ul>
				</li>
			</ul> -->
			<div class="carousel slide" id="carousel-325686">
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-325686">
					</li>
					<li data-slide-to="1" data-target="#carousel-325686">
					</li>
					<li data-slide-to="2" data-target="#carousel-325686">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img alt="" src="${baseurl }/static/img/default.jpg" />
						<div class="carousel-caption">
							<h4>
								棒球
							</h4>
							<p>
								棒球运动是一种以棒打球为主要特点，集体性、对抗性很强的球类运动项目，在美国、日本尤为盛行。
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="${baseurl }/static/img/default1.jpg" />
						<div class="carousel-caption">
							<h4>
								冲浪
							</h4>
							<p>
								冲浪是以海浪为动力，利用自身的高超技巧和平衡能力，搏击海浪的一项运动。运动员站立在冲浪板上，或利用腹板、跪板、充气的橡皮垫、划艇、皮艇等驾驭海浪的一项水上运动。
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="${baseurl }/static/img/default2.jpg" />
						<div class="carousel-caption">
							<h4>
								自行车
							</h4>
							<p>
								以自行车为工具比赛骑行速度的体育运动。1896年第一届奥林匹克运动会上被列为正式比赛项目。环法赛为最著名的世界自行车锦标赛。
							</p>
						</div>
					</div>
				</div> <a data-slide="prev" href="#carousel-325686" class="left carousel-control">‹</a> <a data-slide="next" href="#carousel-325686" class="right carousel-control">›</a>
			</div>
			<blockquote>
				<p>
					github是一个全球化的开源社区.
				</p> <small>关键词 <cite>开源</cite></small>
			</blockquote>
		</div>
	</div>
</div>
</body>
</html>