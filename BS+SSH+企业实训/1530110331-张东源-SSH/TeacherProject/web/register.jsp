<%--
  Created by IntelliJ IDEA.
  User: ZHoodLum
  Date: 2018/1/8
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="css/register.css">
</head>
<body>
<div class="nav">
    <div class="nav_left">
        <a href="login.html">网上书店</a>
    </div>
</div>

<h2>用户免费注册页面</h2>
<div id="main">
    <ul>
        <form id="myform" name="myform" action="user_register" method="post"  onsubmit="return validate()">

            <li class="first"><label>用户帐号：</label>
                <s:textfield name="users.userid"  class="txt" type="text" placeholder="字母开头，由1-9位数字、字母和下划线组成" />
            </li>
            <li><label>用户姓名：</label>
                <s:textfield name="users.uname"  class="txt" placeholder="2位以上中文" />
            </li>
            <li><label>用户密码：</label>
                <s:textfield name="users.upwd" type="password" class="txt" placeholder="3位以上数字组成" />
            </li>
            <li><label>用户权限：</label>
                <s:textfield name="users.ulimit" type="password" class="txt" placeholder="与登录密码相同" />
            </li>
            <li class="last">
                <input name="sub"  type="submit" class="btn1" value="注册" />
                <input name="reset" type="reset" class="btn1" value="重置" />
            </li>
        </form>
    </ul>
</div>

</body>
</html>
