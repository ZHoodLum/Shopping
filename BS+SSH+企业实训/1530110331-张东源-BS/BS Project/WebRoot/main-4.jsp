<%@ page language="java" import="java.util.*" pageEncoding="gb18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main-4.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <div class="nav">
	<div class="nav_left">
		<a href="login.jsp">��ʦ��Ϣ��</a>
	</div>
	</div>
	<h2>��ӭ��¼</h2>
	<div class="main" style="margin-top:20">
  
	<div class="top">
	<a href="main-1.jsp" target="f">��ҳ</a>  
	<a href="teacher_queryall.jsp" target="f">��ʦ��Ϣ����</a>  
	<a href="StudentQueryAllServlet" target="f">ѧ����Ϣ����</a>  
	<a href="CourseQueryAllServlet" target="f">�γ���Ϣ����</a> 
	<a href="SpecialtyQueryAllServlet" target="f">רҵ��Ϣ����</a> 
	 </div>
	  
 	<iframe class="botton" name="f" width="100%" height="90%" frameborder="1" scrolling="no" src="main-1.jsp"></iframe>
	
	</div>
	<div class="footing">
		 <p>CopyRight &copy; www.2222.com<a href="http://www.syyyy.com.cn">������ѧԺ<a/></p>
	</div>
  </body>
  </body>
</html>
