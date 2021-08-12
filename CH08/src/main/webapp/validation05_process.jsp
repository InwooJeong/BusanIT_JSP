<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation</title>
</head>
<body>
	<h3>Success!</h3>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<p> ID : <%=request.getParameter("id") %></p>
	<p> PW : <%=request.getParameter("passwd") %></p>
	<p> NAME : <%=request.getParameter("name") %>
	<p> PHONE : <%=request.getParameter("phone1") %>-
				<%=request.getParameter("phone2") %>-
				<%=request.getParameter("phone3") %>
	<p>EMAIL : <%=request.getParameter("email") %>			
</body>
</html>