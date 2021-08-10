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
		action="fileupload01_process.jsp">
			<p> NAME1 : <input type="text" name="name1"></p>
			<p> TITLE1 : <input type="text" name="subject1"></p>
			<p> FILE1 : <input type="file" name="filename1"></p>
			
			<p> NAME2 : <input type="text" name="name2"></p>
			<p> TITLE2 : <input type="text" name="subject2"></p>
			<p> FILE2 : <input type="file" name="filename2"></p>
			
			<p> NAME3 : <input type="text" name="name3"></p>
			<p> TITLE3 : <input type="text" name="subject3"></p>
			<p> FILE3 : <input type="file" name="filename3"></p>
			
			<p><input type="submit" value="File Upload"></p>
	</form>
</body>
</html>