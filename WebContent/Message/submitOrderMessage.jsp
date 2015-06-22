<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>提交订单</title>
<style type="text/css">
	body{
		margin: 0;
		padding: 0;
	}
	body div.all{
		width:1366px;
		height:521px;
		padding-top:100px;
		background-image: url("${pageContext.request.contextPath}/image/payBG.jpg");
		background-size:1366px 650px;	
	}

	div div.pay{
		width:500px;
		height:240px;
		margin: 0 auto;
		padding:77px 0 0 0;
		background-image: url("${pageContext.request.contextPath}/image/pay.gif");
		background-repeat: no-repeat;
	}
</style>


</head>

<body>
	
	<jsp:include  page="/front/NavigationBar.jsp"></jsp:include>
	<div class="all">
		<div class="pay">
			<div style="width: 61px;height: 19px;background:#FFFFFF;margin: 0 0 0 232px;">
				${order.sumPrice}
			</div>
		</div>
	</div>
</body>
</html>