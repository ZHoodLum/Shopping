<%@ page language="java" import="java.util.*" pageEncoding="gb18030"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="CSS/main.css" rel="stylesheet">
  </head>
  
  <body> 
	<div class="nav">
	<div class="nav_left">
		<a href="login.jsp">��ʦ��Ϣ��</a>
	</div>
	</div>
	<h2>��ӭ��¼</h2>
	<div class="main" style="margin-top:20">
	 <!--�����û����Ͳ�ͬ��ѡ��ͬ������  -->
    <%
    	if(((Integer)session.getAttribute("limit"))==1){
     %>
    <%@include file="main-2.jsp" %>
    <%}else{%>
    <%@include file="main-3.jsp" %>
	<%}%>
	
<!--  
	<div class="top">
	<a href="main-1.jsp" target="f">��ҳ</a>  
	<a href="teacher_queryall.jsp" target="f">��ʦ��Ϣ����</a>  
	<a href="StudentQueryAllServlet" target="f">ѧ����Ϣ����</a>  
	<a href="CourseQueryAllServlet" target="f">�γ���Ϣ����</a> 
	<a href="SpecialtyQueryAllServlet" target="f">רҵ��Ϣ����</a> 
	 </div>
	  -->
 	<iframe class="botton" name="f" width="100%" height="90%" frameborder="0" scrolling="no" src="main-1.jsp"></iframe>
	
	</div>
	<div class="footing">
		 <p>CopyRight &copy; www.2222.com<a href="http://www.syyyy.com.cn">������ѧԺ<a/></p>
	</div>
  </body>
</html>
