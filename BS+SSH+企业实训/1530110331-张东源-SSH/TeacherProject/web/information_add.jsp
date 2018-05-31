<%--
  Created by IntelliJ IDEA.
  User: ZHoodLum
  Date: 2018/1/7
  Time: 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="css/main.css">

</head>
<body>
<div>
    <table width="100%" >
        <tr>
            <td>
                <h2 style="padding-top:20px;font-family: YouYuan ;font-size: 40px;">教师信息网</h2>
            </td>
            <td>
                欢迎：<s:property value="uname"/>
            </td>
        </tr>
    </table>

</div>
<div class="main">
    <table  width="100%" border="0" >
        <tr>
            <div>
                <table border="0" width="100%">
                    <tr>
                        <!--主页导航栏-->
                        <div id="titlecontent">
                            <div id="titlecontent_right">
                                <span><a href="teacher.jsp">首页</a></span>
                                <span><a href="information_findAll">信息公告</a></span>
                                <span><a href="information_findAll">教师信息</a></span>
                                <span><a href="student_findAll">学生信息</a></span>
                            </div>
                        </div>

                    <tr width="100%" style="text-align:center;">
                        <img src="image/shudian.jpg" width="100%" height="400px" style="margin:auto;">
                    </tr>
                    </tr>
                    <tr height="70px">

                    </tr>
                    <div style="width: 100%">
                        <s:form name="form1" method="post" action="information_Add">
                            <tr align="center">
                                <td><s:submit value="点击发布信息哦"/>
                            </tr>

                            <tr align="center" style="height: 50px;font-size: 20px;">
                                <td valign="top">发布时间:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <s:textfield name="information.informationdate" type="date"  placeholder="请输入时间 格式为“年-月-日”"/></td>

                            </tr>

                            <tr align="center" style="height: 50px;font-size: 20px;">
                                <td height="100px">发布信息内容:
                                    <s:textfield name="information.informationname" type="text"  size="200" maxlength="200" placeholder="请输入将要发布信息的内容"/></td>
                            </tr>

                            <tr height="20px">

                            </tr>
                            <!--
                            <tr>
                                <td align="center" style="width: 177px; " colspan="2">
                                    <s:submit value="保存" style="vertical-align:middle;"/>
                                    <s:reset value="关闭" style="vertical-align:middle;" onClick="window.close();"/></td>
                            </tr>-->
                        </s:form>
                    </div>
                    <tr height="400px">

                    </tr>
                </table>
            </div>
        </tr>

        <!--页面尾部-->
        <div style="margin-top: 50px">
            <tr width="100%">
                <td>
                    <div style="text-align: center;font-size: 13px;">
                        客服致电热线：880-8944-561&nbsp;&nbsp;
                        未经本站同意，不得私自盈利，如发现需承担法律责任.
                    </div>
                </td>
            </tr>
            <tr width="100%">
                <td>
                    <div style="text-align: center;font-size: 13px;">
                        本站请使用IE6.0或以上版本 1024*768为最佳显示效果
                    </div>
                </td>
            </tr>
            <tr width="100%">
                <td>
                    <div style="text-align: center;font-size: 13px;">
                        CopyRight &copy; 2008 www.zbaccp.com
                    </div>
                </td>
            </tr>
        </div>
        <!--页面尾部-->
    </table>
</div>
</body>
</html>
