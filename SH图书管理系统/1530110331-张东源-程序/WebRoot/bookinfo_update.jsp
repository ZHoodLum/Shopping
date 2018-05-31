<%@ page language="java" import="java.util.*" pageEncoding="GB18030" contentType="text/html; charset=gb2312"%>

<% 
	    request.setCharacterEncoding("gb2312"); 
%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <link href="CSS/style.css" rel="stylesheet">   
    <title>图书档案修改</title>
    
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
   <%@include file="banner.jsp"%>
   <%@include file="navigation.jsp"%>

  <table width="778"  border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td valign="top" bgcolor="#FFFFFF"><table width="99%" height="510"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="tableBorder_gray">
  <tr>
    <td height="510" valign="top" style="padding:5px;"><table width="98%" height="487"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="22" valign="top" class="word_orange">当前位置：图书管理 &gt; 图书信息管理 &gt; 修改图书信息 &gt;&gt;&gt;</td>
      </tr>
      <tr>
         <td align="center" valign="top"><table width="100%" height="493"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" valign="top">
	<s:form name="form1" method="post" action="BookInfo_update" theme="simple">
	<table width="600" height="432"  border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
      <tr>
        <td align="center">图书名称：
           <s:textfield name="b.bookid" type="hidden" size="50" value="%{#session.bookid}"/>
        </td>
        <td height="39">
          <s:textfield name="b.bookname" type="text"  id="bookname"  size="60" value="%{#session.bookname}" />* 
        </td>
      </tr>
      <tr>
		
        <td align="center">图书类型：</td>
        <td>       
        <s:select list="#session.booktypeinfo"  name="b.booktypename"></s:select>
        </td>
      </tr>
      <tr>
        <td align="center">作者：</td>
        <td><s:textfield name="b.author" type="text"  id="author" size="40"  value="%{#session.author}"/></td>
      </tr>
      <tr>
        <td align="center">出版社：</td>
        <td>
        <s:textfield name="b.pubname" type="text"  id="pubname" size="40"  value="%{#session.pubname}"/>
          </td>
      </tr>
       <tr>
        <td align="center">ISBN：</td>
        <td><s:textfield name="b.isbn" type="text" id="isbn" value="%{#session.isbn}"/>  </td>
      </tr>
      
      <tr>
        <td align="center">价格：</td>
        <td><s:textfield name="b.price" type="text" id="price" value="%{#session.price}"/>(元) * </td>
      </tr>
 
      <tr>
        <td align="center">&nbsp;</td>
        <td><input name="Submit" type="submit" class="btn_grey" value="保存" onClick="return check(form1)">
        &nbsp;
       <input name="Submit2" type="button" class="btn_grey" value="返回" onClick="history.back()"></td>
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