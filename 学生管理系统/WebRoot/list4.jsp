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
    
    <title>逆序查询学生信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/list4.css" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	
	<style type="text/css">
	#divA{
		border:1px solid;width:1917px;height:700px;
		background:url("img/yezi.jpg");
		background-siza:100%;
		background-repeat: no-repeat;
	}
	</style>
	
	<script type="text/javascript">
		$(document).ready(function(){
			$(".liA5 a").css("background-color","#0044BB");
		});
		
		$(document).ready(function(){
			$("#tableA2 tr:odd").css("background-color","white");
			$("#tableA2 tr:even").css("background-color","#FF8888");
		});
	</script>
  </head>
  
  <body>
  <div id="divA">
  	<div id="divA1"><span>学生管理系统</span></div>
  	<div id="divA2">
  		<ul class="ulA1">
  			<li class="liA1"><a href="List1Servlet">查看学生信息</a></li>
  			<li class="liA2"><a href="Update">修改学生信息</a></li>
  			<li class="liA3"><a href="add.jsp">添加学生信息</a></li>
  			<li class="liA4"><a href="Delete">删除学生信息</a></li>
  			<li class="liA5"><a href="List2Servlet">逆序查询学生信息</a>
  			<li class="liA6"><a href="list5.jsp">条件查询</a>
  			<li class="liA7"><a href="List9Servlet">模糊查询</a>
  			<li class="liA8"><a href="index.jsp">安全退出</a>
  		</ul>
  	</div>
  	<div id="divA3">
  		<div class="divA3_1">
  			<table cellpadding="0" cellspacing="0" id="tableA1">
  				<tr>
  					<td class="tdA1">编号</td>
  					<td class="tdA2">姓名</td>
  					<td class="tdA3">密码</td>
  					<td class="tdA4">年龄</td>
  					<td class="tdA5">性别</td>
  					<td class="tdA6">出生日期</td>
  					<td class="tdA7">email</td>
  				</tr>
  			</table>
  			<table cellpadding="0" cellspacing="0" id="tableA2">
  				<c:forEach items="${uss}" var="u">
  					<tr>
  						<td class="tdA11">${u.userid}</td>
  						<td class="tdA22">${u.username}</td>
  						<td class="tdA33">${u.userpass}</td>
  						<td class="tdA44">${u.userage}</td>
  						<td class="tdA55">${u.usersex}</td>
  						<td class="tdA66">${u.userdate}</td>
  						<td class="tdA77">${u.useremail}</td>
  					</tr>
  				</c:forEach>
  			</table>
  		</div>
  	</div>
  </div>
  </body>
</html>
