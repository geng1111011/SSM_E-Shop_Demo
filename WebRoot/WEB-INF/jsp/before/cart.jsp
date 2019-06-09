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
  <script type="text/javascript" src="${pageContext.request.contextPath }/res/layui/layui.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
  <script type="text/javascript">
	//确认
	function  goOrderConfirm(){
		window.location.href="/SpringExam/cart/orderConfirm";
	}
	//清空
	function godelete(){
		if(window.confirm("真的清空购物车吗？")){
			window.location.href="/SpringExam/cart/clear";
			return true;
		}
		return false;
	}
	//删除
	function deleteAgoods(gno){
		if(window.confirm("真的删除该商品吗？")){
			window.location.href="/SpringExam/cart/deleteAgoods?id=" + gno;
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
                  <input class="CheckBoxShop check" id="" type="hidden" num="all" name="select-all" value="true">
                </div>
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
        <div class="th th-op">
          <div class="th-inner">
            操作
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
                  <input class="CheckBoxShop check" id="" type="hidden" num="all" name="select-all" value="true">
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
              <div class="box-btn layui-clear">
             
                <input class="Quantity-input" type="" name="" value="${ce.productNumber}" disabled="disabled">
             
              </div>
            </li>
            
            <li class="th th-sum">
              <span class="sum">${ce.smallsum}</span>
            </li>
            
            <li class="th th-op">
              <span class="dele-btn" ><a href="${pageContext.request.contextPath }/cart/deleteAgoods?id=${ce.productId} ">删除</a></span>
       
            </li>
          </ul>
          </c:forEach>
          
          
        
        </div>
      </div>


      <div class="FloatBarHolder layui-clear">
        <div class="th th-chk">
          <div class="select-all">
            <div class="cart-checkbox">
              <input class="check-all check" id="" name="select-all" type="hidden"  value="true">
            </div>
            <label>&nbsp;&nbsp;已选<span class="Selected-pieces">0</span>件</label>
          </div>
        </div>
        <div class="th batch-deletion">
          <span class="batch-dele-btn" onclick="godelete()"><a href="${pageContext.request.contextPath }/cart/deleteAllgoods">批量删除</a></span>
        </div>
        <div class="th Settlement">
          <button class="layui-btn" onclick="goOrderConfirm()">结算</button>
        </div>
        <div class="th total">
          <p>应付：<span class="pieces-total">0</span></p>
        </div>
      </div>
    </div>
  </div>

<script type="text/javascript">
  layui.config({
    base: '${pageContext.request.contextPath }/res/static/js/util/' //你存放新模块的目录，注意，不是layui的模块目录
  }).use(['mm','jquery','element','car'],function(){
    var mm = layui.mm,$ = layui.$,element = layui.element,car = layui.car;
    
    // 模版导入数据
    // var html = demo.innerHTML,
    // listCont = document.getElementById('list-cont');
    // mm.request({
    //   url: '${pageContext.request.contextPath }/json/shopcart.json',
    //   success : function(res){
    //     listCont.innerHTML = mm.renderHtml(html,res)
    //     element.render();
    //     car.init()
    //   },
    //   error: function(res){
    //     console.log(res);
    //   }
    // })
    // 
    car.init()


});
</script>
</body>
</html>
