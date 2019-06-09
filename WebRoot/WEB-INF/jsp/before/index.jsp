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
  <meta charset="utf-8">
  <title>首页</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/before/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/res/layui/css/layui.css"  media="all">
<script type="text/javascript" src="${pageContext.request.contextPath }/res/layui/layui.js" charset="utf-8"></script>

<script src="${pageContext.request.contextPath }/js/before/slideshow.js" charset="utf-8"></script>

</head>
<body id="list-cont">

  <div class="content">
   <div class="main-nav">
      <div class="inner-cont0">
        <div class="inner-cont1 w1200">
          <div class="inner-cont2">
            <a href="toCommodity" class="active">所有商品</a>
          </div>
        </div>
      </div>
    </div>
  <div class="category-con">
      <div class="category-inner-con w1200">
        <div class="category-type">
          <h3>全部分类</h3>
        </div>
        <div class="category-tab-content">
          <div class="nav-con">
            <ul class="normal-nav layui-clear">
            
              <c:forEach var="pt1" items="${ProductType}"> 
              <li class="nav-item">
              <c:if test="${pt1.typeParent== 0}"><div class="title">${pt1.typeName}</div></c:if>
              
				 <c:forEach var="pt2" items="${ProductType}"> 
				 		<c:if test="${pt2.typeParent==pt1.typeId}">
				 		<p><a href="${pageContext.request.contextPath }/searchByType?typeId=${pt2.typeId}">${pt2.typeName}</a>
                <i class="layui-icon layui-icon-right"></i>
				 		</c:if>
                </c:forEach>
                
              </li>
             </c:forEach>
            
            </ul>
          </div>
         
        </div>
    </div>
        <div class="category-banner">
        <div class="layui-carousel" id="test10" style="margin:auto">
  <div carousel-item="">
   
    <div><img src="${pageContext.request.contextPath }/images/2.jpg"></div>
    <div><img src="${pageContext.request.contextPath }/images/3.jpg"></div>
    <div><img src="${pageContext.request.contextPath }/images/4.jpg"></div>
    <div><img src="${pageContext.request.contextPath }/images/5.jpg"></div>

  </div>
  </div>
       <!-- <div class="w1200">
          <img src="image/banner1.jpg">
        </div>-->
      </div>
       </div>
    </div>
</body>
</html>
