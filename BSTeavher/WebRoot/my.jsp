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
	<link href="css/main.css" rel="stylesheet">
  </head>
  
  <body> 
  <!--  
	<div class="nav">
	<div class="nav_left">
		<a href="login.jsp">��ʦ��Ϣ��</a>
	</div>
	</div>
	<h2>��ӭ��¼</h2>-->
	<div class="main" style="margin-top:60">
	 <!--�����û����Ͳ�ͬ��ѡ��ͬ������  -->
	 <div>
	    <%
	    	if(((Integer)session.getAttribute("limits"))==1){
	     %>
	    <%@include file="main-2.jsp" %>
	    <%}else{%>
	    <%@include file="main-3.jsp" %>
		<%}%>
	</div>
 	<iframe class="botton" name="f" width="100%" height="100%" frameborder="0" scrolling="no" src="main-1.jsp"></iframe>
	
	</div>
	
<!--������-->

		<!--����ײ�-->
		<div id="footers">
			<div style="margin-top: 40px;text-align: center">
				<table border="0" width="100%">
					<tr>
						<td><p style="margin-top: 20px;">Ƶ������</p></td>
						<td><p style="margin-top: 20px;">�û�����</p></td>
						<td><p style="margin-top: 20px;">��ϵ����</p></td>
					</tr>

					<tr>
						<td><p><a href="javascript:scroll(0,0)" style="text-decoration:none;color: #96c7ec">HOME</a></p></td>
						<td><p>ʹ�ð���</p></td>
						<td><p>��������</p></td>
					</tr>
					<tr>
						<td><p><a href="#recruitinformation" style="text-decoration:none;color: #96c7ec">��Ƹ��Ϣ</a></p></td>
						<td><p>�û�Э��</p></td>
						<td><p></p></td>
					</tr>
					<tr>
						<td><p><a href="#recruitstudentimages2" style="text-decoration:none;color: #96c7ec">������</a></p></td>
						<td><p>��ƭָ��</p></td>
						<td><p></p></td>
					</tr>
					<tr>
						<td><p></p></td>
						<td><p></p></td>
						<td><p></p></td>
					</tr>
				</table>
			</div>
		</div>
  </body>
</html>
