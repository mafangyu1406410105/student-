<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>学生信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/list.css" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
	<style type="text/css">
	#divall{
		border:1px solid;width:1917px;height:700px;
		background:url("img/yezi.jpg");
		background-siza:100%;
		background-repeat: no-repeat;
	}
	</style>
	
	
  </head>
  
  <body>
  <div id="divall">
  	<div id="div1"><span>学生管理系统</span></div>
  	<div id="div2">
  		<ul class="ul1">
  			<li class="li1"><a href="List1Servlet">查看学生信息</a></li>
  			<li class="li2"><a href="Update">修改学生信息</a></li>
  			<li class="li3"><a href="add.jsp">添加学生信息</a></li>
  			<li class="li4"><a href="Delete">删除学生信息</a></li>
  			<li class="li5"><a href="List2Servlet">逆序查询学生信息</a>
  			<li class="li6"><a href="list5.jsp">条件查询</a></li>
  			<li class="li7"><a href="List9Servlet">模糊查询</a></li>
  			<li class="li8"><a href="index.jsp">安全退出</a></li>
  		</ul>
  	</div>
  	<div id="div3">
  		<div class="div3_1">
  			<span>welcome to system</span>
  		</div>
  	</div>
  </div>
  </body>
</html>
