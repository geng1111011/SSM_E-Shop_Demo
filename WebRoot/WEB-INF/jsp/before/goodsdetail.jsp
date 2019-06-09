<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="head.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	function goCart() {
		document.putcartform.submit();
	}
	function gofocus(gno) {
		//window.location.href = "/SpringExam/cart/focus?id=" + gno;
	}
</script>
</head>
<body>




  <div class="content content-nav-base datails-content">
    <div class="main-nav">
      <div class="inner-cont0">
        <div class="inner-cont1 w1200">
          <div class="inner-cont2">
            <a href="toCommodity" class="active">所有商品</a>
          </div>
        </div>
      </div>
    </div>
    
	<form action="cart/putCart" name="putcartform" method="post">
    <div class="data-cont-wrap w1200">
      <div class="crumb">
        <a href="before">首页</a>
        <span>></span>
        <a href="toCommodity">所有商品</a>
        <span>></span>
        <a href="javascript:;">产品详情</a>
      </div>
      
      <div class="product-intro layui-clear">
        <div class="preview-wrap">
          <a href="javascript:;"><img src="${pageContext.request.contextPath }/images/${goods.productPicture}"></a>
        </div>
        <div class="itemInfo-wrap">
          <div class="itemInfo">
            <div class="title">
              <h4>${goods.productName } </h4>
              <!--<span><i class="layui-icon layui-icon-rate-solid"></i>收藏</span>  -->
            </div>
            <div class="summary">
              <p class="reference"><span>价格</span> ￥${goods.productPrice}</p>
              <!--<p class="activity"><span>活动价</span><strong class="price"><i>￥</i>99.00</strong></p>  -->
              
              <p class="address-box"><span>产&nbsp;&nbsp;&nbsp;&nbsp;地</span><strong class="address">${goods.productArea}</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>产品类型</span><strong >${goods.typeName}</strong></p>
              <p ></p>
              <p ><span>产品简介</span><strong >${goods.productInfo}</strong></p> 
            </div>
            <div class="choose-attrs">
              <!--<div class="color layui-clear"><span class="title">颜&nbsp;&nbsp;&nbsp;&nbsp;色</span> <div class="color-cont"><span class="btn">白色</span> <span class="btn active">粉丝</span></div></div>-->
              <input type="hidden" name="id" value=${goods.productId}>
              <div class="number layui-clear"><span class="title">数&nbsp;&nbsp;&nbsp;&nbsp;量</span><div class="number-cont"><span class="cut btn">-</span><input onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" maxlength="4" type="" name="shoppingnum" value="1"><span class="add btn">+</span></div></div>
            </div>
            <div class="choose-btns">
              <!--<button class="layui-btn layui-btn-primary purchase-btn" onclick="goCart()">立刻购买</button>  -->
              <button class="layui-btn  layui-btn-danger car-btn" onclick="goCart()"><i class="layui-icon layui-icon-cart-simple"></i>加入购物车</button>  
            </div>
          </div>         
        </div>
      </div>
      
      <div class="layui-clear">      
        <div class="detail">
         <!--   <h4>详情</h4>
          <div class="item">
            <img src="${pageContext.request.contextPath }/res/static/img/details_imgbig.jpg">
          </div>-->
        </div>        
      </div>
      
    </div>
  </div>
 </form>
  
<script type="text/javascript">
  layui.config({
    base: '${pageContext.request.contextPath }/res/static/js/util/' //你存放新模块的目录，注意，不是layui的模块目录
  }).use(['mm','jquery'],function(){
      var mm = layui.mm,$ = layui.$;
      var cur = $('.number-cont input').val();
      $('.number-cont .btn').on('click',function(){
        if($(this).hasClass('add')){
          cur++;
         
        }else{
          if(cur > 1){
            cur--;
          }  
        }
        $('.number-cont input').val(cur)
      })
      
  });
</script>


</body>
</html>
