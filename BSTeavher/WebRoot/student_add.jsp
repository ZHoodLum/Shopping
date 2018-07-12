<%@page import="factory.DAOFactory"%>
<%@ page language="java" import="java.util.*,vo.*" pageEncoding="GB18030" contentType="text/html; charset=gb18030"%>
<% 
	    request.setCharacterEncoding("gb18030"); 
%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加学生档案信息</title>
    
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

   <table width="100%"  border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td valign="top" bgcolor="#FFFFFF">
    <table width="99%" height="400"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="tableBorder_gray">
  <tr>
    <td height="510" valign="top" style="padding:5px;">
    <table width="100%" height="400"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="22" valign="top" bgcolor="white">当前位置：学生管理 &gt; 学生档案管理 &gt; 添加学生信息 &gt;&gt;&gt;</td>
      </tr>
      <tr>
         <td align="center" valign="top">
         <table width="100%" height="400"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" valign="top">
	<form name="form1" method="post" action="StudentAddServlet">
	<table width="600" height="300"  border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	   <tr>
        <td align="center">学生编号：</td>
        <td height="39"><input name="studentid" type="text" id="studentid" size="50">
          * </td>
      </tr>
    <tr>
        <td align="center">学生名称：</td>
        <td height="39"><input name="studentname" type="text" id="studentname" size="50">
          * </td>
      </tr>
     
      <tr>
        <td align="center">性别：</td>
        <td><input name="sex" type="text"  id="sex" size="40"></td>
      </tr>
      <tr>
        <td align="center">地址：</td>
        <td><input name="place" type="text" id="place"> * </td>
      </tr>
 		<tr>
        <td align="center">电话：</td>
        <td><input name="tel" type="text" id="tel"> * </td>
      </tr>
      <tr>
        <td align="center">专业：</td>
        <td>
             <select name="specialtyname" class="wenbenkuang" id="specialtyname">
   				 <%
        		 Specialty specialty=new Specialty();
			       ArrayList<Specialty> allSpecialty=DAOFactory.GetSpecialtyInstances().findAllSpecialty(specialty);
					for(int i=0;i<allSpecialty.size();i++){
					specialty=allSpecialty.get(i);
					
        		 %> 
                 <option value="<%= specialty.getSpecialtyid()%>" selected="selected">
                 <%=specialty.getSpecialtyname()%></option>
                 <% 
       					} 
      			 %>
             </select>
       
      </tr>
      
      <tr>
        <td align="center">数据结构：</td>
        <td><input name="sjjg" type="text" id="sjjg" value="99"></td>
      </tr>
      
      <tr>
        <td align="center">计算机网络：</td>
        <td><input name="jsjwl" type="text" id="jsjwl" value="99"></td>
      </tr>
      
      <tr>
        <td align="center">C语言：</td>
        <td><input name="cyy" type="text" id="cyy" value="99"></td>
      </tr>
      <tr>
        <td align="center">Java：</td>
        <td><input name="java" type="text" id="java" value="99"></td>
      </tr>
      <tr>
        <td align="center">SSH：</td>
        <td><input name="ssh" type="text" id="ssh" value="99"></td>
      </tr>
      
      
      <tr>
        <td align="center">&nbsp;</td>
        <td><input name="Submit" type="submit" class="btn_grey" value="保存" onClick="return check(form1)">
&nbsp;
<input name="Submit2" type="button" class="btn_grey" value="返回" onClick="history.back()"></td>
      </tr>
    </table>
	</form>
	</td>
  </tr>
</table></td>
      </tr>
    </table>
</td>
  </tr>

  </body>
</html>
