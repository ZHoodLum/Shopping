<%@ page language="java" import="java.util.*" pageEncoding="gb18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>UsersLogin</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
<meta charset="UTF-8">
  <link rel="stylesheet" type="text/css" href="css/bootstrap-3.3.4.css">
  <link rel="stylesheet" type="text/css" href="css/font-awesome.4.6.0.css">
  <link rel="stylesheet" href="css/btabs.css" type="text/css">
  <!--��½���� ����-->
  <link rel="stylesheet" type="text/css" media="all" href="css/login.css">
	<style type="text/css">
	div.menuSideBar { }
	div.menuSideBar li.nav-header { font-size: 14px; padding: 3px 15px; }
	div.menuSideBar .nav-list > li > a, div.menuSideBar .dropdown-menu li a { -webkit-border-radius: 0px; -moz-border-radius: 0px; -ms-border-radius: 0px; border-radius: 0px; }
	<!--��������ʽ-->
	.selectbox{ width: 200px; display: inline-block; overflow-x: hidden; height: 28px; line-height: 28px; font-size: 0;  background:#fff url(images/arrow.png) right center no-repeat; border: 1px solid #dcdbdb; vertical-align: middle;}
	.selectbox select{cursor: pointer; padding: 0 8px; height: 28px; line-height: 28px; font-size: 12px; width:100%; padding-right: 18%; background:none; border: none;}
	.selectbox select option{ padding:5px;}
	</style>

</head>
<body>
  <form name="form1" method="post" action="LoginServlet">
<div class="navs">
  <div class="nav_left">
    <a href="../main.html">��ʦ�칫��Ϣ��</a>
  </div>
</div>
<div class="content"/>
<div class="container"/>

    <div class="col-md-10" id="mainFrameTabs" style="padding : 0px;">

      <!-- Nav tabs -->
      <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active noclose"><a href="#bTabs_navTabsMainPage" data-toggle="tab" style="font-size: 16px;margin-top: 20px;margin-left: 80px;">��ӭ������½����</a></li>
      </ul>

      <!-- Tab panes -->
      <div class="tab-content">

        <div id="loginmodal"   style="overflow-y:auto;">

          <h1>��½���</h1>
          <!-- ��Ӧaction-->
          <form id="loginform" name="loginform" method="post" action="LoginServlet">

            <label for="username">�û���:</label>
            <!-- ��¼��-->
            <input type="text"name="userid" id="userid" value="153011" class="txtfield" tabindex="1">

            <label for="password">����:</label>
            <!--����-->
            <input type="password" name="upwd" value="111" id="password" class="txtfield" tabindex="2">

            <label>��½�����:</label>
            <div class="selectbox" style="margin-bottom: 20px;">
              <select>
                <option value="1" style="font-size: 16px;">��ʦ</option>
                <option value="3" style="font-size: 16px;">����Ա</option>
              </select>
            </div>

            <div class="center">
              <input type="submit" name="loginbtn" id="loginbtn" class="flatbtn-blu hidemodal" 
              value="��½" tabindex="3" onclick="return check(form1)">
              
              <input type="button" name="registerbtn" id="registerbtn" class="flatbtn-blu hidemodal"
               value="ע��" tabindex="3" onclick="document.location.href='register.jsp'">
            </div>
          </form>

        </div>
        </div>
      </div>
    </div>
  </div>
</div>
</form>
<script src="js/jquery-1.10.2.js"></script>
<script src="js/bootstrap-3.3.4.js"></script>
<script type="text/javascript" src="js/b.tabs.js" ></script>
<script type="text/javascript" src="js/demo.js" ></script>
</body>
</html>