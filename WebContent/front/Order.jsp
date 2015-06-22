<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	function isInputNull(){
		for(var i=0;i<document.form1.elements.length-8;i++){
			if(document.form1.elements[i].value==""){
				alert("当前表单不能有空项");
				document.form1.elements[i].focus(); 
				return false;
			}
		}
		
		return true; 
	}

</script>
<style type="text/css">
	body div.location{
		width:1366px;
		height:621px;
		background-image: url("${pageContext.request.contextPath}/image/OrderBG.jpg");
		background-size:1366px 621px;
		
	}

	body form span{
		width:150px;
		display:inline-block; 
		text-align: right;
		text-indent: 1cm;
	}

	body form span i{
		color: red;
	}
	
	body table#mTable tr td#bottom div{
		float: left;
	} 
	
	#shoppingCart{
	float:right;
	}

body div.location form table#mTable tr td input{
	
	background: transparent;
	border: 0px; 
	
}
</style>

<title>确认订单</title>
</head>
<body>
<jsp:include page="NavigationBar.jsp"></jsp:include>
<div class="location">
<div style="font-size: 20px;font-weight: bold;">请填写收货地址</div>
<form action="${pageContext.request.contextPath}/front/submitOrder" method="post" name="form1" onsubmit="return isInputNull()">
<span>所在地区<i>*</i></span> 
		<select style="height: 32px" name="order.location">
		  <option>中国大陆</option>
		  <option>台湾</option>
		  <option>港澳</option>
		  <option>马来西亚</option>
		</select>
 	    省份<input type="text" name="order.province" style="width: 70px;height:26px"> 
 	
 	城市<input type="text" name="order.city" style="width: 70px;height:26px"> 
 	
 	 县区<input type="text" name="order.counties" style="width: 70px;height:26px">  
 	 
 	 街道<input type="text" name="order.street" style="width: 70px;height:26px"> 
 	 <br><br>
	<span>邮政编码</span>&nbsp;<input type="text" name="order.zipcode" style="width: 220px;height: 26px" 
		placeholder="如您不清楚邮递区号，请填写000000"> 
	<br>
	<br>
	<span>收货人姓名 <i>*</i></span>&nbsp;<input type="text" name="order.addressee" style="width: 220px;height: 26px"> 
	<br>
	<br>
	<span>手机号码<i>*</i> </span>
				<select style="height: 32px" >
						  <option>中国大陆+86</option>
						  <option>台湾+886</option>
						  <option>香港+852</option>
						  <option>澳门+853</option>
				</select>
		<input type="text" name="order.phoneNum" style="width: 208px;height: 26px" > 
	<br>
	
	<div style="font-size: 20px;font-weight: bold;">确认订单信息</div>
	
	<table border="1" id="mTable">
	
	<col width="120px">
	<col width="300px">
	<col width="120px">
	<col width="120px">
	<col width="120px">
		<tr>
			<td>商品名</td>
			<td>商品参数</td>
			<td>单价</td>
			<td>数量</td>
			<td>价格</td>
		</tr>
		<c:forEach items="${listall}" var="li" > 
			<tr >
			<td>
				<input name="ogs.name" type="text" value="${li.name}" readonly="readonly">   
			</td>
			<td style="font-size: 13px">
				${li.processor}<br>
				${li.net}<br>
				${li.size}<br>
				${li.rom}<br>
				${li.camera}<br>
				${li.simcart}
			</td>
			
			<td>
				￥${li.price}
			</td>
			<td>x
			<input name="ogsNum" type="text" value="${li.number}" readonly="readonly" style="width: 30px">   
			</td>
			
			<td>
				￥
				<input name="ogsPrice" type="text" value="${li.totalPrice}" readonly="readonly" style="width:80px">   
			</td>
			
		</tr>
		
		</c:forEach>
		<tr>
		<td id="bottom" colspan="5" height="35px">
				<div style="width: 260px;height: 10px;margin: 0 450px 25px 10px;">合计:
					<span style="font-size: 20px;font-weight: bold;color:#FF4400;">￥
						<input value="${sumPrice}" name="order.sumPrice" style="width: 80px">
					</span>
				</div>
					
					
				<div style="width: 35px;height: 10px;margin: 8px 0 0 0;">
					<input type="submit" value="提价订单 " style="background: #FFCC00">
				</div>
		</td>
		</tr>
	</table>
	
</form>
</div>
</body>
</html>