<%@ page language="java" import="java.util.*" pageEncoding="gb18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main-1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/main.css" rel="stylesheet">
  </head>
  
  <body>
  <!--  
   <table width="100%" height="100%">
  <tr>
    <td align="center" bgcolor="#FFFFFF">
    <p>暂时没有公告！</p>
    </td>
  </tr>
</table>-->

<!--********************************************************************界面正文************************************************************************************************-->
	<!--招聘信息-->
	<div>
		<form name="meya" action="***">
			<div id="recruitinformation">
				<img id="login">
				<span class="title_login1">
				<table width="100%" border="0" cellpadding="0" cellspacing="0" style="table-layout: fixed">
					<tr align="center" style="background: #b7b7b7;">
						<td width="6px" height="40px" style="padding:10px;">信息编号</td>
						<td width="6px"  style="padding:10px;">信息名称</td>
						<td width="6px"  style="padding:10px;">发布时间</td>
						<td width="6px"  style="padding:10px;">查看详情</td>
					</tr>
					<tr align="center" style="padding:10px;">
						<td style="padding:15px;">1</td>
						<td style="padding:15px;">高级架构师、总管、java开发师、前端设计师</td>
						<td style="padding:15px;">2018-1-6</td>
						<td style="padding:15px;">
							<div class="theme-buy">
								<a class="btn btn-large theme-login" href="index.html">查看详情</a>
							</div>
						</td>
					</tr>
					<tr align="center" style="padding:10px;">
						<td style="padding:15px;">2</td>
						<td style="padding:15px;">高级架构师、总管、java开发师、前端设计师</td>
						<td style="padding:15px;">2018-1-6</td>
						<td style="padding:15px;">
							<div class="theme-buy">
								<a class="btn btn-large theme-login" href="index.html">查看详情</a>
							</div>
						</td>
					</tr>
					<tr align="center" style="padding:10px;">
						<td style="padding:15px;">3</td>
						<td style="padding:15px;">高级架构师、总管、java开发师、前端设计师</td>
						<td style="padding:15px;">2018-1-6</td>
						<td style="padding:15px;">
							<div class="theme-buy">
								<a class="btn btn-large theme-login" href="index.html">查看详情</a>
							</div>
						</td>
					</tr>
					<tr align="center" style="padding:10px;">
						<td style="padding:15px;">4</td>
						<td style="padding:15px;">高级架构师、总管、java开发师、前端设计师</td>
						<td style="padding:15px;">2018-1-6</td>
						<td style="padding:15px;">
							<div class="theme-buy">
								<a class="btn btn-large theme-login" href="index.html">查看详情</a>
							</div>
						</td>
					</tr>
					<tr align="center" style="padding:10px;">
						<td style="padding:15px;">5</td>
						<td style="padding:15px;">高级架构师、总管、java开发师、前端设计师</td>
						<td style="padding:15px;">2018-1-6</td>
						<td style="padding:15px;">
							<div class="theme-buy">
								<a class="btn btn-large theme-login" href="index.html">查看详情</a>
							</div>
						</td>
					</tr>
					<tr align="center" style="padding:10px;">
						<td style="padding:15px;">6</td>
						<td style="padding:15px;">高级架构师、总管、java开发师、前端设计师</td>
						<td style="padding:15px;">2018-1-6</td>
						<td style="padding:15px;">
							<div class="theme-buy">
								<a class="btn btn-large theme-login" href="index.html">查看详情</a>
							</div>
						</td>
					</tr>
				</table>
				</span>
			</div>
		</form>
	</div>
	
  </body>
</html>
