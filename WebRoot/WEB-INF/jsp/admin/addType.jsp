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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/admin/common.css" type="text/css" rel="stylesheet">
	<style type="text/css">
		table{
			text-align: center;
			border-collapse: collapse;
		}
		.bgcolor{
		  	background-color: #F08080;
		}
	</style>
</head>
<body>
	<c:if test="${allTypes.size() == 0 }">
		您还没有类型。
	</c:if>
	<c:if test="${allTypes.size() != 0 }">
		<table border="1" bordercolor="PaleGreen" >
			<tr>
				<th width="200px">类型ID</th>
				<th width="600px">类型名称</th>
				<th width="600px">父类类型</th>
			</tr>
			<c:forEach items="${allTypes }" var="goodsType">
				<tr>
					<td>${goodsType.typeId }</td>
					<td>${goodsType.typeName }</td>
					<td>${goodsType.typeParent }</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	
	<form:form action="adminType/addType" method="post" modelAttribute="types" enctype="multipart/form-data">
		类型名称：
		<form:input path="typeName" />
		
		添加父类类型
			<form:select path="typeParent">
			<form:option value="0" label="无"/>
			<form:options items="${bigType}" itemLabel="typeName" itemValue="typeId"/>	
   			</form:select>
		<input type="submit" value="添加"/>
	</form:form>
</body>
</html>