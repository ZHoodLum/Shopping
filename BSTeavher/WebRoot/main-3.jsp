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
<link rel="stylesheet" type="text/css" href="css/main.css">
  </head>
  
  <body>
 <!-- 
    <div class="top">
	<a href="main-1.jsp" target="f">��ҳ</a>  
	<a href="TeacherQueryAllServlet" target="f">��ʦ��Ϣ����</a>  
	<a href="InformationQueryAllServlet" target="f">������Ϣ����</a>  
	 </div>
	  -->
	 <div id="titlecontent">
			<div id="titlecontent_right">
				<span class="main2"><a href="Teacher1QueryAllServlet" target="f">��ʦ��Ϣ����</a> </span>
				<span class="main2"><a href="InformationQueryAllServlet" target="f">������Ϣ����</a></span>
			</div>
		</div>
		
  </body>
</html>
