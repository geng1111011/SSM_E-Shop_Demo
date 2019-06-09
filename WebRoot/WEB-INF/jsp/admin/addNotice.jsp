<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>addNotice.jsp</title>
<link href="${pageContext.request.contextPath }/css/admin/common.css" type="text/css" rel="stylesheet">
</head>    
<body>
	<form:form action="adminNotice/addNotice" method="post" modelAttribute="notice">
		<table width="450" height="313" border=1 style="border-collapse: collapse ">
			<caption>
				<font size=4 face=华文新魏>添加公告</font>
			</caption>
			<tr style="width:400px">
				<td width="42">标题<font color="red">*</font></td>
				<td width="461" style="width:400px">
					<form:input path="ntitle" style="width:400px"/>
				</td>
			</tr>
			<tr style="width:400px">
				<td>内容<font color="red">*</font></td>
				<td style="width:400px">
					<form:textarea path="ncontent"  rows="30" cols="60"/>
				</td>
			</tr>
			<tr style="width:400px">
				<td align="center">
					<input type="submit" value="提交"/>
				</td>
				<td align="left" style="width:400px">
					<input type="reset" value="重置"/>
				</td>
			</tr>
		</table>
</form:form>
</body>
</html>