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
    
    <title>条件查询</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/list5.css" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	
	<style type="text/css">
	#divA1{
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
  <div id="divA1">
  	<div id="divA1_1"><span>学生管理系统</span></div>
  	<div id="divA2_1">
  		<ul class="ulA_1">
  			<li class="liA_1"><a href="List1Servlet">查看学生信息</a></li>
  			<li class="liA_2"><a href="Update">修改学生信息</a></li>
  			<li class="liA_3"><a href="add.jsp">添加学生信息</a></li>
  			<li class="liA_4"><a href="Delete">删除学生信息</a></li>
  			<li class="liA_5"><a href="List2Servlet">逆序查询学生信息</a>
  			<li class="liA_6"><a href="list5.jsp">条件查询</a>
  			<li class="liA_7"><a href="List9Servlet">模糊查询</a></li>
  			<li class="liA_8"><a href="index.jsp">安全退出</a>
  		</ul>
  	</div>
  	<div id="divA3_1">
  		<div class="divA3_1_1">
  			<form id="form1" action="List7Servlet" method="post">
  				<input id="input1" type="text" name="username" value="用户名" onfocus="if (value =='用户名'){value =''}"onblur="if (value ==''){value='用户名'}"/>
  				<input id="input2" type="submit" value="查询">
  			</form>
  		</div>
  		<div class="divA3_11">
  			<table cellpadding="0" cellspacing="0" id="tableA_1">
  				<tr>
  					<td class="tdA_1">编号</td>
  					<td class="tdA_2">姓名</td>
  					<td class="tdA_3">密码</td>
  					<td class="tdA_4">年龄</td>
  					<td class="tdA_5">性别</td>
  					<td class="tdA_6">出生日期</td>
  					<td class="tdA_7">email</td>
  				</tr>
  			</table>
  			<table cellpadding="0" cellspacing="0" id="tableA_2">
  				<c:forEach items="${urs}" var="u">
  					<tr>
  						<td class="tdA_11">${u.userid}</td>
  						<td class="tdA_22">${u.username}</td>
  						<td class="tdA_33">${u.userpass}</td>
  						<td class="tdA_44">${u.userage}</td>
  						<td class="tdA_55">${u.usersex}</td>
  						<td class="tdA_66">${u.userdate}</td>
  						<td class="tdA_77">${u.useremail}</td>
  					</tr>
  				</c:forEach>
  			</table>
  		</div>
  	</div>
  </div>
  </body>
</html>
