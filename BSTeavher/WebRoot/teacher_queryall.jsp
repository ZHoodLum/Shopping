<%@ page language="java" import="java.util.*,vo.*" pageEncoding="GB18030" contentType="text/html; charset=gb18030"%>
<% 
	    request.setCharacterEncoding("gb2312"); 
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>��ʾ��ʦ����</title>
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
	        if (!confirm("ȷ��Ҫɾ����")) {
	            window.event.returnValue = false;
	        }
	    }
	</script>
	
  </head>
  
  <body>
     <table width="100%"  border="0" cellspacing="0" cellpadding="0" align="center">
      <tr>
         <td height="385" valign="top" bgcolor="#FFFFFF">
         <table width="99%" height="341"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="tableBorder_gray">
       <tr>
         <td height="341" valign="top" style="padding:5px;">
         <table width="98%" height="420"  border="0" cellpadding="0" cellspacing="0">
      <tr>
          <td height="22" valign="top" bgcolor="white">��ǰλ�ã���ʦ������Ϣ &gt; ��ʦ��Ϣ���� &gt;&gt;&gt;</td>
      </tr>
      <tr>
        <td height="273" align="center" valign="top">
          <table width="100%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
           <td>
           	<a href="teacher_add.jsp" >���ӽ�ʦ��Ϣ</a>
            </td>
         
          </tr>
          </table>
          <form name="form1" method="post" action="TeacherQueryServlet">
          <table width="100%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
           <td>
           	<input type="text" name="courseid">
           	<input type="submit" name="query" value="��ѯ" onClick="return check(form1)">
            </td>
          </tr>
          </table>
          </form>
          
 
  <table width="91%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#F6B83B" bordercolorlight="#FFFFFF">
  <tr align="center" bgcolor="#9da6a8">
    <td width="10%" bgcolor="#F9D16B">��ʦ���</td>
    <td width="10%" bgcolor="#F9D16B">��ʦ����</td>
    <td width="10%" bgcolor="#F9D16B">��ʦ����</td>
    <td width="10%" bgcolor="#F9D16B">��ʦ����</td>
    <td width="10%" bgcolor="#F9D16B">��ʦ�绰</td>
    <td width="10%" bgcolor="#F9D16B">�޸�</td>
    <td width="10%" bgcolor="#F9D16B">ɾ��</td>
  </tr>


<%
	ArrayList<Teacher> allTeacher=(ArrayList<Teacher>)session.getAttribute("allTeacher");
	for(int i=0;i<allTeacher.size();i++){
		Teacher teacher=allTeacher.get(i);
 %>
  <tr align="center">
   <td style="padding:5px;"><%=teacher.getTeacherid() %></td>
    <td style="padding:5px;"><%=teacher.getTeachername()%></td>
    <td style="padding:5px;"><%=teacher.getWorkage()%></td>
    <td style="padding:5px;"><%=teacher.getWage()%></td>
    <td style="padding:5px;"><%=teacher.getTel()%></td>
    
    <td align="center"><a href="TeacherFindByIdServlet?teacherid=<%=teacher.getTeacherid()%>">�޸�</a></td>
    <td align="center"><a href="TeacherDeleteServlet?teacherid=<%=teacher.getTeacherid()%>" onclick="javascript:delcfm()">ɾ��</a></td>
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