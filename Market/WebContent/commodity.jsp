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
				���й���ϵͳ
			</h2>
			<!-- ���������� -->
			<ul class="nav nav-tabs">
				<li>
					<s:a href="ctypeSelect">��Ʒ������</s:a>
				</li>
				<li class="active">
					<a href="#">��Ʒ��Ϣ����</a>
				</li>
				<li class="disabled">
					<a href="#">��Ӧ�̹���</a>
				</li>
				<li class="dropdown pull-right">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">����</a>
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

		<!-- ��񲿷� -->
			<table class="table">
				<thead>
					<tr>
						<th>
						    ��Ʒ���
						</th>
						<th>
							��Ʒ����
						</th>
						<th>
							��Ʒ����
						</th>
							<th>
							��Ʒ�۸�
						</th>
							<th>
							��Ʒ����
						</th>
							<th>
							�ֿ��
						</th>
						<th>�޸�&nbsp;|&nbsp;ɾ��</th>
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
							<a href="*#">�޸�</a>&nbsp;|&nbsp;<a herf src="#">ɾ��</a>
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
