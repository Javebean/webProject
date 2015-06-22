<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>XX手机首页</title>
<script type="text/javascript">
		var us = "${session.user.username}";
	function user(){
		if(us==""){
			alert("您还没有登录，请登录后再来");
			return false;
		}else{
			alert("成功加入购物车！");
			return true;
		}
		
	}
	function getShoppingCar(){
		if(us==""){
			alert("您还没有登录，请登录后再来");
			return false;
		}
		return true;
	}

</script>
<script type="text/javascript">
  var msg="${requestScope.tipMessage}";
  if(msg!=""){
     alert(msg);
  }
</script> 
<style type="text/css">
div img.head
{
	width: 1306px;
	height: 342px;
}
div#middle
{
	font-size: 20px;
}
div span.middle
{
	font-size: 40px;
}
#body div.left1,div.left2,div.left3
{
	width: 369px;
	height: 441px;
	text-align:center;
}
#body div.right1,div.right2,div.right3
{
	width: 800px;
	height: 441px;
}
div.right1
{
	background-image: url("${pageContext.request.contextPath}/image/z7.jpg");
}
div.right2
{
	background-image: url("${pageContext.request.contextPath}/image/z7Max.jpg");
}
div.right3
{
	background-image: url("${pageContext.request.contextPath}/image/z7mini.jpg");
}
div.right1 {
  position: absolute;
  left: 385px;
  top: 396px;
}
/* 设置输入框的透明,宽度等属性 */
div.left1 input,div.left2 input,div.left3 input{
	background: transparent;
	border: 0;
	text-align: center;
	width: 320px;
	font-size: 1.3em;
	font-weight:bold;
	color: black;
	
}
div#body input.buy{
	color: red; 
}


div.left2
{
  position: absolute;
  left: 816px;
  top: 855px;
  
}

div.right3{
  position: absolute;
  left: 385px;
  top: 1314px;
}
#shoppingCart{
	float:right;
}
</style>
</head>
<body>
	<div id="all">
		<jsp:include page="NavigationBar.jsp"></jsp:include>
		
		<div id="head">
			<img class="head" alt="head大图" src="${pageContext.request.contextPath}/image/head.jpg">
		</div>
		<div id="middle">
			<span class="middle">最新产品</span> New Arrival
		</div>
		
		<div id="body">
				<div class="left1" >
				<form action="${pageContext.request.contextPath }/front/addCart" method="post" onsubmit="return user()">
					<table>
						<tr>
							<td>
								<input type="text" name="product.name" value="nubia Z7" readonly="readonly">  
							</td>
						</tr>
						<tr>
							<td>
								<input  type="text" name="product.processor" value="顶级Qualcomm骁龙™801处理器" readonly="readonly">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" name="product.net" value="4G+3G全网通" readonly="readonly">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" name="product.size" value="5.5吋2K超清屏幕" readonly="readonly">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" name="product.rom" value="3G RAM+32G ROM" readonly="readonly">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" name="product.camera" value="1300万光学防抖主摄像头" readonly="readonly">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" name="product.simcart" value="双卡双待" readonly="readonly">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text"  value="500万前置摄像头" readonly="readonly">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text"  value="HiFi高保真音质" readonly="readonly">
							</td>
						</tr>
						<tr>
							<td>
								￥<input type="text" name="product.price" value="3456.00" readonly="readonly">
							</td>
						</tr>
						<tr>
							<td>
								<input type="submit"  value="加入购物车" class="buy">
							</td>
						</tr>
					</table>
				</form>
				</div> 
				<div class="right1"></div>
				<br/>
				<div class="right2"></div>
				<div class="left2">
					<form action="${pageContext.request.contextPath }/front/addCart" method="post" onsubmit="return user()">
					<table>
						<tr>
							<td>
								<input type="text" name="product.name" value="nubia Z7 Max" readonly="readonly">  
							</td>
						</tr>
						<tr>
							<td>
								<input  type="text" name="product.processor" value="顶级Qualcomm骁龙?801处理器" readonly="readonly">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" name="product.net" value="4G+3G全网通" readonly="readonly">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" name="product.size" value="5.5吋2K超清屏幕" readonly="readonly">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" name="product.rom" value="2G RAM+32G ROM" readonly="readonly">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" name="product.camera" value="1300万光学防抖主摄像头" readonly="readonly">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" name="product.simcart" value="双卡双待" readonly="readonly">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text"  value="500万前置摄像头" readonly="readonly">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text"  value="HiFi高保真音质" readonly="readonly">
							</td>
						</tr>
						<tr>
							<td>
								￥<input type="text" name="product.price" value="1999.00" readonly="readonly">
							</td>
						</tr>
						<tr>
							<td>
								<input class="buy" type="submit"  value="加入购物车" >
							</td>
						</tr>
					</table>
				</form>
				</div> 
				<br/>
				<div class="left3">
					<form action="${pageContext.request.contextPath }/front/addCart" method="post" onsubmit="return user()">
					<table>
						<tr>
							<td>
								<input type="text" name="product.name" value="nubia Z7 Mini" readonly="readonly">  
							</td>
						</tr>
						<tr>
							<td>
								<input  type="text" name="product.processor" value="顶级Qualcomm骁龙?801处理器" readonly="readonly">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" name="product.net" value="4G+3G全网通" readonly="readonly">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" name="product.size" value="5.0英寸FHD1080P高清屏" readonly="readonly">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" name="product.rom" value="2G RAM+16G ROM" readonly="readonly">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" name="product.camera" value="1300万光学防抖主摄像头" readonly="readonly">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" name="product.simcart" value="双卡双待" readonly="readonly">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text"  value="500万前置摄像头" readonly="readonly">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text"  value="HiFi高保真音质" readonly="readonly">
							</td>
						</tr>
						<tr>
							<td>
								￥<input type="text" name="product.price" value="1499.00" readonly="readonly">
							</td>
						</tr>
						<tr>
							<td>
								<input type="submit"  value="加入购物车" class="buy">
							</td>
						</tr>
					</table>
				</form>
				</div> 
				<div class="right3"></div>
		</div>
		
	</div>
</body>
</html>