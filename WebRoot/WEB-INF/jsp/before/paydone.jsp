<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="head.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/static/css/main.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/layui/css/layui.css">
<title>支付完成完成</title>

  </head>
  <body>
  	<div class="blank"></div>
	<div class="block clearfix"><!--当前位置-->
	<div class="location ared">当前位置：<a href="before">首页</a> > 购物流程 > 支付完成</div>
	<div class="blank"></div>
	<div class="nFlowBox">
    <h2 style="text-align:center; height:30px; line-height:30px;">感谢您在本站购物！已成功支付！</h2>
    </div>
    </div>
  </body>
</html>
