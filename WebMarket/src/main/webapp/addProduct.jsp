<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet"
	href = "./resources/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Add Product</title>
</head>
<body>
	<fmt:setLocale value='<%=request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message">
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"><fmt:message key="title"/></h1>
		</div>
	</div>
	<div class="container">
		<div class="text-right">
			<a href="?language=ko">Korean</a>|<a href="?language=en">English</a>
		</div>
		<form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal"
			  method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">Product Code</label>
				<div class="col-sm-3">
					<input type="text" name="productId" id="productId" class="form-control">
				</div>
			</div>	  
			<div class="form-group row">
				<label class="col-sm-2">Product Name</label>
				<div class="col-sm-3">
					<input type="text" name="name" id="name" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">Price</label>
				<div class="col-sm-3">
					<input type="text" name="unitPrice" id="unitPrice" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">Detail</label>
				<div class="col-sm-5">
					<textarea name="description" cols="50" rows="2"
					 class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">Company</label>
				<div class="col-sm-3">
					<input type="text" name="manufacturer" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">Category</label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">Stocks</label>
				<div class="col-sm-3">
					<input type="text" name="unitsInStock" id="unitsInStock" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">Condition</label>
				<div class="col-sm-5">
					<input type="radio" name="condition" value="New">New
					<input type="radio" name="condition" value="Old">Used
					<input type="radio" name="condition" value="Refurbished">Refurbished
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">Image</label>
				<div class="col-sm-5">
					<input type="file" name="productImage" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="button" class="btn btn-primary" value="add"
					onclick="CheckAddProduct()">
				</div>
			</div>
		</form>
	</div>
	<footer>
		<script type="text/javascript" src="./resources/js/validation.js">
		</script>
	</footer>
	</fmt:bundle>
</body>
</html>