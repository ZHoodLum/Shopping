<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
 <s:form name="form1" method="post" action="users_login" theme="simple">
   <div class="nav">
    <div class="nav_left">
      <a href="main.html">教师信息网</a>
    </div>
   </div>
   <h2>欢迎登录</h2>

   <div class="main">
     <ul>
      <li class="first">
       <h3>账号：</h3>
       <p><s:textfield name="users.userid"  type="text"  value="110"   class="logininput" id="userid" size="27" placeholder="请输入您的账号"/></p>
      </li>
      <li>
       <h3>密码：</h3>
       <p><s:textfield name="users.upwd" type="password"  value="110" class="logininput" id="upwd" size="27" placeholder="请输入您的密码" /></p>
      </li>

      <li class="last">
       <s:submit value="确定" style="vertical-align:middle;"/>&nbsp;
       <s:reset  value="重置"  style="vertical-align:middle;"/>
      </li>
         <h2> <a href="register.jsp" class="login-fgetpwd" style="color: black">没有账号？点击注册</a></h2>
    </ul>
  </div>

 </s:form>
</body>
</html>