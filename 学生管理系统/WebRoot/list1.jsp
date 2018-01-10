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
    
    <title>查看学生信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/list1.css" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	
	<style type="text/css">
	#divl{
		border:1px solid;width:1917px;height:700px;
		background:url("img/yezi.jpg");
		background-siza:100%;
		background-repeat: no-repeat;
	}
	</style>
	
	<script type="text/javascript">
		$(document).ready(function(){
			$(".li11 a").css("background-color","#0044BB");
		});
		
		$(document).ready(function(){
			$("#table2 tr:odd").css("background-color","white");
			$("#table2 tr:even").css("background-color","#FF8888");
		});
	</script>
	
	<script type="text/javascript">
function AutoScroll1(obj) {

 	$(obj).find("#table2").animate({
 		marginTop: "-50px"
 	}, 500, function() {
 		$(this).css({ marginTop: "0px"}).find("tr:first").appendTo(this);
 	});
 	}
 	
 	$(document).ready(function(){
       setInterval('AutoScroll1("#divl3_2")', 5000);
 	}); 
 	
 	/* $(document).ready(function(){
        var myar = setInterval('AutoScroll1("#down2_1_1")', 5000)  
        $("#down2_1_1").hover(function(){ 
        	clearInterval(myar)
         },function(){
         	myar = setInterval('AutoScroll1("#down2_1_1")', 5000) 
         }) 
 	});  */
 </script>
  </head>
  
  <body>
  <div id="divl">
  	<div id="divl1"><span>学生管理系统</span></div>
  	<div id="divl2">
  		<ul class="ul11">
  			<li class="li11"><a href="List1Servlet">查看学生信息</a></li>
  			<li class="li22"><a href="Update">修改学生信息</a></li>
  			<li class="li33"><a href="add.jsp">添加学生信息</a></li>
  			<li class="li44"><a href="Delete">删除学生信息</a></li>
  			<li class="li55"><a href="List2Servlet">逆序查询学生信息</a>
  			<li class="li56"><a href="list5.jsp">条件查询</a>
  			<li class="li57"><a href="List9Servlet">模糊查询</a>
  			<li class="li58"><a href="index.jsp">安全退出</a>
  		</ul>
  	</div>
  	<div id="divl3">
  		<div class="divl3_1">
  			<table cellpadding="0" cellspacing="0" id="table1">
  				<tr>
  					<td class="td1">编号</td>
  					<td class="td2">姓名</td>
  					<td class="td3">密码</td>
  					<td class="td4">年龄</td>
  					<td class="td5">性别</td>
  					<td class="td6">出生日期</td>
  					<td class="td7">email</td>
  				</tr>
  			</table>
  		<div id="divl3_2">
  			<table cellpadding="0" cellspacing="0" id="table2">
  				<c:forEach items="${us}" var="u">
  					<tr>
  						<td class="td11">${u.userid}</td>
  						<td class="td22">${u.username}</td>
  						<td class="td33">${u.userpass}</td>
  						<td class="td44">${u.userage}</td>
  						<td class="td55">${u.usersex}</td>
  						<td class="td66">${u.userdate}</td>
  						<td class="td77">${u.useremail}</td>
  					</tr>
  				</c:forEach>
  			</table>
  			</div>
  		</div>
  	</div>
  </div>
  </body>
</html>
