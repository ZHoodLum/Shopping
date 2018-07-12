<%@ page language="java" import="java.util.*,vo.*" pageEncoding="utf-8" contentType="text/html; charset=UTF-8"%>
<% 
	    request.setCharacterEncoding("utf-8"); 
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>显示学生档案信息</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link href="CSS/style.css" rel="stylesheet">
     <script language="javascript">
    function delcfm() {
	        if (!confirm("确认要删除？")) {
	            window.event.returnValue = false;
	        }
	    }
	</script>


  </head>
  
  <body>
     <table width="100%"  height="100%" border="0" cellspacing="0" cellpadding="0" align="center">
      <tr>
         <td height="385" valign="top" bgcolor="#FFFFFF">
         <table width="99%" height="341"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="tableBorder_gray">
       <tr>
         <td height="341" valign="top" style="padding:5px;">
         <table width="98%" height="430"  border="0" cellpadding="0" cellspacing="0">
      <tr>
          <td height="22" valign="top" bgcolor="white">当前位置：系统设置 &gt; 学生档案设置 &gt;&gt;&gt;</td>
      </tr>
      <tr>
        <td height="380" align="center" valign="top">
          <table width="100%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
           <td><a href="student_add.jsp" >添加学生档案信息</a> </td>
         
          </tr>
          </table>
          
          <form name="form1" method="post" action="StudentQueryServlet">
          <table width="100%"  border="0" cellspacing="0" cellpadding="0" >
            <tr >
           <td>	
 
           	<input type="text" name="studentid">
           	<input type="submit" name="query" value="查询" onClick="return check(form1)">
            </td>
          </tr>
          </table>
          </form>
          

  <table width="100%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#F6B83B" bordercolorlight="#FFFFFF">
  <tr align="center" bgcolor="#e3F4F7">
  <td width="5%"    bgcolor="#F9D16B" >学生编号</td>
    <td width="10%" bgcolor="#F9D16B">学生名称</td>     
    <td width="10%" bgcolor="#F9D16B">性别</td>    
     <td width="10%" bgcolor="#F9D16B">地址</td> 
     <td width="10%" bgcolor="#F9D16B">电话</td>
    <td width="10%" bgcolor="#F9D16B">专业</td>
    
      <td width="5%" bgcolor="#F9D16B">查看成绩</td>
    <td width="5%" bgcolor="#F9D16B">修改</td>
    <td width="5%" bgcolor="#F9D16B">删除</td>
  </tr>
   <%
  		 ArrayList<Student> allStudent = (ArrayList<Student>)session.getAttribute("allStudent");
 	 	 for(int i=0;i<allStudent.size();i++){
  		 Student student = allStudent.get(i);
	%> 
  <tr align="center">
  <td style="padding:5px;"><%=student.getStudentid()%></td>
   <td style="padding:5px;"><%=student.getStudentname()%></td> 
   <td style="padding:5px;"><%=student.getSex()%></td>
    <td style="padding:5px;"><%=student.getPlace()%></td> 
    <td style="padding:5px;"><%=student.getTel()%></td>
    <td style="padding:5px;"><%=student.getSpecialtyname()%></td>
    

   	 <td align="center"><a href="StudentQueryAllScoreServlet?studentid=<%=student.getStudentid()%>">查看成绩</a></td>
     <td align="center"><a href="StudentFindByIdServlet?studentid=<%=student.getStudentid()%>">修改</a></td>
     <td align="center"><a href="StudentDeleteServlet?studentid=<%=student.getStudentid()%>" onclick="javascript:delcfm()">删除</a></td> 
 
  </tr>
<%
 }
%>  
 </table>
</td>
      </tr>
    </table>
</td>
  </tr>

  </body>
</html>
