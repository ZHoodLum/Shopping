<%@ page language="java" import="java.util.*,vo.*" pageEncoding="GB18030" contentType="text/html; charset=gb18030"%>
<% 
	    request.setCharacterEncoding("gb2312"); 
%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�޸Ŀγ�������Ϣ</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="CSS/style.css" rel="stylesheet">   
  </head>
  
  <body>
   <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="white">
  <tr>
    <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="3%" height="38">&nbsp;</td>
        <td width="94%">&nbsp;</td>
        <td width="3%">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>



   <form name="form1" method="post" action="CourseUpdateServlet">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
      <%
      Course course = (Course)session.getAttribute("course");
       %>
       <td height="50" align="center">  �γ��������ƣ�
       <input name="courseid" type="hidden" value="<%=course.getCourseid()%>"/>
       <input name="coursename" type="text" value="<%=course.getCoursename()%>"/>
       
       </td> 
      </tr>
      <tr>
        <td height="35" align="center"><input name="Submit" type="submit" class="btn_grey" value="����">
&nbsp;
<input name="Submit2" type="reset" class="btn_grey" value="����">
&nbsp;
<input name="Submit3" type="button" class="btn_grey" onClick="window.close()" value="�ر�"></td>
      </tr>
    </table>
          </form></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
  </body>
</html>
