<%@ page language="java" import="java.util.*" pageEncoding="gb18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="CSS/login.css">
</head>
<body>
	
     
  <form name="form1" method="post" action="LoginServlet">
  <div class="nav">
  <div class="nav_left">
    <a href="login.html">教师信息网</a>
  </div>
  </div>
 	 <h2>欢迎登录</h2>

	  <div class="main"> 
	  <ul>
		 <li class="first">
		  <h3>账号：</h3>
		  <p><input name="userid"  type="text" value="110" class="logininput" id="userid" size="27"/></p>
		 </li>
		 <li>
		  <h3>密码：</h3>
		  <p><input name="upwd" type="password" value="110" class="logininput" id="upwd" size="27"/></p>
		 </li>
		
		 <li class="last">
		  <input name="Submit" type="submit" class="btn_grey" value="确定" onclick="return check(form1)"  style="vertical-align:middle;"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  <input name="Submit3" type="reset" class="btn_grey" value="重置"  style="vertical-align:middle;"/><br><br><br><br><br><br>
		  <a href="register.jsp" style="color: black;">没有账号？点击注册</a>
		 </li>
	 </ul>
	 </div>
 </form>
</body>
</html>
