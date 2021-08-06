<%@ page  contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="date" class="java.util.Date"/>
	<p><%
			out.print("Today's date n time");
		%></p>
	<p><%=date %></p>	
</body>
</html>