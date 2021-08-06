<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<p>Today's date n time</p>
	<p><%=(new java.util.Date()).toLocaleString() %></p>
</body>
</html>