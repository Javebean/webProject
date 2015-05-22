<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/manager/addCProduct.action" style="text-align: center" method="post">
		<table border="1" width="50%">
			<tr>
				<td>商品名</td>
				<td><input type="text" name="cp.name" /></td>
			</tr>
			<tr>
				<td>处理器</td>
				<td><input type="text" name="cp.processor" /></td>
			</tr>
			<tr>
				<td>网络</td>
				<td><input type="text" name="cp.net" /></td>
			</tr>
			<tr>
				<td>尺寸</td>
				<td><input type="text" name="cp.size" /></td>
			</tr>
			<tr>
				<td>内存</td>
				<td><input type="text" name="cp.rom" /></td>
			</tr>
			<tr>
				<td>摄像头</td>
				<td><input type="text" name="cp.camera" /></td>
			</tr>
			<tr>
				<td>单/双卡</td>
				<td>
					<input type="radio" name="cp.simcart" id="single" value="single"/><label for="single">单</label> 
					<input type="radio" name="cp.simcart" id="both" value="both"/><label for="both">双</label>
				</td>
			</tr>
			<tr>
				<td>价格</td>
				<td><input type="text" name="cp.price" /></td>
			</tr>
			<tr>
				<td>操作</td>
				<td>
					<input type="reset" value="取消" /> 
					<input type="submit" value="确认" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>