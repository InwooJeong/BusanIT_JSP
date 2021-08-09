<%@page import="java.util.*, java.io.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>Requested Parameter Name</th>
			<th>Requested Parameter Value</th>
		</tr>
		<%
			request.setCharacterEncoding("utf-8");
			
			Enumeration paramNames = request.getParameterNames();
			while(paramNames.hasMoreElements()){
				String name=(String)paramNames.nextElement();
				out.print("<tr><td>" + name + "</td>\n");
				String paramValue=request.getParameter(name);
				out.println("<td>" + paramValue + " </td></tr>\n");
			}
		%>
	</table>
</body>
</html>