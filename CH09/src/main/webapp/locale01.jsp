<%@page import="java.util.*"%>
<%@page import="java.text.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Internationalization</title>
</head>
<body>
	<h3>Locale Info</h3>
	<%
		Locale locale = request.getLocale();
		Date currentDate = new Date();
		DateFormat dateFormat = DateFormat.getDateInstance(DateFormat.FULL,locale);
		NumberFormat numberFormat = NumberFormat.getNumberInstance(locale);
	%>
	<p>Nation : <%=locale.getDisplayCountry() %></p>
	<p>Date : <%=dateFormat.format(currentDate) %></p>
	<p>Num (12345.67) : <%=numberFormat.format(12345.67) %></p>
</body>
</html>