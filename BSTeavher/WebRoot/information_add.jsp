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
    
    <title>发布信息</title>
    
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
            <form name="form1" method="post" action="InformationAddServlet">
                <table width="100%" height="114"  border="0" cellpadding="0" cellspacing="0">
                <tr>
                 <td height="74" align="center">
             	   信息编号：<input name="informationid" type="text"><br><br>
				   信息内容：<input name="informationname" type="text"></td>
                    </tr>
                  <tr>
                    <td align="center" style="width: 177px; "><input name="Submit3" type="submit" class="btn_grey" value="保存">
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
