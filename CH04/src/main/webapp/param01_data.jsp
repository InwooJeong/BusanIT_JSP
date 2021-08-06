<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<p> ID : <%=request.getParameter("id") %></p>
		<%
			String name=request.getParameter("name");
		%>
	<p> NAME : <%=java.net.URLDecoder.decode(name) %></p>	
</body>
</html>