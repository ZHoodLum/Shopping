<%@ page language="java"  import="java.util.*"   pageEncoding="GB18030" contentType="text/html; charset=gb18030"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<% 
	    request.setCharacterEncoding("gb2312"); 
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>��ʾ�û���Ϣ</title>
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
     <%@include file="banner.jsp" %>
     <%@include file="navigation.jsp" %>
     <table width="778"  border="0" cellspacing="0" cellpadding="0" align="center">
      <tr>
         <td height="385" valign="top" bgcolor="#FFFFFF"><table width="99%" height="341"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="tableBorder_gray">
       <tr>
         <td height="341" valign="top" style="padding:5px;"><table width="98%" height="295"  border="0" cellpadding="0" cellspacing="0">
      <tr>
          <td height="22" valign="top" class="word_orange">��ǰλ�ã��û�����&gt;�û���Ϣ���� &gt;&gt;&gt;</td>
      </tr>
      <tr>
        <td height="273" align="center" valign="top">
       
          <table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><a href="readerinfo_add.jsp">����û���Ϣ</a> </td>
  </tr>
</table>
     
  <table width="100%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#F6B83B" bordercolorlight="#FFFFFF">
  <tr align="center" bgcolor="#e3F4F7">
    <td width="10%" bgcolor="#F9D16B">�û����</td>
    <td width="10%" bgcolor="#F9D16B">�û�����</td>
    <td width="12%" bgcolor="#F9D16B">���֤</td>
     <td width="8%" bgcolor="#F9D16B">�޸�</td>
    <td width="8%" bgcolor="#F9D16B">ɾ��</td>
  </tr>
 
	<s:iterator var = "reader" value = "#session.reader">
  <tr>
  <td style="padding:5px;"><s:property value="#reader.rid"/></td>
    <td style="padding:5px;"><s:property value="#reader.rname"/></td>
     <td style="padding:5px;"><s:property value="#reader.ridcard"/></td>
     
     <td align="center"><s:a href="Reader_queryOne?rid=%{#reader.rid}">�޸�</s:a></td>
    <td align="center"><s:a href="Reader_delete?rid=%{#reader.rid}">ɾ��</s:a></td> 
 
  </tr>
</s:iterator>
 </table>
</td>
      </tr>
    </table>
</td>
  </tr>
</table><%@ include file="copyright.jsp"%></td>
  </tr>
</table>
  </body>
</html>
