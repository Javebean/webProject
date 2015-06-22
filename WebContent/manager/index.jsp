<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
	frameset {
	background-image: url("${pageContext.request.contextPath}/image/managerBG.jpg");
	width:1366px;
	height:621px;
	background-size:1366px 621px;
}
</style>

<title>XX手机网站后台管理系统</title>
</head>
<frameset rows="15%,*">
	<frame src="${pageContext.request.contextPath}/manager/head.jsp" noresize="noresize">
	<frameset cols="15%,*">
		<frame src="${pageContext.request.contextPath}/manager/left.jsp" noresize="noresize">
		<frame name="body" noresize="noresize">
	</frameset>
</frameset>
</html>