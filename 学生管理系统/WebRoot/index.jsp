<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/login.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="js/PIE_IE678.js"></script>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
	
	<style type="text/css">
	#divall{
		border:1px solid;width:1917px;height:895px;
		background:url("img/yezi.jpg");
		background-repeat: no-repeat;
	}
	</style>

  </head>
  
  <body>
<div id="divall">
	<div id="divtwo">
			<form action="UsersServlet" method="post" id="form1">
			<div class="two1">
				<span class="span1">用户名:</span>
				<input type="text" name="username" id="name" value="用户名" onfocus="if (value =='用户名'){value =''}"onblur="if (value ==''){value='用户名'}"/>
			</div>
			<div class="two2">
				<span class="span2">密&nbsp;码:</span>
				<input type="text" name="userpass" id="pass" value="密码" onfocus="if (value =='密码'){value =''}"onblur="if (value ==''){value='密码'}"/>
			</div>
			<div class="two3">
				<input id="denglu" type="submit" value="登录" onclick="tijiao()">
				<input id="chongzhi" type="reset" value="重置">
			</div>
	</form>
	</div>
</div>
  </body>
</html>
