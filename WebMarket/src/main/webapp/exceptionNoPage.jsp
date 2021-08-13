<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<meta charset="UTF-8">
<title>Page Error</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h2 class="alert alert-danger">Can not find the page!</h2>
		</div>
	</div>
	<div class="container">
		<p><%=request.getRequestURL() %></p>
		<p><a href="products.jsp" class="btn btn-secondary">Product List &raquo;</a>
	</div>
</body>
</html>