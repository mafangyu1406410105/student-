<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>

  </head>
   
 
  
  
   <style type="text/css">    
 body{   
      border:1px solid;width:1000px;height:800px; 
      background-image: url(img/caoyuan.jpg);   
      background-repeat: repeat-x;    
 }    
 </style> 
 <body></body>    
  
  <body>
  <form action="AddServlet" method="post" >
  	学生编号:<input  type="text" name="userid"/><br />
	学生用户:<input  type="text" name="username"/><br />
	学生密码:<input  type="password" name="userpass"/><br />
	学生年龄:<input  type="text" name="userage"/><br />
	学生性别:男<input  type="radio" name="usersex" value="男"/>女<input  type="radio" name="usersex" value="女"/><br />
	学生生日:<input  type="text" name="userdate"/><br />
	学生邮箱:<input  type="text" name="useremail"/><br />
	<input type="submit" value="提交"/><input type="button" value="重置"/>
    </form>
  </body>
</html>
