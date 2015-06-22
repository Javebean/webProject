<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
	dl dd a{
		text-decoration: none;
	}

a:visited {color: yellow}
a:hover {color: #FF00FF;

}
a:active {color: #0000FF}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>XX手机网站后台管理系统</title>
</head>
<body >
	<dl>
		<dt>商品管理:</dt>
		<br>

		<dd><a href="${pageContext.request.contextPath}/manager/showallCP.action" target="body">查看所有商品</a></dd>
		<br/>
		<dd><a href="${pageContext.request.contextPath}/manager/addProduct.jsp" target="body">增加商品</a></dd>
		<br/>
		<dd><a href="${pageContext.request.contextPath}/manager/updateUI.action" target="body">修改商品</a></dd>
		<br/>
		<dd><a href="${pageContext.request.contextPath}/manager/deleteUI.action" target="body">删除商品</a></dd>
		<br/>
	</dl>
	
	<dl>
		<dt>订单管理:</dt>
		<br>
		<dd><a href="${pageContext.request.contextPath}/manageOrder/showAllOrders.action" target="body">查看所有订单<span id="AllOrders"></span></a></dd>
		<br/>
		<dd><a href="${pageContext.request.contextPath}/manageOrder/AuditedOrder.action" target="body">已审核订单</a></dd>
		<br/>
		<dd><a href="${pageContext.request.contextPath}/manageOrder/NotAuditedOrder.action" target="body">未审核订单</a></dd>
		<br/>
	</dl>
</body>
</html>