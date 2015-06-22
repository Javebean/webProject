<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
	table{
		width: 1140px;
	}
	
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看所有订单</title>
</head>
<body>
总共：${fn:length(allOrders)}
<table border="0">
		<c:forEach items="${allOrders}" var="li"> 
			<tr>
				<td>订单编号</td>
				<td>所在地区</td>
				<td>省份</td>
				<td>城市</td>
				<td>县区</td>
				<td>街道</td>
				<td>邮政编码</td>
				<td>收件人</td>
				<td>联系电话</td>
			</tr>
			
			<tr>
				<td>${li.id}</td>
				<td>${li.location}</td>
				<td>${li.province}</td>
				<td>${li.city}</td>
				<td>${li.counties}</td>
				<td>${li.street}</td>	
				<td>${li.zipcode}</td>
				<td>${li.addressee}</td>
				<td>${li.phoneNum}</td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td>已购的商品名</td>
				<td>数量</td>
				<td>价格</td>
			</tr>
			<c:forEach items="${li.goods}" var="o">
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>${o.name}</td>
					<td>${o.num}</td>
					<td>￥${o.price}0</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="9" align="right">总价:￥${li.sumPrice}0</td>
			</tr>
			<tr>
				<td colspan="9" align="right">
					审核状态：
					<c:choose>
						<c:when test="${li.sta.id==1}">
							<a href="${pageContext.request.contextPath}/manageOrder/manager/changeStatus?Order_id=${li.id}">${li.sta.sta}</a>
						</c:when>
						<c:otherwise>
							${li.sta.sta}
						</c:otherwise>
					</c:choose>
				</td>
			</tr>
			<tr>
				<td colspan="9" height="40px">
					<hr>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>