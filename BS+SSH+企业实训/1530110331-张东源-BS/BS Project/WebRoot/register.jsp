<%@ page import="java.util.*,vo.*" language="java" contentType="text/html; charset=gb18030"
    pageEncoding="gb18030"%>
<%@page import="factory.DAOFactory"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb18030">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="CSS/login.css">
<!--
<script language="javascript">
	function validate(){
	        //会员账号验证  以  (开始)^[a-zA-Z](\w){1,9}$   （结束）
	        var uname = document.myform.uname.value;
	        var exp = new RegExp(/^[a-zA-Z0-9](\w){1,5}$/);
	        if(!exp.test(uname)){
	            alert("会员账号不符");
	            document.myform.uname.focus();//光标定位
	            return false;//防止向下进行
	        }
	        
	        //对真实姓名的校验   ^[\u4e00-\u9fa5]{2}$
	        var uname = document.myform.uname.value;
	        var exp = new RegExp(/^[\u4e00-\u9fa5]{2,}$/);
	        if(!exp.test(uname)){
	            alert("姓名不符");
	            document.myform.uname.focus();//光标定位
	            return false;//防止向下进行
	     
	        }
	    
	        //密码验证 ^\d{3,}$ 
	        var pwd = document.myform.pwd.value;
	        var exp = new RegExp(/^\d{3,}$/);
	        if(!exp.test(pwd)){
	            alert("密码不符");
	            document.myform.pwd.focus();//光标定位
	            return false;//防止向下进行
	     
	        }
	        //重复密码
	        var repwd = document.myform.repwd.value;
	        if(repwd!=pwd){
	            alert("密码不一致不符");
	            document.myform.repwd.focus();//光标定位
	            return false;//防止向下进行   
	        }
	        //权限  
	        var limit = document.myform.limit.value;
	        var exp = new RegExp(/^\d{1}$/);
	        if(!exp.test(limit)){
	            alert("手机不符");
	            document.myform.limit.focus();//光标定位
	            return false;//防止向下进行
	     
	        }
    }
    //onsubmit="return validate()"     onsubmit先执行return validate()事件  在执行action
</script>
  -->
</head>
<body>
	    
  <div class="nav">
  <div class="nav_left">
    <a href="login.html">教师信息网</a>
  </div>
  </div>
 	 <h2>欢迎注册</h2>
	<div id="main">
	  <ul>
	    <form id="myform" name="myform" action="RegisterServlet" method="post"  onsubmit="return validate()">
	           
	    <li class="first"><label>账户ID：</label>
	        <input name="userid"  class="txt" type="text" placeholder="字母开头，由1-5位数字、字母和下划线组成" />
	    </li>
	    <li><label>真实姓名：</label>
	        <input name="uname"  class="txt" placeholder="2位以上中文" />
	    </li>
	    <li><label>登录密码：</label>
	        <input name="pwd" type="password" class="txt" placeholder="3位以上数字组成" />
	     </li>
	     <!-- 
	     <li><label>重复密码：</label>
	        <input name="repwd" type="password" class="txt" placeholder="与登录密码相同" />
	     </li> -->
	     <li><label>用户权限：</label>
	        <input name="limit"  class="txt" placeholder="1" />
	     </li>
	     <li class="last">
	        <input name="sub"  type="submit" class="btn1" value="注册" />&nbsp;&nbsp;&nbsp;&nbsp;
	        <input name="reset" type="reset" class="btn1" value="重置" />
	      </li>
	    </form>
	  </ul>
	  
	  <div id="footer">
		<ul>
			<li>
				CopyRight &copy; 2008 www.zbaccp.com 
			</li>
		</ul>
	</div>
	
	</div>
</body>
</html>