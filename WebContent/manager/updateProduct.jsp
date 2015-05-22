<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改商品</title>
<style type="text/css">
	input{
	 width: 115px;
	}

</style>
</head>
<body>
	<table border="1">
		<tr style="text-align:center">
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
		<form action="${pageContext.request.contextPath}/manager/updatePro.action" method="post">
			<input type="hidden" name="cp.id" value="${li.id}"/>
		<tr>
			<td>
				<input type="text" name="cp.name" value="${li.name}"/>
			</td>
			<td>
				<input type="text" name="cp.processor" value="${li.processor}"/>
			</td>
			<td>
				<input type="text" name="cp.net" value="${li.net}"/>
			</td>
			<td>
				<input type="text" name="cp.size" value="${li.size}"/>
			</td>
			<td>
				<input type="text" name="cp.rom" value="${li.rom}"/>
			</td>	
			<td>
				<input type="text" name="cp.camera" value="${li.camera}"/>
			</td>
			<td>
				<label for="single">单</label><input type="radio" name="cp.simcart" id="single" value="single" ${li.simcart=='single'?'checked="checked"':'' } style="width:15px"/>
				<label for="both">双</label><input type="radio" name="cp.simcart" id="both" value="both" ${li.simcart=='both'?'checked="checked"':'' } style="width:15px"/>
			</td>
			<td>
				<input type="text" name="cp.price" value="${li.price}"/>
			</td>
			<td>
				<input type="submit" value="修改"/>
			</td>
		</tr>
	</form>
		</c:forEach>
	</table>

</body>
</html>