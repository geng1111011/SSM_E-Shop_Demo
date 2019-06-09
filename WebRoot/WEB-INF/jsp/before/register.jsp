<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   	<title>RegisterPage</title>
   <link  href="./css/before/register.css" rel="stylesheet" type="text/css"/>
<script src="./js/before/register.js" type="text/javascript"></script>
  </head>
  
<body id="i88" style="margin: 0">
   <div class = "pg_header">
        <a class = "logo">REGISTER</a>
        <a class="pg_dl" id="i77">会员信息注册：</a>    
    </div>
 <form name="tijiao" method="POST"  action='${pageContext.request.contextPath }/user/register' modelAttribute="Buser"  onsubmit="return check()"  >
   	  <div class="left"></div>
        <div class="pg_body">
    	  <div class="menu">用户名</div> 
              	<div class="kong">
                      <input type="text" id="text1" name="userName" placeholder="请输入用户名" onblur="check()" required/> 
                      <span id="div1" class="tian" style="margin-top: 4px">*(为必填)<span>
          		</div>
    	<div class="menu">密码</div> 
              	<div class="kong">
    					<input type="password" id="text2" name="userPassword"  onblur="check()" required/>
    					 <span id="div2" class="tian" style="margin-top: -25px">*(为必填)<span>
    			</div>
		 <div class="menu">确认密码:</div>
          <div class="kong">
                   <input id="text3" type="password" name="01" onblur="check()" required>  
                    <span id="div3" class="tian">*(为必填)<span>            
           </div>
		
	
		
		<div class="menu">邮箱&nbsp;</div> 
              	<div class="kong">
		<input type="email" name="userEmail" id="text4" onblur="check()" required/>
			<span id="div4" class="tian">*(为必填)<span>
				</div>
		
		<div class="menu">电话&nbsp;</div> 
              	<div class="kong">
   		<input type="tel" name="userTel"  required />
   				</div>
    	
		<div class="menu"></div> 
              	<div class="kong">

   				</div>
    	
		<div class="menu"></div> 
              	<div class="kong">
  				 
                    
                    
   				</div>
             </div>
              <div class="can">
            <input id="i111" type="submit" name="002" value="注  册">
            <p style="width: 200px;display: inline-block;"></p>
            <input id="i222" type="button" name="004" value="取  消">
        </div>
    </form>
        
</body>
</html>
