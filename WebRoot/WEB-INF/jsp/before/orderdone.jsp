<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="head.jsp"></jsp:include>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
  <meta charset="UTF-8">
<title>订单完成</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/static/css/main.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/layui/css/layui.css">
  
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">

</head>
<body>

  
  <div class="content content-nav-base shopcart-content">
   
<div >当前位置：<a href="before">首页</a> > 购物流程 > 生成订单</div>
	<div class="blank"></div>
	<div class="nFlowBox">
    <h2 style="text-align:center; height:30px; line-height:30px;">感谢您在本站购物！您的订单已提交成功，
         	请记住您的订单号: <font style="color:red" size='5'>${ordersn}</font></h2><br/>
      <center>
      <form action="order/pay" method="post" name="payForm">
            	<input type="hidden" name="ordersn" value="${ordersn}"/>
            请输入收货人的姓名
            	<input type="text" name="productReceiver" required/></br></br>
            	请输入收货人的电话
            	<input type="text" name="productorderTel" required/></br></br>
      请输入收货人的地址
            	<input type="text" name="productorderAddress" style="width:1101px;height:111px" required/>      	
         	<center> 
         	<input type="submit" class="layui-btn">
         	</center>
  
      </form>
      </center>
    </div>
    </div>
</body>
</html>


