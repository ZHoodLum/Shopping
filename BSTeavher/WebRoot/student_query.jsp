<%@ page language="java" import="java.util.*,vo.*" pageEncoding="gb18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'student_query.jsp' starting page</title>
    
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
         <td height="385" valign="top" bgcolor="#FFFFFF"><table width="99%" height="341"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="tableBorder_gray">
       <tr>
         <td height="341" valign="top" style="padding:5px;">
         <table width="98%" height="430"  border="0" cellpadding="0" cellspacing="0">
      <tr>
          <td height="22" valign="top" bgcolor="white">��ǰλ�ã�ϵͳ���� &gt; ѧ���������� &gt;&gt;&gt;</td>
      </tr>
      <tr>
        <td height="273" align="center" valign="top">
          <table width="100%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
           <td><a href="student_add.jsp" >���ѧ��������Ϣ</a> </td>
         
          </tr>
          </table>
          
          <form name="form1" method="post" action="StudentQueryServlet">
          <table width="100%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
           <td>	
 
           	<input type="text" name="studentid">
           	<input type="submit" name="query" value="��ѯ" onClick="return check(form1)">
            </td>
          </tr>
          </table>
          </form>
          

  <table width="100%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#F6B83B" bordercolorlight="#FFFFFF">
  <tr align="center" bgcolor="#e3F4F7">
  <td width="5%"    bgcolor="#F9D16B" >ѧ�����</td>
    <td width="10%" bgcolor="#F9D16B">ѧ������</td>
     <td width="5%" bgcolor="#F9D16B">�γ�</td>
     
    <td width="10%" bgcolor="#F9D16B">�Ա�</td>    
     <td width="10%" bgcolor="#F9D16B">�ɼ�</td>
     <td width="10%" bgcolor="#F9D16B">��ַ</td> 
     
    <td width="10%" bgcolor="#F9D16B">רҵ</td>
    
     
    <td width="5%" bgcolor="#F9D16B">�޸�</td>
    <td width="5%" bgcolor="#F9D16B">ɾ��</td>
  </tr>
   <%
  		 ArrayList<Student> allStudent = (ArrayList<Student>)session.getAttribute("allStudent");
 	 	 for(int i=0;i<allStudent.size();i++){
  		 Student student = allStudent.get(i);
	%> 
  <tr>
  <td style="padding:5px;"><%=student.getStudentid()%></td>
   <td style="padding:5px;"><%=student.getStudentname()%></td>  
   <td style="padding:5px;"><%=student.getSex()%></td>
   <td style="padding:5px;"><%=student.getPlace()%></td> 
   <td style="padding:5px;"><%=student.getTel()%></td>
    <td style="padding:5px;"><%=student.getScorename()%></td>   
    <td style="padding:5px;"><%=student.getSpecialtyname()%></td>
    

   
     <td align="center"><a href="StudentFindByIdServlet?studentid=<%=student.getStudentid()%>">�޸�</a></td>
    <td align="center"><a href="StudentDeleteServlet?studentid=<%=student.getStudentid()%>" >ɾ��</a></td> 
 
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
