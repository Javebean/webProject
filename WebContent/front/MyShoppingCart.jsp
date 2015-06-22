<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的购物车</title>
<style type="text/css">
	body{
		background-image: url("${pageContext.request.contextPath}/image/shoppingCartBG.jpg");
		background-size:1366px 650px;
	}
	div.title{
		font-size: 50px;
		font-weight: bold;
		font-style: italic;
		text-shadow: 5px 5px 5px #FF0000;
	}
	body table{
		margin: 70px  auto 10px;
		background-color:white;
		opacity:0.8;
	}
	body table tr td div input#sumPrice{
		background: transparent;
		border: 0;
		width: 85px;
		
	}
	
 	body table tr td.bottomBar div{
		float: left;
	} 

#shoppingCart{
	float:right;
}
</style>
<script type="text/javascript">
	var x = document.getElementsByName("goods");
	function funcA(){
		var table = document.getElementById("myTable");
		var totalRows = table.rows.length -1;
		var sumPri = 0;
		
		if(document.getElementById("controlA").checked){
			var sumPri = 0;
			for(var i=0;i<x.length;i++){
				if(!x[i].checked)
					x[i].checked=true;
				
			}
			 document.getElementById("chooseNo").innerHTML=x.length;
			 for ( var i = 1; i < totalRows; ++i ) {
		        sumPri += Number( table.rows[i].cells[5].innerHTML ) || 0;
			 }
			
				document.getElementById("sumPrice").value=sumPri+".00";
			
		}else{
			for(var i=0;i<x.length;i++)
				x[i].checked=false;
			
			document.getElementById("chooseNo").innerHTML=0;
			document.getElementById("sumPrice").value="0.00";
		}
	}
	
	function funcB(){
		var table = document.getElementById("myTable");
		var totalRows = table.rows.length -1;
		var sumPri = 0;
		var y =0;
		for( j =0;j<x.length;j++){
			if(x[j].checked){
				y++;
				sumPri += Number( table.rows[j+1].cells[5].innerHTML ) || 0;
			}
		}	
		if(y==x.length)
			document.getElementById("controlA").checked=true;
		else
			document.getElementById("controlA").checked=false;
			document.getElementById("chooseNo").innerHTML=y;
			document.getElementById("sumPrice").value=sumPri+".00";
	}
	
	function checkNo(){
		var checkNum=0;
		for(var t =0;t<x.length;t++){
			if(x[t].checked)
				checkNum++;
		}	
		if(checkNum==0){
			alert("您没有选择任何商品！");
			return false;			
		}else
			return true;
		
		
	}
	
</script>
</head>
<body>
	<jsp:include page="NavigationBar.jsp"></jsp:include>
<div class="title">
	我的购物车：
</div>
<form action="${pageContext.request.contextPath}/front/operateCart.action" method="post" onsubmit="return checkNo()">
	<table border="0" id="myTable">
	<col width="20px">
	<col width="120px">
	<col width="300px">
	<col width="120px">
	<col width="120px">
		<tr>
			<td></td>
			<td>商品名</td>
			<td>商品参数</td>
			<td>单价</td>
			<td>数量</td>
			<td>价格</td>
		</tr>
		<c:forEach items="${listall}" var="li" > 
			<tr>
			<td>
				<input type="checkbox" name="goods" value="${li.name}" onclick="funcB()">
			</td>
			<td>
					${li.name}   
			</td>
			<td style="color:#9C9C9C;font-size: 13px">
				${li.processor}<br>
				${li.net}<br>
				${li.size}<br>
				${li.rom}<br>
				${li.camera}<br>
				${li.simcart}
			</td>
			
			<td>
				${li.price}
			</td>
			<td>x&nbsp;${li.number}</td>
			
			<td>
				${li.totalPrice}
			</td>
			
		</tr>
		
		</c:forEach>
		<tr>
			<td colspan="5" class="bottomBar" height="32px">
			<div style="width: 100px;height: 10px">
				<input type="checkbox" id="controlA"  onclick="funcA()">
				全选
			</div>
				
			<div style="width: 130px;height: 10px">
				<input type="submit" name="cartDelete" value="删除" >
			</div>
			
			<div style="width: 160px;height: 10px">
				已选商品
				<span style="font-size: 20px;font-weight: bold;color:#FF4400" id="chooseNo">0&nbsp;</span>件
			</div>
			
				
			<div style="width: 260px;height: 10px">合计（不含运费）:
				<span style="font-size: 20px;font-weight: bold;color:#FF4400;">￥</span>
				<input type="text" name = "sumPrice" readonly="readonly"
				style="font-size: 20px;font-weight: bold;color:#FF4400;" id="sumPrice" value="0.00">
			</div>
				
				
			<div style="width: 35px;height: 10px">
				<input type="submit" value="结&nbsp;&nbsp;&nbsp;算" name="cartClearing">
			</div>
			</td>
		</tr>
	</table>
</form>
</body>
</html>