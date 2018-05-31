<%@ page language="java" import="java.util.*" pageEncoding="GB18030" contentType="text/html; charset=gb18030"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ctype.jsp' starting page</title>
    
	 <meta charset="gb18030">
	 <meta http-equiv="Content-Type" content="text/html charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Bootstrap 3, from LayoutIt!</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

  </head>
  <div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<h2>
				超市管理系统
			</h2>
			<ul class="nav nav-tabs">
					<li class="active">
					<a href="ctype.jsp">商品类别管理</a>
				</li>
				<li >
					<s:a href="commoditySelect">商品信息管理</s:a>
				</li>
				<li class="disabled">
					<a href="#">供应商管理</a>
				</li>
				<li class="dropdown pull-right">
					 <a href="#" data-toggle="dropdown" class="dropdown-toggle">下拉<strong class="caret"></strong></a>
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
			<br>
			&nbsp;<a href="ctype_add.jsp">商品类别添加</a>
			<br>
			<table class="table">
				<thead>
					<tr>
						<th>
						    商品类型编号
						</th>
						<th>
							商品类型名称
						</th>
						<th>修改&nbsp;|&nbsp;删除</th>
					</tr>
				</thead>
				<tbody>
				<s:iterator value="listctype" var="ct">
					<tr>
						<td>
							<s:property value="#ct.ctypeno"/>
						</td>
						<td>
							<s:property value="#ct.ctypename"/>
						</td>
							<td>
							<s:a href="CTFindById?ctypeno=%{#ct.ctypeno}">修改</s:a>&nbsp;|&nbsp;
							<s:a href="CTDelete?ctypeno=%{#ct.ctypeno}">删除</s:a>
						</td>
					</tr>
					</s:iterator>
				</tbody>
			</table>
		</div>
	</div>
</div>
</body>
  <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
</html>
