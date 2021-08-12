<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation</title>
</head>
<body>
	<h3>Sign Up</h3>
	<form action="validation05_process.jsp" name="Member" method="post">
		<p>ID : <input type="text" name="id"></p>
		<p>PW : <input type="password" name="passwd"></p>
		<p>NAME : <input type="text" name="name"></p>
		<p>PHONE : <select name="phone1">
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="019">019</option>
				   </select>
				   -<input type="text" maxlength="4" size="4" name="phone2">
				   -<input type="text" maxlength="4" size="4" name="phone3">
		<p>EMAIL : <input type="text" name="email"></p>
		<p><input type="button" value="sign up" onclick="checkMember();"></p>		   
	</form>
	
	<footer>
		<script type="text/javascript">
		
			function checkMember(){
				var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
				var regExpName = /^[가-힣]*$/;
				var regExpPasswd = /^[0-9]*$/;
				var regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/;
				var regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
				
				var form = document.Member;
				
				var id = form.id.value;
				var name = form.name.value;
				var passwd = form.passwd.value;
				var phone = form.phone1.value+"-"+form.phone2.value+"-"+form.phone3.value;
				var email = form.email.value;
				
				if(!regExpId.test(id)){
					alert("Start with letter!");
					form.id.select();
					return;
				}
				
				if(!regExpName.test(name)){
					alert("Use Korean!");
					return;
				}
				
				if(!regExpPasswd.test(passwd)){
					alert("Use Number!");
					return;
				}
				
				if(!regExpPhone.test(phone)){
					alert("Check ur number!");
					return;
				}
				
				if(!regExpEmail.test(email)){
					alert("Check ur email address!");
					return;
				}
				
				form.submit();
				
			}
		</script>	
	</footer>
</body>
</html>