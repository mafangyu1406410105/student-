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
    
    <title>模糊查询</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/list9.css" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	
	<style type="text/css">
	#divA11{
		border:1px solid;width:1917px;height:700px;
		background:url("img/yezi.jpg");
		background-siza:100%;
		background-repeat: no-repeat;
	}
	</style>
	
	<script type="text/javascript">
		$(document).ready(function(){
			$(".liA77 a").css("background-color","#0044BB");
		});
		
		$(document).ready(function(){
			$("#tableA22 tr:odd").css("background-color","white");
			$("#tableA22 tr:even").css("background-color","#FF8888");
		});
		
	</script>
  </head>
  
  <body>
  <div id="divA11">
  	<div id="divA1_11"><span>学生管理系统</span></div>
  	<div id="divA2_11">
  		<ul class="ulA_11">
  			<li class="liA_11"><a href="List1Servlet">查看学生信息</a></li>
  			<li class="liA_22"><a href="Update">修改学生信息</a></li>
  			<li class="liA_33"><a href="add.jsp">添加学生信息</a></li>
  			<li class="liA_44"><a href="Delete">删除学生信息</a></li>
  			<li class="liA_55"><a href="List2Servlet">逆序查询学生信息</a>
  			<li class="liA_66"><a href="list5.jsp">条件查询</a>
  			<li class="liA_77"><a href="List9Servlet">模糊查询</a></li>
  			<li class="liA_88"><a href="index.jsp">安全退出</a>
  		</ul>
  	</div>
  	<div id="divA3_11">
  		<div id="divA3_1_11">
  			<form id="form1" action="List10Servlet" method="post">
  			
  				<select id="select1" name="select">
  		  			<option>姓名</option>
  				</select>
  				<br>
  				<span id="span1">请输入关键字:</span>
  				<input  id="input2" type="text" name="username" value="用户名" onfocus="if (value =='用户名'){value =''}"onblur="if (value ==''){value='用户名'}"/>
  				<input id="input1" type="submit" value="模糊查询">
  			</form> 
  		</div> 
  		<div class="divA3_111">
  			<table cellpadding="0" cellspacing="0" id="tableA_11">
  				<tr>
  					<td class="tdA_1_1">编号</td>
  					<td class="tdA_2_2">姓名</td>
  					<td class="tdA_3_3">密码</td>
  					<td class="tdA_4_4">年龄</td>
  					<td class="tdA_5_5">性别</td>
  					<td class="tdA_6_6">出生日期</td>
  					<td class="tdA_7_7">email</td>
  				</tr>
  			</table>
  			<table cellpadding="0" cellspacing="0" id="tableA_22">
  				<c:forEach items="${urs}" var="u">
  					<tr>
  						<td class="tdA_111">${u.userid}</td>
  						<td class="tdA_222">${u.username}</td>
  						<td class="tdA_333">${u.userpass}</td>
  						<td class="tdA_444">${u.userage}</td>
  						<td class="tdA_555">${u.usersex}</td>
  						<td class="tdA_666">${u.userdate}</td>
  						<td class="tdA_77">${u.useremail}</td>
  					</tr>
  				</c:forEach>
  			</table>
  		</div>
  	</div>
  </div>
  </body>
</html>

