<%@ page language="java" import="java.util.*,vo.*" pageEncoding="GB18030" contentType="text/html; charset=gb2312"%>
<%@page import="factory.DAOFactory"%>
<% 
	    request.setCharacterEncoding("gb2312"); 
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <link href="CSS/style.css" rel="stylesheet">   
    <title>学生档案修改</title>
    
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
  
  <%
  	Student student=(Student)session.getAttribute("student"); 
  %>
  
  <table width="100%"  height="400" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td valign="top" bgcolor="#FFFFFF">
    <table width="100%" height="400"  border=0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="tableBorder_gray">
  <tr>
    <td height="510" valign="top" style="padding:5px;">
    <table width="98%" height="430"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="22" valign="top" bgcolor="white">当前位置：学生管理 &gt; 学生档案管理 &gt; 修改学生信息 &gt;&gt;&gt;</td>
      </tr>
      <tr>
         <td align="center" valign="top">

	<form name="form1" method="post" action="StudentUpdateServlet">
	<table width="600" height="300"  border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
      <tr>

       
        <td align="center">学生名称：
           <input name="studentid" type="hidden" id="studentid" size="50" value="<%=student.getStudentid()%>">
        </td>
        <td height="39">
          <input name="studentname" type="text"  id="studentname"  size="60" value="<%=student.getStudentname()%>" readonly>* 
        </td>
      </tr>
      <tr>
        <td align="center">性别：</td>
        <td><input name="sex" type="text"  id="sex" size="40"  value="<%=student.getSex()%>">*</td>
      </tr>
      
      <tr>
        <td align="center">地址：</td>
        <td><input name="place" type="text" id="place" value="<%=student.getPlace() %>">*</td>
      </tr>
      <tr>
        <td align="center">电话：</td>
        <td><input name="tel" type="text" id="tel" value="<%=student.getTel() %>">*</td>
      </tr>
      <tr>
        <td align="center">专业：</td>
        <td><select name="specialtyname" class="wenbenkuang" id="specialtyname" >
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
           
       </td>
      </tr>
      
      <tr>
        <td align="center">数据结构：</td>
        <td><input name="sjjg" type="text" id="sjjg" value="<%=student.getSjjg() %>">*</td>
      </tr>
      <tr>
        <td align="center">计算机网络：</td>
        <td><input name="jsjwl" type="text"  id="jsjwl" size="40"  value="<%=student.getJsjwl()%>">*</td>
      </tr>
      
      <tr>
        <td align="center">C语言：</td>
        <td><input name="cyy" type="text" id="cyy" value="<%=student.getCyy() %>">*</td>
      </tr>
      <tr>
        <td align="center">JAVA：</td>
        <td><input name="java" type="text" id="java" value="<%=student.getJava() %>">*</td>
      </tr>
       <tr>
        <td align="center">SSH：</td>
        <td><input name="ssh" type="text" id="ssh" value="<%=student.getSsh() %>">*</td>
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
    </table>
</td>
  </tr>

  </body>
</html>