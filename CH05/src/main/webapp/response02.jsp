<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
	<p>This page refreshes every 5 secconds</p>
	<%!
		int pageCount = 0;
		void addCount(){
			pageCount ++;
		}
	%>
		<%
			addCount();
			response.setIntHeader("Refresh",5);
		%>
	<p><%= (new java.util.Date()) %></p>
	<p>refreshed : <%=pageCount %></p>	
</body>
</html>