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
	<jsp:setProperty property="id" name="person" value="20182005"/>
	<jsp:setProperty property="name" name="person" value="Gildong"/>
	<p> ID : <%out.println(person.getId()); %></p>
	<p> NAME : <%out.println(person.getName()); %>
</body>
</html>