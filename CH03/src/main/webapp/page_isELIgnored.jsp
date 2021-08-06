<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page isELIgnored="true" %>
<!DOCTYPE html>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<%
		request.setAttribute("RequestAttribute", "request includes object");
	%>
	${requestScope.RequestAttribute }
</body>
</html>