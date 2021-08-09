<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
	<p> Client IP : <%=request.getRemoteAddr() %></p>
	<p> Request Info Length : <%=request.getContentLength() %></p>
	<p> Request Info Encoding : <%=request.getCharacterEncoding() %></p>
	<p> Request Info Content Type : <%=request.getContentType() %></p>
	<p> Request Info Protocol : <%=request.getProtocol() %></p>
	<p> Request Info Method : <%=request.getMethod() %></p>
	<p> Requested URI : <%=request.getRequestURI() %></p>
	<p> Context Path : <%=request.getContextPath() %></p>
	<p> Server Name : <%=request.getServerName() %></p>
	<p> Server Port : <%=request.getServerPort() %></p>
	<p> Query : <%=request.getQueryString() %></p>	
</body>
</html>