<%@ page language="java" import="java.util.*,vo.*" pageEncoding="GB18030" contentType="text/html; charset=gb18030"%>
<% 
	    request.setCharacterEncoding("gb2312"); 
%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="factory.DAOFactory"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改教师类型信息</title>
    
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



   <form name="form1" method="post" action="TeacherUpdateServlet">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
      <%
      Teacher teacher = (Teacher)session.getAttribute("teacher");
       %>
       <td height="50" align="center">  
       	教师编号:&nbsp;<input name="teacherid" type="text" value="<%=teacher.getTeacherid()%>" readonly="true"/><br>
       	教师名称:<input name="teachername" type="text" value="<%=teacher.getTeachername()%>"/><br><br>
       		   
      	 工资:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      	 <input name="wage" type="text" value="<%=teacher.getWage()%>"/><br><br>
      	 
       	工龄:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       	<input name="workage" type="text" value="<%=teacher.getWorkage()%>"/><br><br>
       	
       	电话:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       	<input name="tel" type="text" value="<%=teacher.getTel()%>"/><br><br>
       </td> 
      </tr>
      <tr>
        <td height="35" align="center"><input name="Submit" type="submit" class="btn_grey" value="保存">
&nbsp;
<input name="Submit2" type="reset" class="btn_grey" value="重置">
&nbsp;
<input name="Submit3" type="button" class="btn_grey" onClick="window.close()" value="关闭"></td>
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
