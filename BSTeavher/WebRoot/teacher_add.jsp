<%@ page language="java" import="java.util.*" pageEncoding="GB18030" contentType="text/html; charset=gb18030"%>
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
    
    <title>添加图书类型信息</title>
    
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
        <td width="3%" height="25">&nbsp;</td>
        <td width="94%">&nbsp;</td>
        <td width="3%">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><table width="100%" height="131"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="center" valign="top">
            <form name="form1" method="post" action="TeacherAddServlet">
                <table width="100%" height="114"  border="0" cellpadding="0" cellspacing="0">
                <tr>
                 <td height="74" align="center">
                 	 教师编号:<input name="teacherid" type="text"><br><br>
           			 教师名称:<input name="teachername" type="text"><br><br>
           			 工资:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="wage" type="text"><br><br>
           			 工龄:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="workage" type="text"><br><br>
           			 电话:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="tel" type="text"><br>
           			 
           		 </td>
               </tr>
                  <tr>
                    <td align="center" style="width: 177px; ">
                    <input name="Submit3" type="submit" class="btn_grey" value="保存">
                      &nbsp;
                      <input name="Submit22" type="button" class="btn_grey" value="关闭" onClick="window.close();"></td>
                    </tr>
                </table>
            </form></td>
          </tr>
        </table></td>
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
