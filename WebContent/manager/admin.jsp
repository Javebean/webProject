<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员登录</title>
<style type="text/css">
table{
	position: absolute;
	left:500px;
	top:201px;
	width:300px;
	height: 160px;
	text-align:center;
	
}
	
</style>
</head>
<body>
	<form action="${pageContext.request.contextPath}/manager/adminValidate.action" method="post">
		<table border="1" >
			<tr>
				<td colspan="2">管理员登录</td>
			</tr>
			<tr>
				<td>
					用户名
				</td>
				<td>
					<input type="text" name="admin.username"/>
				</td>
			</tr>
			<tr>
				<td>
					密码
				</td>
				<td>
					<input type="password" name="admin.password"/>
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