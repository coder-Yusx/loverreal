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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	$(function () {
		var html = "<option value=''>== 请选择 ==</option>"; $("#input_city").append(html); $("#input_area").append(html);
		$.each(pdata,function(idx,item){
			if (parseInt(item.level) == 0) {
   				html += "<option value='" + item.names + "' exid='" + item.code + "'>" + item.names + "</option>";
   			}
		});
		$("#input_province").append(html);

		$("#input_province").change(function(){
			if ($(this).val() == "") return;
			$("#input_city option").remove(); $("#input_area option").remove();
			var code = $(this).find("option:selected").attr("exid"); code = code.substring(0,2);
			var html = "<option value=''>== 请选择 ==</option>"; $("#input_area").append(html);
			$.each(pdata,function(idx,item){
				if (parseInt(item.level) == 1 && code == item.code.substring(0,2)) {
	   				html += "<option value='" + item.names + "' exid='" + item.code + "'>" + item.names + "</option>";
	   			}
			});
			$("#input_city").append(html);		
		});

		$("#input_city").change(function(){
			if ($(this).val() == "") return;
			$("#input_area option").remove();
			var code = $(this).find("option:selected").attr("exid"); code = code.substring(0,4);
			var html = "<option value=''>== 请选择 ==</option>";
			$.each(pdata,function(idx,item){
				if (parseInt(item.level) == 2 && code == item.code.substring(0,4)) {
	   				html += "<option value='" + item.names + "' exid='" + item.code + "'>" + item.names + "</option>";
	   			}
			});
			$("#input_area").append(html);		
		});
		//绑定
		$("#input_province").val("广东省");$("#input_province").change();
		$("#input_city").val("深圳市");$("#input_city").change();
		$("#input_area").val("罗湖区");

	});
</script>
</head>
<body>
<div class="container border">
	<div class="row">
		<div class="col-md-1">
			圈子:
		</div>
		<div class="col-md-1">
			1
		</div>
		<div class="col-md-1">
			1
		</div>
		<div class="col-md-1">
			1
		</div>
		<div class="col-md-1">
			1
		</div>
		<div class="col-md-1">
			1
		</div>
		<div class="col-md-1">
			1
		</div>
		<div class="col-md-1">
			1
		</div>
		<div class="col-md-1">
			1
		</div>
		<div class="col-md-1">
			1
		</div>
		<div class="col-md-1">
			1
		</div>
		
		<div class="col-md-1">
			更多>>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-1">
			分类
		</div>
		<div class="col-md-11">
		
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-1">所在区域</div>
		<div class="col-md-3">
			<select name="input_province" id="input_province" class="form-control">
			</select>
		</div>
		<div class="col-md-3">
			<select name="input_city" id="input_city" class="form-control">
			</select>
		</div>
		<div class="col-md-4">
			<select name="input_area" id="input_area" class="form-control">
			</select>
		</div>
	</div>
</div>
</body>
</html>