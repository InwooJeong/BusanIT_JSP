<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="bean" class="com.dao.Calculator"/>
	<%
		int m = bean.process(5);
		out.print("three squares of 5");
	%>
</body>
</html>