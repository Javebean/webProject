<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>删除商品页面</title>
</head>
<body>
		<table border="1">
		<tr>
			<td>商品名</td>
			<td>处理器</td>
			<td>网络</td>
			<td>尺寸</td>
			<td>内存</td>	
			<td>摄像头</td>
			<td>单/双卡</td>
			<td>价格</td>
			<td>编辑</td>
		</tr>
		<c:forEach items="${listall}" var="li"> 
			<tr>
				<td>${li.name}</td>
				<td>${li.processor}</td>
				<td>${li.net}</td>
				<td>${li.size}</td>
				<td>${li.rom}</td>	
				<td>${li.camera}</td>
				<td>${li.simcart}</td>
				<td>${li.price}</td>
				<td><a href="${pageContext.request.contextPath}/manager/deleteProduct.action?deid=${li.id}">删除</a></td>
			</tr>
		</c:forEach>
			</table>
</body>
</html>