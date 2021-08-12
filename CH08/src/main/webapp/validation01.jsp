<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation</title>
</head>
<body>
	<form name="loginForm">
		<p> ID : <input type="text" name="id"></p>
		<p> PW : <input type="password" name="passwd"></p>
		<p><input type="submit" value="submit" onclick="checkform()"></p>
	</form>
	
	<footer>
		<script type="text/javascript">
			function checkform(){
				alert("ID : " + document.loginForm.id.value + "\n" + 
						"PW : " + document.loginForm.passwd.value);
			}
		</script>
	</footer>
</body>
</html>