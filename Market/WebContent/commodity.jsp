<%@ page language="java" import="java.util.*" pageEncoding="gb18030"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'commodity.jsp' starting page</title>
    
	 <meta charset="gb18030">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Bootstrap 3, from LayoutIt!</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    
	  <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>

  </head>
  
  <body>
    <div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<h2>
				超市管理系统
			</h2>
			<!-- 导航栏部分 -->
			<ul class="nav nav-tabs">
				<li>
					<s:a href="ctypeSelect">商品类别管理</s:a>
				</li>
				<li class="active">
					<a href="#">商品信息管理</a>
				</li>
				<li class="disabled">
					<a href="#">供应商管理</a>
				</li>
				<li class="dropdown pull-right">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">下拉</a>
					<ul class="dropdown-menu">
						<li>
							<a href="#">操作</a>
						</li>
						<li>
							<a href="#">设置栏目</a>
						</li>
						<li>
							<a href="#">更多设置</a>
						</li>
						<li class="divider">
						</li>
						<li>
							<a href="#">分割线</a>
						</li>
					</ul>
				</li>
			</ul>

		<!-- 表格部分 -->
			<table class="table">
				<thead>
					<tr>
						<th>
						    商品编号
						</th>
						<th>
							商品名称
						</th>
						<th>
							商品数量
						</th>
							<th>
							商品价格
						</th>
							<th>
							商品类型
						</th>
							<th>
							仓库号
						</th>
						<th>修改&nbsp;|&nbsp;删除</th>
					</tr>
				</thead>
				<tbody>
				<s:iterator value="listCommodity" var="c">
					<tr>
						<td>
							<s:property value="#c.cno"/>
						</td>
						<td>
							<s:property value="#c.cname"/>
						</td>
							<td>
							<s:property value="#c.cnum"/>
						</td>
							<td>
							<s:property value="#c.cmoney"/>
						</td>
						<td>
							<s:property value="#c.ctypename"/>
						</td>
							<td>
							<s:property value="#c.wname"/>
						</td>
							<td>
							<a href="*#">修改</a>&nbsp;|&nbsp;<a herf src="#">删除</a>
						</td>
					</tr>
					</s:iterator>
				</tbody>
			</table>
		</div>
	</div>
</div>
  </body>
</html>
