<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border=1 style="border-collapse: collapse">
		<caption>
			<font size=4 face=华文新魏>商品详情</font>
		</caption>
		<tr>
			<td>名称</td>
			<td>
				${productInfo.productName}
			</td>
		</tr>
		<tr>
			<td>原价</td>
			<td>
				${productInfo.productPrice }
			</td>
		</tr>
		<tr>
			<td>折扣价</td>
			<td>
				${productInfo.productHotprice }
			</td>
		</tr>
			<tr>
			<td>类型</td>
			<td>
				${productInfo.typeName}
			</td>
		</tr>
		<tr>
			<td>库存</td>
			<td>
				${productInfo.productQuantity }
			</td>
		</tr>
		<tr>
			<td>图片</td>
			<td>
				<c:if test="${productInfo.productPicture != '' }">
					<img alt="" width="250" height="250"
					src="images/${productInfo.productPicture}"/>
				</c:if>
			</td>
		</tr>

	</table>
</body>
</html>