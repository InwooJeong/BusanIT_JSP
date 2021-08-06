<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<h3>param action tag</h3>
	<jsp:forward page="param01_data.jsp">
		<jsp:param value="admin" name="id"/>
		<jsp:param name="name" value='<%=java.net.URLEncoder.encode("Admin") %>'/>
	</jsp:forward>
	<p>Java Server Page</p>	
</body>
</html>