<%@ page language="java"   import="java.util.*"  pageEncoding="GB18030" contentType="text/html; charset=gb18030"%>
<% 
	    request.setCharacterEncoding("gb18030"); 
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
    
    <title>���ͼ����Ϣ</title>
    
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

   <table width="778"  border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td valign="top" bgcolor="#FFFFFF"><table width="99%" height="510"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="tableBorder_gray">
  <tr>
    <td height="510" valign="top" style="padding:5px;"><table width="98%" height="487"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="22" valign="top" class="word_orange">��ǰλ�ã�ͼ����� &gt; ͼ����Ϣ���� &gt; ���ͼ����Ϣ &gt;&gt;&gt;</td>
      </tr>
      <tr>
         <td align="center" valign="top"><table width="100%" height="493"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" valign="top">
	<s:form name="form1" method="post" action="BookInfo_add" theme="simple">
	<table width="600" height="432"  border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	   <tr>
        <td align="center">ͼ���ţ�</td>
        <td height="39"><s:textfield name="b.bookid" type="text" id="bookid" size="50"/>
          * </td>
      </tr>
    <tr>
        <td align="center">ͼ�����ƣ�</td>
        <td height="39"><s:textfield name="b.bookname" type="text" id="bookname" size="50"/>
          * </td>
      </tr>
      <tr>
        <td align="center">ͼ�����ͣ�</td>
        <td>
		<s:select list="#session.booktypeinfo"  name="b.booktypename"></s:select>
        </td>
      </tr>
      <tr>
        <td align="center">���ߣ�</td>
        <td><s:textfield name="b.author" type="text"  id="author" size="40"/></td>
      </tr>
    
      <tr>
        <td align="center">�����磺</td>
        <td>
           <s:textfield name="b.pubname" type="text" id="pubname" size="50"/>
          </td>
      </tr>
       <tr>
        <td align="center">ISBN��</td>
        <td><s:textfield name="b.isbn" type="text" id="isbn"/> * </td>
      </tr>
      <tr>
        <td align="center">�۸�</td>
        <td><s:textfield name="b.price" type="text" id="price"/>(Ԫ) * </td>
      </tr>
    
      <tr>
        <td align="center">&nbsp;</td>
        <td><input name="Submit" type="submit" class="btn_grey" value="����" onClick="return check(form1)">
&nbsp;
<input name="Submit2" type="button" class="btn_grey" value="����" onClick="history.back()"></td>
      </tr>
    </table>
	</s:form>
	</td>
  </tr>
</table></td>
      </tr>
    </table>
</td>
  </tr>
</table><%@ include file="copyright.jsp"%></td>
  </tr>
</table>
  </body>
</html>
