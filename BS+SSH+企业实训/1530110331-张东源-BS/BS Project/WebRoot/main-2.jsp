<%@ page language="java" import="java.util.*" pageEncoding="gb18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main-3.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="CSS/main.css">
  </head>
  
  <body>
	<div class="top">
	<a href="Information1QueryAllServlet" target="f">��ҳ</a>  
	<a href="Teacher1QueryAllServlet" target="f">��ʦ��Ϣ����</a>  
	<a href="StudentQueryAllServlet" target="f">ѧ����Ϣ����</a>  
	<a href="CourseQueryAllServlet" target="f">�γ���Ϣ����</a> 
	<a href="SpecialtyQueryAllServlet" target="f">רҵ��Ϣ����</a> 
	 </div>
   
  </body>
</html>
