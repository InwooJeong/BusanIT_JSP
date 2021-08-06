<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="person" class="com.dao.Person" scope="request"/>
	<p>ID : <%=person.getId() %></p>
	<p>NAME : <%=person.getName() %></p>
		<%
			person.setId(20182005);
			person.setName("Gildong Hong");
		%>
		<jsp:include page="useBean03.jsp"/>
	
</body>
</html>