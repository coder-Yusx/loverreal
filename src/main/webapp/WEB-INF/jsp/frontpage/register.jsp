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
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<div class="row" style="padding-top: 10%;">
		<div class="col-md-4"></div>
		<div class="col-md-4 border">
			<form class="form-horizontal" role="form">
				<div class="form-group">
					<label for="firstname" class="col-md-4 control-label"></label>
					<div class="col-md-8" style="padding-top: 10px;">
						<span style="font-size: x-large;">用户注册</span>
					</div>
				</div>
				<div class="form-group">
					<label for="firstname" class="col-md-3 control-label">用户名</label>
					<div class="col-md-9">
						<input type="text" class="form-control" id="firstname" 
							   placeholder="请输入名字">
					</div>
				</div>
				<div class="form-group">
					<label for="lastname" class="col-md-3 control-label">密码</label>
					<div class="col-md-9">
						<input type="text" class="form-control" id="lastname" 
							   placeholder="请输入姓">
					</div>
				</div>
				<div class="form-group">
					<label for="lastname" class="col-md-3 control-label">确认密码</label>
					<div class="col-md-9">
						<input type="text" class="form-control" id="lastname" 
							   placeholder="请输入姓">
					</div>
				</div>
				<div class="form-group">
					<label for="lastname" class="col-md-3 control-label">手机号码</label>
					<div class="col-md-9">
						<input type="text" class="form-control" id="lastname" 
							   placeholder="请输入姓">
					</div>
				</div>
				<div class="form-group">
					<label for="lastname" class="col-md-3 control-label">验证码</label>
					<div class="col-md-9">
						<input type="text" class="form-control" id="lastname" 
							   placeholder="请输入姓">
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-offset-2 col-md-8">
						<button type="submit" class="btn btn-info btn-md btn-block">登录</button>
					</div>
					<div class="col-md-2">
					</div>
				</div>
			</form>
		</div>
		<div class="col-md-4"></div>
	</div>
</div>
</body>
</html>