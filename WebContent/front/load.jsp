<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
<script type="text/javascript">
  var msg="${requestScope.tipMessage}";
  if(msg!=""){
     alert(msg);
  }
var us = "${session.user.username}";
function getShoppingCar(){
	if(us==""){
		alert("您还没有登录，请登录后再来");
		return false;
	}
	return true;
}
</script> 
<style type="text/css">
body{
	margin: 0px;
	padding: 0px;
}

body div.bodyPic{
	width:1366px;
	height:621px;
	background-image: url("${pageContext.request.contextPath}/image/loginBG.jpg");
	background-size:1366px 621px;
}
table{
	position: absolute;
	left:450px;
	top:201px;
	width:400px;
	height: 200px;
	font-size: 20px;
}
form table{
	text-align: center;
}

table a.register{
	text-decoration:none;
}
table a.register:HOVER {
	color: red;
}
#shoppingCart{
	float:right;
}	
</style>
</head>
<body >
<jsp:include  page="NavigationBar.jsp" ></jsp:include>
<div class="bodyPic">
	<form action="${pageContext.request.contextPath}/front/load.action" method="post">
		<table border="0">
		<colgroup span="2" width="50%">
			<tr>
				<td colspan="2"></td>
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
					密&nbsp;&nbsp;&nbsp;码
				</td>
				<td>
					<input type="password" name="user.password"/>
				</td>
			</tr>
			<tr>
				<td align="right">
					<input type="reset" value="取消"/>
				</td>
				
				<td >
					<input type="submit" value="登录"/>
				</td>
			</tr>
			<tr>
				
				<td colspan="2" align="right">
					还没有账号？<a class="register" href="${pageContext.request.contextPath}/front/register.jsp">立即注册</a>
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>