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
				���й���ϵͳ
			</h2>
			<ul class="nav nav-tabs">
					<li class="active">
					<a href="ctype.jsp">��Ʒ������</a>
				</li>
				<li >
					<s:a href="commoditySelect">��Ʒ��Ϣ����</s:a>
				</li>
				<li class="disabled">
					<a href="#">��Ӧ�̹���</a>
				</li>
				<li class="dropdown pull-right">
					 <a href="#" data-toggle="dropdown" class="dropdown-toggle">����<strong class="caret"></strong></a>
					<ul class="dropdown-menu">
						<li>
							<a href="#">����</a>
						</li>
						<li>
							<a href="#">������Ŀ</a>
						</li>
						<li>
							<a href="#">��������</a>
						</li>
						<li class="divider">
						</li>
						<li>
							<a href="#">�ָ���</a>
						</li>
					</ul>
				</li>
			</ul>
			<br>
			&nbsp;<a href="ctype_add.jsp">��Ʒ������</a>
			<br>
			<table class="table">
				<thead>
					<tr>
						<th>
						    ��Ʒ���ͱ��
						</th>
						<th>
							��Ʒ��������
						</th>
						<th>�޸�&nbsp;|&nbsp;ɾ��</th>
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
							<s:a href="CTFindById?ctypeno=%{#ct.ctypeno}">�޸�</s:a>&nbsp;|&nbsp;
							<s:a href="CTDelete?ctypeno=%{#ct.ctypeno}">ɾ��</s:a>
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
