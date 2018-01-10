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
    
     <title>删除学生信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/list3.css" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	
	<style type="text/css">
	#divlll{
		border:1px solid;width:1917px;height:700px;
		background:url("img/yezi.jpg");
		background-siza:100%;
		background-repeat: no-repeat;
	}
	</style>
	
	<script type="text/javascript">
		$(document).ready(function(){
			$(".lii24 a").css("background-color","#0044BB");
		});
		
		$(document).ready(function(){
			$("#table222 tr:odd").css("background-color","white");
			$("#table222 tr:even").css("background-color","#FF8888");
		}); 
	</script>
	
  </head>
  
  <body>
  <div id="divlll">
  	<div id="divlll1"><span>学生管理系统</span></div>
  	<div id="divlll2">
  		<ul class="ull21">
  			<li class="lii21"><a href="List1Servlet">查看学生信息</a></li>
  			<li class="lii22"><a href="Update">修改学生信息</a></li>
  			<li class="lii23"><a href="add.jsp">添加学生信息</a></li>
  			<li class="lii24"><a href="Delete">删除学生信息</a></li>
  			<li class="liI25"><a href="List2Servlet">逆序查询学生信息</a>
  			<li class="liI26"><a href="list5.jsp">条件查询</a>
  			<li class="liI27"><a href="List9Servlet">模糊查询</a>
  			<li class="liI28"><a href="index.jsp">安全退出</a>
  		</ul>
  	</div>
  	<div id="divlll3">
  		<div class="divlll3_1">
  			<table cellpadding="0" cellspacing="0" id="table111">
  				<tr>
  					<td class="td1_1">编号</td>
  					<td class="td1_2">姓名</td>
  					<td class="td1_3">密码</td>
  					<td class="td1_4">年龄</td>
  					<td class="td1_5">性别</td>
  					<td class="td1_6">出生日期</td>
  					<td class="td1_7">email</td>
  					<td class="td1_8">选项</td>
  				</tr>
  			</table>
  			<table cellpadding="0" cellspacing="0" id="table222">
  				<c:forEach items="${usu}" var="u">
  					<tr>
  						<td class="td2_11">${u.userid}</td>
  						<td class="td2_22">${u.username}</td>
  						<td class="td2_33">${u.userpass}</td>
  						<td class="td2_44">${u.userage}</td>
  						<td class="td2_55">${u.usersex}</td>
  						<td class="td2_66">${u.userdate}</td>
  						<td class="td2_77">${u.useremail}</td>
  						<td class="td2_88"><a href="DeleteServlet?userid=${u.userid}">删除</a></td>
  					</tr>
  				</c:forEach>
  			</table> 
  		</div>
  	</div>
  </div>
  </body>
</html>
