<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: ZHoodLum
  Date: 2018/1/6
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
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
                                <span><a href="student_findAll">信息</a></span>
                            </div>
                        </div>

                        <tr width="100%" style="text-align:center;">
                            <img src="image/shudian.jpg" width="100%" height="400px" style="margin:auto;">
                        </tr>
                    </tr>
                    <tr height="70px">

                    </tr>
                    <s:form name="form1" method="post" action="student_Add" theme="simple">

                        <tr align="center" style="height: 50px;font-size: 20px;">
                            <td>学生编号:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <s:textfield name="student.studentid" type="text"/></td>
                        </tr>

                        <tr align="center" style="height: 50px;font-size: 20px;">
                            <td>学生名称:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <s:textfield name="student.studentname" type="text"/></td>
                        </tr>

                        <tr align="center" style="height: 50px;font-size: 20px;">
                            <td>学生性别:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <s:textfield name="student.sex" type="text"/></td>
                        </tr>

                        <tr align="center" style="height: 50px;font-size: 20px;">
                            <td>语文成绩:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <s:textfield name="student.yu" type="text"/></td>
                        </tr>

                        <tr align="center" style="height: 50px;font-size: 20px;">
                            <td>数学成绩:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <s:textfield name="student.shu" type="text"/></td>
                        </tr>

                        <tr align="center" style="height: 50px;font-size: 20px;">
                            <td>外语成绩:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <s:textfield name="student.wai" type="text"/></td>
                        </tr>

                        <tr align="center" style="height: 50px;font-size: 20px;">
                            <td>政治成绩:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <s:textfield name="student.zheng" type="text"/></td>
                        </tr>

                        <tr align="center" style="height: 50px;font-size: 20px;">
                            <td>历史成绩:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <s:textfield name="student.shi" type="text"/></td>
                        </tr>
                        <tr align="center" style="height: 50px;font-size: 20px;">
                            <td>地理成绩:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <s:textfield name="student.di" type="text"/></td>
                        </tr>
                        <tr align="center" style="height: 50px;font-size: 20px;">
                            <td>生物成绩:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <s:textfield name="student.sheng" type="text"/></td>
                        </tr>
                        <tr align="center" style="height: 50px;font-size: 20px;">
                            <td>物理成绩:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <s:textfield name="student.wu" type="text"/></td>
                        </tr>
                        <tr align="center" style="height: 50px;font-size: 20px;">
                            <td>化学成绩:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <s:textfield name="student.hua" type="text"/></td>
                        </tr>
                        <tr height="20px">

                        </tr>

                        <tr>
                            <td align="center" style="width: 177px; ">
                                <input name="Submit3" type="submit" class="btn_grey" value="保存">
                                &nbsp;
                                <input name="Submit22" type="button" class="btn_grey" value="关闭" onClick="window.close();"></td>
                        </tr>
                    </s:form>
                    <tr height="200px">

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
