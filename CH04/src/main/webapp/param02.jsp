<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<h3>param action tag</h3>
	<jsp:include page="param02_data.jsp">
		<jsp:param value='<%= java.net.URLEncoder.encode("today's date n time","UTF-8") %>' 
		 name="title" />
		<jsp:param name="date" value="<%=java.util.Calendar.getInstance().getTime() %>"/> 
	</jsp:include>	
</body>
</html>