<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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



	<style type="text/css">
		table{
			text-align: center;
			border-collapse: collapse;
		}
		.bgcolor{
		  	background-color: #F08080;
		}
	</style>
	<script type="text/javascript">
  		function checkDel(){
  			if(window.confirm("是否删除该商品类型？")){
  				
  			}
  		}
  </script>
</head>
<body>
	<c:if test="${allTypes.size() == 0 }">
		您还没有类型。
	</c:if>
	<c:if test="${allTypes.size() != 0 }">
		<table border="1" bordercolor="PaleGreen" >
			<tr>
				<th width="200px">类型ID</th>
				<th width="300px">类型名称</th>
				<th width="600px">父类类型</th>
				<th width="300px">删除操作</th>
			</tr>
			<c:forEach items="${allTypes }" var="goodsType">
				<tr>
					<td>${goodsType.typeId }</td>
					<td>${goodsType.typeName }</td>
					<td>${goodsType.typeParent }</td>
					<td><a href="${pageContext.request.contextPath }/adminType/deleteType?typeId=${goodsType.typeId }"  target="center">删除</a></td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="3">${msg }</td>
			</tr>
		</table>
	</c:if>
</body>
</html>