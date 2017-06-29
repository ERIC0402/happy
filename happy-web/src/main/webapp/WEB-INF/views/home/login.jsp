<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head> 
  <base href="<%=basePath %>" /> 
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> 
  <title>吴暮霞我喜欢你</title> 
  <meta name="keywords" content="concept, responsive bootstrap, green, white, free html5 template, templatemo" /> 
  <meta name="description" content="Concept is free responsive template using bootstrap framework. Gallery is integrated with responsive lightbox." /> 
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" /> 
  <link href="<%=basePath %>static/login/style_log.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" type="text/css" href="<%=basePath %>static/login/style.css">
  <link rel="stylesheet" type="text/css" href="<%=basePath %>static/login/userpanel.css">
  <script src="<%=basePath %>static/upload/script/jquery.min.js" type="text/javascript"></script>
  <script src="<%=basePath %>static/md5/js/md5.js"></script>
 </head> 
 <body class="login" mycollectionplug="bind"> 
 	<div class="login_m">
<div class="login_logo"><img src="<%=basePath %>static/login/logo.png" width="196" height="46"></div>
<div class="login_boder">

<div class="login_padding" id="login_model">
<form action="<%=basePath %>home/login" method="post" onsubmit = "return check();">
  <h2>登录名</h2>
  <label>
    <input type="text" id="username" name="username" class="txt_input txt_input2" onfocus="if (value ==&#39;会员名&#39;){value =&#39;&#39;}" onblur="if (value ==&#39;&#39;){value=&#39;会员名&#39;}" value="会员名">
  </label>
  <h2>密码</h2>
  <label>
    <input type="password" name="pwd" id="pwd" class="txt_input">
    <input type="hidden" id = "password" name="password" class="txt_input">
  </label>
 
 

 
  <div class="rem_sub">
  	<!-- <div class="rem_sub_l">
  		<input type="checkbox" name="rememberMe" id="save_me">
   		<label for="checkbox">记住我</label>
   </div> -->
    <label>
      <input type="submit" class="sub_button" name="button" id="button" value="登录" style="opacity: 0.7;">
    </label>
  </div>
</form>
</div>






<!--login_padding  Sign up end-->
</div><!--login_boder end-->
</div><!--login_m end-->

 	<script>
 		var msg = "<%=request.getAttribute("shiroLoginFailure")%>";
 		if(msg != "null") {
 			alert("用户名密码输入有误");
 		}
 		function check() {
 			if(!$("#username").val() || $("#username").val() == "会员名") {
 				alert("用户名不能为空");
 				return false;
 			}
 			if(!$("#pwd").val()) {
 				alert("密码不能为空");
 				return false;
 			}
 			$("#password").val(md5($("#pwd").val()));
 			return true;
 		}
 	</script>
 </body>
</html>