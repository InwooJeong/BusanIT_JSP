<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dto.Product" %>
<!DOCTYPE html>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<html>
<head>
<link rel = "stylesheet"
	href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Product Detail</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">Product Information</h1>
		</div>
	</div>
	<%
		String id=request.getParameter("id");
		Product product = productDAO.getProductById(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3><%=product.getPname() %></h3>
				<p><%=product.getDesciption() %></p>
				<p><b>Product Code : </b><span class="badge badge-danger">
					<%=product.getProductId() %></span></p>
				<p><b>Company : </b><%=product.getManufacturer() %></p>
				<p><b>Category : </b><%=product.getCategory() %></p>
				<p><b>Stocks : </b><%=product.getUnitsInStock() %></p>
				<h4><%=product.getUnitPrice() %> KRW</h4>
				<p><a href="#" class="btn btn-info">ORDER NOW! &raquo;</a>
				   <a href="./products.jsp" class="btn btn-secondary">Products List &raquo;</a></p>	
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>