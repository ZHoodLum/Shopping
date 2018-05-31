<%@ page language="java" import="java.util.*" pageEncoding="gb18030"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body  background="images/ground.jpg">
  <s:debug/>
  <div class="login">
  
    	<table width="40%"  border="0" cellspacing="0"  height="150" cellpadding="0" align="center"  class="tableborder">
    	
    	<tr>
    	<h2 style="font-size:30pt ;text-align:center; color:#ffffff">超市管理系统登录</h2>
    	     <s:form name="form1" method="post" action="login" theme="simple">
    	     <td style="color: #ffffff">
    	     	账号：
    	     </td>
    	     <td style="color: #ffffff">  
    	     	 <s:textfield name="userVo.uid"  id="uid" label="账号"  />
    	     </td>
    	</tr>
    		<tr>
    	<td style="color: #ffffff">密码：</td>
    	
    	<td><s:textfield name="userVo.upwd"  id="upwd" label="密码"  /><br/>
    	  <s:submit value="添加"/>
    	  <s:reset  value="重置"/>
    	<input type="button"  value="注册" onclick="window.location.href='registe.jsp'"></td>
    	</tr>
    	
    	</table>
    	</s:form>
    	</div>
  </body>
</html>
