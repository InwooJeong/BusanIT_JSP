<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation</title>
</head>
<body>
	<form name="loginForm" action="validation03_process.jsp" method="post">
		<p>ID : <input type="text" name="id"></p>
		<p>PW : <input type="password" name="passwd"></p>
		<p><input type="button" value="submit" onclick="checkLogin()"></p>
	</form>
	
	<footer>
		<script type="text/javascript">
			function checkLogin(){
				var form = document.loginForm;
				
				if(form.id.value.length<4 || form.id.value.length>12){
					alert("ID must in 4~12 letters!!!!");
					form.id.select();
					return;
				}
				
				if(form.passwd.value.length<4){
					alert("PW must at least 4!!");
					form.passwd.select();
					return;
				}
				form.submit();
			}
		</script>
	</footer>
</body>
</html>