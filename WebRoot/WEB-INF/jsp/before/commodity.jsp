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
  <title>Document</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/static/css/main.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/res/layui/css/layui.css">
  <script type="text/javascript" src="${pageContext.request.contextPath }/res/layui/layui.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
</head>
<body>


  <div class="content content-nav-base commodity-content">
    <div class="main-nav">
      <div class="inner-cont0">
        <div class="inner-cont1 w1200">
          <div class="inner-cont2">
            <a href="toCommodity" class="active">所有商品</a>
          </div>
        </div>
      </div>
    </div>
    <div class="commod-cont-wrap">
      <div class="commod-cont w1200 layui-clear">
        <div class="left-nav">
          <div class="title">所有分类</div>
          <div class="list-box">
            
               <c:forEach var="pt1" items="${ProductType}"> 
              <dl>
              <c:if test="${pt1.typeParent== 0}"><dt>${pt1.typeName}</dt></c:if>
              
				 <c:forEach var="pt2" items="${ProductType}"> 
				 		<c:if test="${pt2.typeParent==pt1.typeId}">
				 		 <dd><a href="${pageContext.request.contextPath }/searchByType?typeId=${pt2.typeId}">${pt2.typeName}</a></dd>
				 		</c:if>
                </c:forEach>
               </dl> 
             </c:forEach>

             
            
         
          </div>
          <div class="list-box">
          <div class="title">公告栏</div>
          <ul>
          	 <c:forEach var="nl" items="${noticelist}"> 
				 		<li>
				 		 <center><a href="${pageContext.request.contextPath }/selectANotice?id=${nl.id}">${nl.ntitle}</a></center>
				 		 </li>
                </c:forEach>     
         </ul>
          </div>
        </div>
        <div class="right-cont-wrap">
          <div class="right-cont">
            <div class="sort layui-clear">
              <!--  <a class="active" href="javascript:;" event = 'volume'>销量</a>
              <a href="javascript:;" event = 'price'>价格</a>
              <a href="javascript:;" event = 'newprod'>新品</a>
              <a href="javascript:;" event = 'collection'>收藏</a>-->
            </div>
          
            <div class="cont-list layui-clear" id="list-cont">     
             	<c:forEach items="${ProductList}" var="sg" varStatus="status">
						<div class="item">
                <div class="img">
                  <a href="goodsDetail?id=${sg.productId }"><img src="${pageContext.request.contextPath }/images/${sg.productPicture}"></a>
                </div>
                <div class="text">
                  <p class="title">${sg.productName }</p>
                  <p class="price">
                    <span class="pri">￥${sg.productPrice}</span>
                    <span class="nub">剩余：${sg.productQuantity}</span>
                  </p>
                </div>
              </div>
					</c:forEach>   
            	
            </div>
            <div style="text-align:center;clear:both">${msg2}</div> 
            <div id="demo0" style="text-align: center;"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
<script>

  layui.config({
    base: '${pageContext.request.contextPath }/res/static/js/util/' //你存放新模块的目录，注意，不是layui的模块目录
  }).use(['mm','laypage','jquery'],function(){
      var laypage = layui.laypage,$ = layui.$,
     mm = layui.mm;
       laypage.render({
        elem: 'demo0'
        ,count: 10 //数据总数
      });


    

    $('.sort a').on('click',function(){
      $(this).addClass('active').siblings().removeClass('active');
    })
    $('.list-box dt').on('click',function(){
      if($(this).attr('off')){
        $(this).removeClass('active').siblings('dd').show()
        $(this).attr('off','')
      }else{
        $(this).addClass('active').siblings('dd').hide()
        $(this).attr('off',true)
      }
    })

});
</script>


</body>
</html>