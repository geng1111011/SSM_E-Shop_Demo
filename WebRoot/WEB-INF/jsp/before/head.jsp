<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>首页</title>

<script type="text/javascript">
	function clearValue(){
		document.myForm.searchkey.value = "";
	}
</script>
</head>
<body>

	
	
	  <div class="site-nav-bg">
    <div class="site-nav w1200">
      <p class="sn-back-home">
        <i class="layui-icon layui-icon-home"></i>
        <a href="before">首页</a>
      </p>
      <div class="sn-quick-menu">
      <c:if test="${bruser!=null}"><div class="login"><a href="#">欢迎 ${bruser.userName }</a></div><div class="sp-cart"><a href="cart/selectCart">购物车</a></div></c:if>
	  <c:if test="${bruser==null}"><div class="login"><a href="toLogin">登录</a></div><div class="login"><a href="toRegister">注册</a></div></c:if>
      <c:if test="${bruser!= null}"><td><a href="user/exit">退出</a><span class="xx">|</span></td>
						</c:if>
        
      </div>
    </div>
  </div>
  
    <div class="header">
     <div class="headerLayout w1200">
      <div class="headerCon">
        <h1 class="mallLogo">
          <a href="#" title="商城">
            <img src="${pageContext.request.contextPath }/images/store.png">
          </a>
        </h1>
        <div class="mallSearch">
          <form action="search" class="layui-form" novalidate name="myForm" method="post">
            <input type="text" name="searchkey" required autocomplete="off" class="layui-input" placeholder="请输入需要的商品">
            <button class="layui-btn" lay-submit lay-filter="formDemo" onfocus="clearValue()">
                <i class="layui-icon layui-icon-search"></i>
            </button>
            <input type="hidden" name="" value="">
          </form>
        </div>
      </div>
    </div>
   </div>
   

</body>
</html>
