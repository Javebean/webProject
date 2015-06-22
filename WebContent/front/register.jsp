<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户注册</title>
<script type="text/javascript">
	function test() {
		var u1 = document.getElementsByName("user.username")[0].value;
		var p1 = document.getElementsByName("user.password")[0].value;
		var p2 = document.getElementsByName("password2")[0].value;
		var em = document.getElementsByName("user.email")[0].value;
		if (u1 == null || u1 == "" || p1 == null || p1 == "" || em == null
				|| em == "") {
			alert("请输入完整的注册信息");
			return false;
		}

		if (p1 != p2) {
			alert("两次密码不一致");
			return false;
		}

		var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
		if (!myreg.test(em)) {
			alert("邮箱格式不正确");
			return false;
		}

		return true;
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

body div.regPic{
	width:1366px;
	height:621px;
	background-image: url("${pageContext.request.contextPath}/image/registerBG.jpg");
	background-size:1366px 621px;
}


	table{
		position: absolute;
		left:500px;
		top:201px;
		width:300px;
		height: 160px;
		text-align:center;
		font-size: 20px;
	}
	
#shoppingCart{
	float:right;
}
</style>
</head>
<body>
	<jsp:include page="NavigationBar.jsp"></jsp:include>
	<div class="regPic">
	<form action="${pageContext.request.contextPath}/front/register.action" method="post" onsubmit="return test()">
		<table border="0">
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td>用户名</td>
				<td>
					<input type="text" name="user.username"/>
				</td>
			</tr>
			<tr>
				<td>密码</td>
				<td>
					<input type="password" name="user.password"/>
				</td>
			</tr>
			<tr>
				<td>确认密码</td>
				<td>
					<input type="password" name="password2"/>
				</td>
			</tr>
				<tr>
				<td>邮箱</td>
				<td>
					<input type="text" name="user.email"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="reset" value="取消"/>
					<input type="submit" value="注册"/>
				</td>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>