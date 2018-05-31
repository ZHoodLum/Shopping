function mySubmit(){
	var userName = document.getElementById("username").value;
	var password = document.getElementById("pwd").value;
	
	if(userName == ""){
		alert("用户名不能为空！");
	}else{
		if(password == ""){
			alert("密码不能为空！");
		}else{
			document.form1.action="login";
			document.form1.submit();
		}
	}
}