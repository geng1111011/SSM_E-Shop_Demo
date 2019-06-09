<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>updateAgoods.jsp</title>
<link href="css/admin/common.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath }/res/layui/layui.js" charset="utf-8"></script>
	<script>
	function gogo(){
		
	layer.msg('修改成功');
	}

	</script>
</head>    
<body>
	<form:form action="adminGoods/addGoods?updateAct=update" method="post" modelAttribute="productInfo" enctype="multipart/form-data">
		<table border=1 style="border-collapse: collapse">
			<caption>
				<font size=4 face=华文新魏>修改商品</font>
				<form:hidden path="productId"/>
			</caption>
			<tr>
				<td>名称<font color="red">*</font></td>
				<td>
					<form:input path="productName"/>
				</td>
			</tr>
			<tr>
				<td>原价<font color="red">*</font></td>
				<td>
					<form:input path="productPrice"/>
				</td>
			</tr>
	
			<tr>
				<td>库存</td>
				<td>
					<form:input path="productQuantity"/>
				</td>
			</tr>
			<tr>
				<td>图片</td>
				<td>
					<input type="file" name="logoImage"/>
					<br>
					<!-- 从数据库取出的文件名 -->
					<c:if test="${productInfo.productPicture != ''}">
						<img alt="" width="50" height="50"
						src="images/${productInfo.productPicture}"/>
					</c:if>	
				</td>
			</tr>
		<tr>
				<td>类型</td>
				<td>	
				<form:select path="typeId">

							<form:options items="${ProductType}" itemLabel="typeName" itemValue="typeId"/>

   					</form:select>
				</td>
			</tr>
			<tr>
				<td align="center">
					<input type="submit" value="提交" onClick="gogo()"/>
				</td>
				<td align="left">
					<input type="reset" value="重置"/>
				</td>
			</tr>
		</table>
	</form:form>
	${msg }
</body>
</html>
