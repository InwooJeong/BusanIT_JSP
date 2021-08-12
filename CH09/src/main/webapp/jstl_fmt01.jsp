<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Internationalization</title>
</head>
<body>
	<p>-----------------------------------</p>
		<fmt:setBundle basename="com.bundle.myBundle" var="resourceBundle"/>
	<p>	title : <fmt:message key="title" bundle="${resourceBundle }"/></p>
	<p><fmt:message key="username" var="userMsg" bundle="${resourceBundle }"/>
		name : ${userMsg }</p>
	
	<p>-----------------------------------</p>
		<fmt:setLocale value="en"/>
		<fmt:setBundle basename="com.bundle.myBundle" var="resourceBundle"/>
	<p> title : <fmt:message key="title" bundle="${resourceBundle }"/></p>
	<p> name : <fmt:message key="username" bundle="${resourceBundle}"/></p> 
</body>
</html>