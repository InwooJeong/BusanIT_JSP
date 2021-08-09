<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>
	<h3>Sign Up</h3>
	<form action="#" name="member" method="post">
		<p> ID : <input type="text" name="id"> <input type="button"
				 value="duplicate Check"></p>
		<p> PW : <input type="password" name="pw"></p>
		<p> NAME : <input type="text" name="name"></p>
		<p> CP : <select name="phone1">
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="019">019</option>
				 </select>
			-    <input type="tel" maxlength="4" size="4" name="phone2">
			- 	 <input type="tel" maxlength="4" size="4" name="phone3"></p>
		<p> GENDER : <input type="radio" name="sex" value="m" checked>Male
					 <input type="radio" name="sex" value="f">Female</p>
		<p> HOBBY : Reading <input type="checkbox" name="hobby1" checked>
					Work Out <input type="checkbox" name="hobby2">
					Movie <input type="checkbox" name="hobby3"></p>
		<p> <input type="submit" value="sign up">
			<input type="reset" value="reset"></p>			 			 
	</form>
</body>
</html>