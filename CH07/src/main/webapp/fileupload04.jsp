<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload</title>
</head>
<body>
	<form name="fileForm" method="post" enctype="multipart/form-data"
	action="fileupload04_process.jsp">
		<p> NAME : <input type="text" name="name"></p>
		<p> TITLE : <input type="text" name="subject"></p>
		<p> FILE : <input type="file" name="filename"></p>
		<p> <input type="submit" value="file upload"></p>
	</form>
</body>
</html>