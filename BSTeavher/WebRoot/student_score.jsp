<%@ page language="java" import="java.util.*,vo.*" pageEncoding="GB18030" contentType="text/html; charset=gb2312"%>
<%@page import="factory.DAOFactory"%>
<% 
	    request.setCharacterEncoding("gb2312"); 
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <link href="CSS/style.css" rel="stylesheet">   
    <title>学生档案修改</title>
    
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
  
  <%
  	Student student=(Student)session.getAttribute("student"); 
  %>
  
  <table width="100%"  height="400" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td valign="top" bgcolor="#FFFFFF">
    <table width="100%" height="400"  border=0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="tableBorder_gray">
  <tr>
    <td height="510" valign="top" style="padding:5px;">
    <table width="98%" height="430"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="22" valign="top" bgcolor="white">当前位置：学生管理 &gt; 学生档案管理 &gt; 学生成绩 &gt;&gt;&gt;</td>
      </tr>
      <tr>
         <td align="center" valign="top">

		<form name="form1" method="post" action="">
	 
			<table width="600" height="300"  border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
			   
		      <tr>
		        <td align="center">数据结构：
		           <input name="studentid" type="hidden" id="studentid" size="50" value="<%=student.getStudentid()%>">
		        </td>
		        <td height="39">
		          <input name="sjjg" type="text"  id="sjjg"  size="60" value="<%=student.getSjjg()%>" readonly>* 
		        </td>
		      </tr>
		      <tr>
		        <td align="center">计算机网络：</td>
		        <td><input name="jsjwl" type="text"  id="jsjwl" size="40"  value="<%=student.getJsjwl()%>" readonly>*</td>
		      </tr>
		      
		      <tr>
		        <td align="center">C语言：</td>
		        <td><input name="cyy" type="text" id="cyy" value="<%=student.getCyy() %>" readonly>*</td>
		      </tr>
		      <tr>
		        <td align="center">JAVA：</td>
		        <td><input name="java" type="text" id="java" value="<%=student.getJava() %>" readonly>*</td>
		      </tr>
		       <tr>
		        <td align="center">SSH：</td>
		        <td><input name="ssh" type="text" id="ssh" value="<%=student.getSsh() %>" readonly>*</td>
		      </tr>
		      
		      <tr>
		        <td align="center">&nbsp;</td>
		       <input name="Submit2" type="button" class="btn_grey" value="返回" onClick="history.back()"></td>
		      </tr>
		
		    </table>
		</form>
	</td>
      </tr>
    </table>
</td>
  </tr>

  </body>
</html>