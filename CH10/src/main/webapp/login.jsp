<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Security</title>
</head>
<body>
	<form name="loginForm" action="j_security_check" method="post">
		<p>ID : <input type="text" name="j_username"></p>
		<p>PW : <input type="password" name="j_password"></p>
		<p><input type="submit" value="submit"></p>
	</form>
</body>
</html>