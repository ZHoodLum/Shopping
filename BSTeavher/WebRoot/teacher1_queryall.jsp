<%@ page language="java" import="java.util.*,vo.*" pageEncoding="GB18030" contentType="text/html; charset=gb18030"%>
<% 
	    request.setCharacterEncoding("gb2312"); 
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>显示教师类型</title>
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
     <table width="100%"  border="0" cellspacing="0" cellpadding="0" align="center">
      <tr>
         <td height="385" valign="top" bgcolor="#FFFFFF">
         <table width="99%" height="341"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="tableBorder_gray">
       <tr>
         <td height="341" valign="top" style="padding:5px;">
         <table width="98%" height="420"  border="0" cellpadding="0" cellspacing="0">
      <tr>
          <td height="22" valign="top" bgcolor="white">当前位置：教师管理信息 &gt; 教师信息设置 &gt;&gt;&gt;</td>
      </tr>
      <tr>
        <td height="273" align="center" valign="top">
          <table width="100%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
           <td>
      
            </td>
         
          </tr>
          </table>
          <form name="form1" method="post" action="TeacherQueryServlet">
          <table width="100%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
           <td>
           	<input type="text" name="courseid">
           	<input type="submit" name="query" value="查询" onClick="return check(form1)">
            </td>
          </tr>
          </table>
          </form>
          
 
  <table width="91%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#F6B83B" bordercolorlight="#FFFFFF">
  <tr align="center" bgcolor="#e3F4F7">
    <td width="10%" bgcolor="#F9D16B">教师编号</td>
    <td width="10%" bgcolor="#F9D16B">教师名称</td>
    <td width="10%" bgcolor="#F9D16B">教师工资</td>
    <td width="10%" bgcolor="#F9D16B">教师工龄</td>
    <td width="10%" bgcolor="#F9D16B">教师电话</td>
  </tr>


<%
	ArrayList<Teacher> allTeacher=(ArrayList<Teacher>)session.getAttribute("allTeacher");
	for(int i=0;i<allTeacher.size();i++){
		Teacher teacher=allTeacher.get(i);
 %>
  <tr align="center">
   <td style="padding:5px;"><%=teacher.getTeacherid() %></td>
    <td style="padding:5px;"><%=teacher.getTeachername()%></td>
    <td style="padding:5px;"><%%></td>
    <td style="padding:5px;"><%=teacher.getWorkage()%></td>
    <td style="padding:5px;"><%=teacher.getTel()%></td>

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
