<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
	<%
		out.println("Today's date n time : " + "<br>");
		out.println(java.util.Calendar.getInstance().getTime());
	%>
</body>
</html>