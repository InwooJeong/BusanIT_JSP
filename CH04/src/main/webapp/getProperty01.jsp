<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="person" class="com.dao.Person" scope="request"/>
	<p> ID : <jsp:getProperty name="person" property="id"/></p>
	<p>NAME : <jsp:getProperty name="person" property="name"/></p>
</body>
</html>