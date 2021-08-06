<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="person" class="com.dao.Person"/>
	<jsp:setProperty property="id" name="person" value="20182005"/>
	<jsp:setProperty property="name" name="person" value="Gildong Hong"/>
	<p> ID : <jsp:getProperty property="id" name="person"/></p>
	<p> NAME : <jsp:getProperty property="name" name="person"/></p>
</body>
</html>