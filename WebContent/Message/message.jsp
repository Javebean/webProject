<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<meta  http-equiv="refresh"  content="3;url=${pageContext.request.contextPath}/front/index.action">
</head>
<body>
	${message}<br>
	网页3s后返回首页，如果不能跳转，请点击下面链接<br>
	<a href="${pageContext.request.contextPath}/front/index.action">返回首页哦~~</a><br>
	
</body>
</html>