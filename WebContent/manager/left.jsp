<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<dl>
		<dt>商品管理:</dt>
		<br/>
		<dd><a href="${pageContext.request.contextPath}/manager/showallCP.action" target="body">查看所有商品</a></dd>
		<br/>
		<dd><a href="${pageContext.request.contextPath}/manager/addProduct.jsp" target="body">增加商品</a></dd>
		<br/>
		<dd><a href="${pageContext.request.contextPath}/manager/updateUI.action" target="body">修改商品</a></dd>
		<br/>
		<dd><a href="${pageContext.request.contextPath}/manager/deleteUI.action" target="body">删除商品</a></dd>
		<br/>
	</dl>
</body>
</html>