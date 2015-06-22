<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style type="text/css">

body#navi{
	height: 35px;
	width: 95%;
	background-color: #F2F2F2;
}
body a{
	text-decoration:none;
}
body a:HOVER {
	color:#FF00FF;
}
	
</style>
</head>


<body id="navi">
	<a href="${pageContext.request.contextPath}/front/index.jsp">首页</a>
	&nbsp;&nbsp;&nbsp;&nbsp;
	<s:if test="#session.user==null">
		<a href="${pageContext.request.contextPath}/front/load.jsp">亲，请登录</a>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="${pageContext.request.contextPath}/front/register.jsp">免费注册</a>
	</s:if>
	<s:else>
		&nbsp;&nbsp;&nbsp;&nbsp;
		欢迎您：${session.user.username }
		&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="${pageContext.request.contextPath}/front/unload.action">注销</a>
	</s:else>
	&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="${pageContext.request.contextPath }/manager/index">>>>>管理员入口</a>
	&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="${pageContext.request.contextPath }/front/shoppingCart.action" id="shoppingCart" onclick="return getShoppingCar()">我的购物车</a>
</body>
</html>