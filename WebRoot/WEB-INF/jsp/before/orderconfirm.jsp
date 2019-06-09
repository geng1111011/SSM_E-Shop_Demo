<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
  <title>Document</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/static/css/main.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/layui/css/layui.css">
  
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
 <script type="text/javascript">
	function submitorder(total){
		if(window.confirm("是否真的提交订单，提交后不可再修改订单信息！")){
			window.location.href="/SpringExam/order/orderSubmit?amount=" + total;
			return true;
		}
		return false;
	}
</script> 
</head>
<body>

  


  <div class="content content-nav-base shopcart-content">
    <div class="main-nav">
      <div class="inner-cont0">
        <div class="inner-cont1 w1200">
          <div class="inner-cont2">
            <a href="toCommodity" class="active">所有商品</a>
          </div>
        </div>
      </div>
    </div>
 
    <div class="cart w1200">
      <div class="cart-table-th">
        <div class="th th-chk">
          <div class="select-all">
            <div class="cart-checkbox">
              
            </div>
          <label>&nbsp;&nbsp;</label>
          </div>
        </div>
        
        <div class="th th-item">
          <div class="th-inner">
            商品
          </div>
        </div>
        <div class="th th-price">
          <div class="th-inner">
            单价
          </div>
        </div>
        <div class="th th-amount">
          <div class="th-inner">
            数量
          </div>
        </div>
        <div class="th th-sum">
          <div class="th-inner">
            小计
          </div>
        </div>
        
      </div>
      <div class="OrderList">
        <div class="order-content" id="list-cont">
        
        
        <c:forEach var="ce" items="${cartlist}"> 
          <ul class="item-content layui-clear">
            <li class="th th-chk">
              <div class="select-all">
                <div class="cart-checkbox">
                  
                </div>
              </div>
            </li>
            
            <li class="th th-item">
              <div class="item-cont">
                <a href="javascript:;"><img src="${pageContext.request.contextPath }/images/${ce.productPicture}" alt=""></a>
                <div class="text">
                  <div class="title">${ce.productName}</div>
        
                </div>
              </div>
            </li>
            
            <li class="th th-price">
              <span class="th-su">${ce.productPrice}</span>
            </li>
            
            <li class="th th-amount">
             
               
                     <span >${ce.productNumber}</span>
                
              
            </li>
            
            <li class="th th-sum">
              <span class="sum">${ce.smallsum}</span>
            </li>
            
       
          </ul>
          </c:forEach>
          
          
        
        </div>
      </div>


      <div class="FloatBarHolder layui-clear">
        <div class="th th-chk">
          
        </div>
     
        <div class="th Settlement">
          <button class="layui-btn" onclick="submitorder(${total})">确定订单</button>
        </div>
        <div class="th total">
          <p>应付：<span class="pieces-total" >${total}</span></p>
        </div>
      </div>
    </div>
  </div>

</body>
</html>
