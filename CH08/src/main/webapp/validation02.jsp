<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation</title>
</head>
<body>
	<form name="loginForm" action="validation02_process.jsp" method="post">
		<p> ID : <input type="text" name="id"></p>
		<p> PW : <input type="password" name="passwd"></p>
		<p> <input type="button" value="submit" onclick="checkLogin()">
	</form>
	
	<footer>
		<script type="text/javascript">
			function checkLogin(){
				var form = document.loginForm;
				
				if(form.id.value==""){
					alert("check ur id!");
					form.id.focus();
					return false;
				}else if(form.passwd.value==""){
					alert("check ur Password!");
					form.passwd.focus();
					return false;
				}
				form.submit();
			}
		</script>
	</footer>
</body>
</html>