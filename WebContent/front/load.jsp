<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
<style type="text/css">
table{
	position: absolute;
	left:500px;
	top:201px;
	width:300px;
	height: 160px;
	
}
	
</style>
</head>
<body style="text-align:center">
	<form action="${pageContext.request.contextPath}/front/load.action" method="post">
		<table border="1" >
			<tr>
				<td colspan="2">用户登录</td>
			</tr>
			<tr>
				<td>
					用户名
				</td>
				<td>
					<input type="text" name="user.username"/>
				</td>
			</tr>
			<tr>
				<td>
					密码
				</td>
				<td>
					<input type="password" name="user.password"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="reset" value="取消"/>
				
					<input type="submit" value="登录"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>