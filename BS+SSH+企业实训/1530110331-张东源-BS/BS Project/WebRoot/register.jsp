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
	        //��Ա�˺���֤  ��  (��ʼ)^[a-zA-Z](\w){1,9}$   ��������
	        var uname = document.myform.uname.value;
	        var exp = new RegExp(/^[a-zA-Z0-9](\w){1,5}$/);
	        if(!exp.test(uname)){
	            alert("��Ա�˺Ų���");
	            document.myform.uname.focus();//��궨λ
	            return false;//��ֹ���½���
	        }
	        
	        //����ʵ������У��   ^[\u4e00-\u9fa5]{2}$
	        var uname = document.myform.uname.value;
	        var exp = new RegExp(/^[\u4e00-\u9fa5]{2,}$/);
	        if(!exp.test(uname)){
	            alert("��������");
	            document.myform.uname.focus();//��궨λ
	            return false;//��ֹ���½���
	     
	        }
	    
	        //������֤ ^\d{3,}$ 
	        var pwd = document.myform.pwd.value;
	        var exp = new RegExp(/^\d{3,}$/);
	        if(!exp.test(pwd)){
	            alert("���벻��");
	            document.myform.pwd.focus();//��궨λ
	            return false;//��ֹ���½���
	     
	        }
	        //�ظ�����
	        var repwd = document.myform.repwd.value;
	        if(repwd!=pwd){
	            alert("���벻һ�²���");
	            document.myform.repwd.focus();//��궨λ
	            return false;//��ֹ���½���   
	        }
	        //Ȩ��  
	        var limit = document.myform.limit.value;
	        var exp = new RegExp(/^\d{1}$/);
	        if(!exp.test(limit)){
	            alert("�ֻ�����");
	            document.myform.limit.focus();//��궨λ
	            return false;//��ֹ���½���
	     
	        }
    }
    //onsubmit="return validate()"     onsubmit��ִ��return validate()�¼�  ��ִ��action
</script>
  -->
</head>
<body>
	    
  <div class="nav">
  <div class="nav_left">
    <a href="login.html">��ʦ��Ϣ��</a>
  </div>
  </div>
 	 <h2>��ӭע��</h2>
	<div id="main">
	  <ul>
	    <form id="myform" name="myform" action="RegisterServlet" method="post"  onsubmit="return validate()">
	           
	    <li class="first"><label>�˻�ID��</label>
	        <input name="userid"  class="txt" type="text" placeholder="��ĸ��ͷ����1-5λ���֡���ĸ���»������" />
	    </li>
	    <li><label>��ʵ������</label>
	        <input name="uname"  class="txt" placeholder="2λ��������" />
	    </li>
	    <li><label>��¼���룺</label>
	        <input name="pwd" type="password" class="txt" placeholder="3λ�����������" />
	     </li>
	     <!-- 
	     <li><label>�ظ����룺</label>
	        <input name="repwd" type="password" class="txt" placeholder="���¼������ͬ" />
	     </li> -->
	     <li><label>�û�Ȩ�ޣ�</label>
	        <input name="limit"  class="txt" placeholder="1" />
	     </li>
	     <li class="last">
	        <input name="sub"  type="submit" class="btn1" value="ע��" />&nbsp;&nbsp;&nbsp;&nbsp;
	        <input name="reset" type="reset" class="btn1" value="����" />
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