<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Security</title>
</head>
<body>
	<p>ID : <%=request.getRemoteUser() %></p>
	<p>Method : <%=request.getAuthType() %></p>
	<p>included in "tomcat"?
		<%=request.isUserInRole("tomcat") %></p>
	<p>included in "role1"?
		<%=request.isUserInRole("role1") %></p>	
</body>
</html>