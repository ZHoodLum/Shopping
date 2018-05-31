<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ctype.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

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
			<s:form theme="simple"  action="ctypeAdd" method="post" >
				<div class="control-group">
					<label class="control-label" for="inputEmail">商品类别编号</label>
					<div class="controls">
						<s:textfield  name=" ctypeVo.ctypeno" label="商品类别编号" /> 
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputPassword">商品类别名称</label>
					<div class="controls">
						<s:textfield  name=" ctypeVo.ctypename" label="商品类别名称" /> 
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						          <s:submit value="添加"/><s:reset  value="重置"/>
					</div>
				</div>
			</s:form>
		</div>
	</div>
</div>
</body>
  <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
</html>

