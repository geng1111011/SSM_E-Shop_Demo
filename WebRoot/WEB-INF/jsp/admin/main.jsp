<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">

<link  href="${pageContext.request.contextPath }/res/layui/css/layui.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath }/res/layui/layui.js" ></script>
<script src="${pageContext.request.contextPath }/js/admin/bar.js" ></script>
<title>无标题文档</title>
<script type="text/javascript">

	function gogo(){
		
		window.location.href="adminGoods/toAddGoods"; 
		
	}
</script>
</head>

<body>

 <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
        <div title="菜单缩放" class="kit-side-fold"><i class="fa fa-navicon" aria-hidden="true"></i></div>
        <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
        <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
           
      <c:if test="${auser!=null}"><div class="login"><a href="#">欢迎 ${auser.adminName }</a></div></c:if>
      <c:if test="${auser!= null}"><a href="${pageContext.request.contextPath }/exit">退出</a></c:if>       
        </li>
            <li class="layui-nav-item layui-nav-itemed">
                <a class="" href="javascript:;"><i ></i> <span >商品管理</span></a>
                <dl class="layui-nav-child">
                    <dd><a href="${pageContext.request.contextPath }/adminGoods/toAddGoods" target="center"><i ></i> <span >增加商品</span></a></dd>
              
                    <dd><a href="${pageContext.request.contextPath }/adminGoods/selectGoods?act=updateSelect" target="center"><i ></i> <span >修改商品</span></a></dd>
    
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;"><i ></i> <span >类型管理</span></a>
                <dl class="layui-nav-child">
                    <dd><a href="${pageContext.request.contextPath }/adminType/toAddType" target="center"><i ></i> <span >添加类型</span></a></dd>
                    <dd><a href="${pageContext.request.contextPath }/adminType/toDeleteType" target="center"><i ></i> <span >删除类型</span></a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;"><i ></i> <span >用户管理</span></a>
                <dl class="layui-nav-child">
                    <dd><a href="${pageContext.request.contextPath }/adminUser/userInfo" target="center"><i ></i> <span >删除用户</span></a></dd>         
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;"><i ></i> <span >订单管理</span></a>
                <dl class="layui-nav-child">
                    <dd><a href="${pageContext.request.contextPath }/adminOrder/orderInfo" target="center"><i ></i> <span >删除订单</span></a></dd>
                </dl>
            </li>
                        <!--  <li class="layui-nav-item">
                <a href="javascript:;"><i ></i> <span >公告管理</span></a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;"><i ></i> <span >添加公告</span></a></dd>
                    <dd><a href="javascript:;"><i ></i> <span >删除公告</span></a></dd>
                </dl>     
            </li>-->
            
            
            	<li class="layui-nav-item"><a><span >公告管理</span></a>
				<dl class="layui-nav-child">
					<dd><a href="${pageContext.request.contextPath }/adminNotice/toAddNotice" target="center"><span >添加公告</span></a><dd>
					<dd><a href="${pageContext.request.contextPath }/adminNotice/deleteNoticeSelect" target="center"><span >删除公告</span></a><dd>
				</dl> 
			</li>
        </ul>
    </div>
</div>

<div id="content">
		<iframe align="right" width="1200px" height="1200px"  name="center" frameborder="0"  >
		
		</iframe>
	</div>
	
</body>
</html>


