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
                                <span><a href="student_findAll">学生信息</a></span>
                            </div>
                        </div>

                        <tr width="100%" style="text-align:center;">
                            <img src="image/shudian.jpg" width="100%" height="400px" style="margin:auto;">
                        </tr>

                    <td width="58%" vAlign=top>
                        <div style="text-align:center; margin-top: 35px">
                            <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="100%" align="center"><br>
                                        <a href="student_add.jsp" style="font-size:25px;font-family:YouYuan;color:green">添加学生信息</a><br><br><br>
                                    </td>
                                </tr>
                            </table>

                            <table width="100%"  border="0" cellpadding="0" cellspacing="0" style="margin:0 auto;" width=1 background=image/Cen_separate.gif>
                                <tr align="center">
                                    <td width="7%">学生编号</td>
                                    <td width="7%">学生名称</td>
                                    <td width="7%">性别</td>
                                    <td width="7%">语文成绩</td>
                                    <td width="7%">数学成绩</td>
                                    <td width="7%">英语成绩</td>
                                    <td width="7%">政治成绩</td>
                                    <td width="7%">历史成绩</td>
                                    <td width="7%">地理成绩</td>
                                    <td width="7%">生物成绩</td>
                                    <td width="7%">物理成绩</td>
                                    <td width="7%">化学成绩</td>
                                    <td width="7%">删除</td>
                                </tr>
                                <!--迭代-->
                                <s:iterator value="liststudent" var="student">
                                    <tr align="center">
                                        <!--进行修改点击跳转-->
                                        <td style="padding:15px;"><s:property value="#student.studentid"/></td>
                                        <td style="padding:15px;"><a style="text-decoration: none" href="student_Update?studentid = %{#student.studentid}"><s:property value="#student.studentname"/></a></td>
                                        <td style="padding:15px;"><s:property value="#student.sex"/></td>
                                        <td style="padding:15px;"><s:property value="#student.yu"/></td>
                                        <td style="padding:15px;"><s:property value="#student.shu"/></td>
                                        <td style="padding:15px;"><s:property value="#student.wai"/></td>
                                        <td style="padding:15px;"><s:property value="#student.zheng"/></td>
                                        <td style="padding:15px;"><s:property value="#student.shi"/></td>
                                        <td style="padding:15px;"><s:property value="#student.di"/></td>
                                        <td style="padding:15px;"><s:property value="#student.sheng"/></td>
                                        <td style="padding:15px;"><s:property value="#student.wu"/></td>
                                        <td style="padding:15px;"><s:property value="#student.hua"/></td>

                                        <td><s:a href="student_Delete?studentid=%{#student.studentid}">删除</s:a></td>
                                    </tr>
                                </s:iterator>
                            </table>
                        </div>
                    </td>

                    </tr>
                    <tr height="70px">

                    </tr>

                    <
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
