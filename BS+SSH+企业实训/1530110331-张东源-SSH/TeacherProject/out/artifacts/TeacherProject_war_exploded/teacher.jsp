<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
<s:debug></s:debug>
	<div>
		<table width="100%" >
			<tr>
				<td>
					<h2 style="padding-top:20px;font-family: YouYuan ;font-size: 40px;">教师信息网</h2>
				</td>
				<td>
					欢迎：<s:property value="#session.listUser.uname"/>
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
							<!--主页导航栏-->

							<tr width="100%" height="600px">
								<!--左侧部分-->
								<td width="35%"  vAlign=top>

									<div style="text-align:center;">
										<table width="100%"  height="500px" border="0" cellpadding="0" cellspacing="0" style="margin:auto;">
											<!--登陆图片-->
											<tr align="center">
													<IMG height=46 src="image/index1.jpg" width=300 margin-top="10px"/><br>
												<a href="information_add.jsp" style="font-size:25px;font-family:YouYuan;color:green">发布信息|</a></span>
												<a href="information_findAll" style="font-size:25px;font-family:YouYuan;color:green">|公告信息</a></span>
											</tr>

											 <tr width=5 background=image/Cen_separate.gif>
												 <td width="6%">编号</td>
											    <td width="30%">公告内容</td>
												<td width="10%">时间</td>
												<td width="10%">删除</td>
											</tr>
											<!--迭代-->
											<s:iterator value="listinformation" var="information">
												<tr width=5 background=image/Cen_separate.gif>
												<!--进行修改操作 点击调转-->
												<td style="padding:5px;"><s:property value="#information.informationid"/></td>
												<td style="padding:5px;"><a style="text-decoration: none" href="information_FindById?informationid=%{#information.informationid}"><s:property value="#information.informationname"/></a></td>
												<td style="padding:5px;"><s:property value="#information.informationdate"/></td>
												<td><s:a href="information_Delete?informationid=%{#information.informationid}">删除</s:a></td>
											</tr>
											</s:iterator>

											<!--新书上架-->
											<!--
											<tr align="center" style="text-align:center;">
											    <td width="10%"><IMG height=13 width=10 src="image/greendot.jpg"/></td>
											    <td style="margin:auto;" width="80%"> 今天十点开会@全体成员</td>
											</tr>
											<tr align="center" style="text-align:center;">
											    <td width="10%"><IMG height=13 width=10 src="image/greendot.jpg"/></td>
											    <td style="margin:auto;" width="80%"> 11点通知学生宣讲，礼堂</td>
											</tr>
											<tr align="center" style="text-align:center;">
											    <td width="10%"><IMG height=13 width=10 src="image/greendot.jpg"/></td>
											    <td style="margin:auto;" width="80%"> 通报，**上课玩手机</td>
											</tr>
											<tr align="center" style="text-align:center;">
											    <td width="10%"><IMG height=13 width=10 src="image/greendot.jpg"/></td>
											    <td style="margin:auto;" width="80%">于11号搬到新寝室</td>
											</tr>
											<tr align="center" style="text-align:center;">
											    <td width="10%"><IMG height=13 width=10 src="image/greendot.jpg"/></td>
											    <td style="margin:auto;" width="80%">寒假假期：1.15-3.10</td>
											</tr>
											<tr align="center" style="text-align:center;">
											    <td width="10%"><IMG height=13 width=10 src="image/greendot.jpg"/></td>
											    <td style="margin:auto;" width="80%">开展演讲活动，报名地点：会议室</td>
											</tr>
											<tr align="center" style="text-align:center;">
											    <td width="10%"><IMG height=13 width=10 src="image/greendot.jpg"/></td>
											    <td style="margin:auto;" width="80%">***教师请到主任办公室</td>
											</tr>
											<tr align="center" style="text-align:center;">
											    <td width="10%"><IMG height=13 width=10 src="image/greendot.jpg"/></td>
											    <td style="margin:auto;" width="80%">2.2号习大大来我校视察</td>
											</tr>
											-->
											<!--新书上架-->
										 </table>
									 </div>
								 </td>
								 <!--左侧部分-->

								 <!--左右分隔条-->
								<TD width=1 background=image/Cen_separate.gif>&nbsp;</TD>

								<!--右侧部分-->
								<td width="58%" vAlign=top>
									<div style="text-align:center; margin-top: 35px">
										<table width="100%"  border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td width="100%" align="center"><br>
													<a href="teacher_add.jsp" style="font-size:25px;font-family:YouYuan;color:green">添加教师信息信息</a><br><br><br>
												</td>
											</tr>
										</table>

										<table width="80%"  border="0" cellpadding="0" cellspacing="0" style="margin:0 auto;" width=1 background=image/Cen_separate.gif>
										    <tr align="center">
											    <td width="10%">教师编号</td>
											    <td width="10%">教师名称</td>
											    <td width="10%">工龄</td>
											    <td width="10%">电话</td>
												<td width="10%">删除</td>
										    </tr>
											<!--迭代-->
											<s:iterator value="listteacher" var="teacher">
												<tr align="center">
													<!--进行修改点击跳转-->
													<td style="padding:15px;"><s:property value="#teacher.teacherid"/></td>
												  <td style="padding:15px;"><a style="text-decoration: none" href="teacher_FindById?teacherid=%{#teacher.teacherid}"><s:property value="#teacher.teachername"/></a></td>
												  <td style="padding:15px;"><s:property value="#teacher.workage"/></td>
												  <td style="padding:15px;"><s:property value="#teacher.tel"/></td>
													<td><s:a href="teacher_Delete?teacherid=%{#teacher.teacherid}">删除</s:a></td>
												</tr>
											</s:iterator>
										 </table>
									 </div>
								</td>
								<!--右侧部分-->
							</tr>
						</tr>
						<tr height="200px">
							
						</tr>
					</table>
				</div>
			</tr>

			<!--页面尾部-->
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
			<!--页面尾部-->
		</table>
	</div>
</body>
</html>