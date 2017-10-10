<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/common_tag.jsp"%>
<%@ include file="/WEB-INF/common/common_css.jsp"%>
<%@ include file="/WEB-INF/common/common_js.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>用户名</td><td>真实姓名</td><td>性别</td><td>出生日期</td>
		</tr>
		<c:forEach var="user" items="${users }">
			<tr>
				<td>${user.username }</td><td>${user.realname }</td><td>${user.sex }</td><td>${user.birthday }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>