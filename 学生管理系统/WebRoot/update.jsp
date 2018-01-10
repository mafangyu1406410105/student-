<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		#form1{border:0px solid;font-size:15px;}
	</style>

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
   <form action="UpdateServlet" method="post" id="form1">
   	学生用户:<input  type="text" name="userid" value="${u.userid}" /><br />
	学生用户:<input  type="text" name="username" value="${u.username}" /><br />
	学生密码:<input  type="text" name="userpass" value="${u.userpass}"/><br />
	学生年龄:<input  type="text" name="userage" value="${u.userage}"/><br />
	学生性别:男<input  type="radio" name="usersex" value="男" checked/>
		      女<input  type="radio" name="usersex" value="女"/><br /> 
	学生生日:<input  type="text" name="userdate" value="${u.userdate}"/><br />
	学生邮箱:<input type="text" name="useremail" value="${u.useremail}"/><br />
	
	<input type="submit" value="修改"/>
	<input type="button" value="重置"/>
    </form>
  </body>
</html>
