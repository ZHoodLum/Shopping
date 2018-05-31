<%@ page language="java" import="java.util.*,pojo.*" pageEncoding="GB18030" contentType="text/html; charset=gb18030"%>
<% 
	    request.setCharacterEncoding("gb2312"); 
%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改图书类型信息</title>
    
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
   <table width="292" height="175" border="0" cellpadding="0" cellspacing="0" background="Images/subBG.jpg">
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



   <s:form name="form1" method="post" action="Reader_update" theme="simple">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
       <tr>
  
       <td height="50" align="center">  读者名称：
       <s:textfield name="r.rid" type="hidden" id="rid" value="%{#session.rid}"/>
       <s:textfield name="r.rname" type="text" id="rname" value="%{#session.rname}"/>      
       </td> 
      </tr>
      
      <tr>  
       <td height="50" align="center">  读者身份证：
       
       <s:textfield name="r.ridcard" type="text" id="ridcard" value="%{#session.ridcard}"/>      
       </td> 
      </tr>
      
      <tr>
       <td height="35" align="center"><input name="Submit" type="submit" class="btn_grey" value="保存">

		<input name="Submit2" type="reset" class="btn_grey" value="重置">

		<input name="Submit3" type="button" class="btn_grey" onClick="window.close()" value="关闭"></td>
      </tr>
    </table>
          </s:form></td>
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
