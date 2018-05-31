<%@ page language="java"   import="java.util.*"  pageEncoding="GB18030" contentType="text/html; charset=gb18030"%>
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
  <div class="login">
  
    	<table width="40%"  border="1" cellspacing="0"  height="150" cellpadding="0" align="center"  class="tableborder">
    	
    	
    	<h2 style="font-size:30pt ;text-align:center; color:#ffffff">超市管理系统注册</h2>
    	     <s:form name="form1" method="post" action="registe"  theme="simple">
    	     		<tr>
    	     			<td style="color: #ffffff" align="center"> 
						账号: &nbsp&nbsp&nbsp   <s:textfield name="userVo.uid"  id="uid"  label="账号"></s:textfield>
						<br>
						<br>
						</td>

    			</tr>
    			<tr>
    					<td style="color: #ffffff" align="center">
    					密码:    &nbsp&nbsp&nbsp  <s:password name="userVo.upwd"  id="uid"  label="密码"></s:password>
    					<br>
    					<br>
    				</td>
    			</tr>
    			<tr>
    					<td style="color: #ffffff" align="center">
    					用户姓名:<s:textfield name="userVo.uname"  id="uname"  label="用户姓名"></s:textfield>
    					<br>
    					<br>
    					</td>
    				
				</tr>
						<tr>
    					<td style="color: #ffffff" align="center">
    					用户级别：<s:select list="{'admin','user'}" label="用户级别" name="userVo.ulimit"></s:select>
    					<br>
    					<br>
    					</td>

				</tr>
				<tr>
					<td align="center"><input type="submit" value="注册">
					<input type="reset" value="重置"></td>
				</tr>
    	
    	</tr>
    	
    	</table>
    	</s:form>
    	</div>
  </body>
</html>
