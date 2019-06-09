<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>登录页面</title>
<link href="${pageContext.request.contextPath }/css/before/login.css" rel="stylesheet" type="text/css"/>
<script src="${pageContext.request.contextPath }/js/before/login/canvas-particle.js" ></script>
<script src="${pageContext.request.contextPath }/js/before/login/loginBackground.js"></script>
<script type="text/javascript">
	//确定按钮
	function gogo(){
		//alert("12")
		document.loginform.submit();
		alert("45")
	}

    </script>
    
</head>

<body >
<form action="${pageContext.request.contextPath }/user/login" method="post"   id="login">
    <h1>登陆</h1>
    <fieldset id="inputs">
        <input id="username" type="text" placeholder="Username" name="userName" autofocus required> 
         
        <input id="password" type="password" placeholder="Password" name="userPassword"  required>
        
       <!--   <input type="text" name="code" placeholder="验证码" class="textSize"/>
    </fieldset>
      <!-- <fieldset id="actions">
        <tr>
	  <td><img id="code" src="validateCode"/></td>
		<td class="ared">
				<a href="javascript:refreshCode();"><font color="blue">看不清，换一个！</font></a>
			</td>
      </tr>
    </fieldset>-->
    <fieldset id="actions">
     <a href="toRegister" style="text-align: right" >注册</a>
     <input type="submit" id="submit" value="登陆" onclick="gogo()">
    </fieldset>
	</form>
	<div style="text-align:center;clear:both">	${msg }</div>
</body>
</html>

