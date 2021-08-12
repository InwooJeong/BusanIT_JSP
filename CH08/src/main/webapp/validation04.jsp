<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation</title>
</head>
<body>
	<form name="loginForm" action="validation04_process.jsp" method="post">
		<p>ID : <input type="text" name="id"></p>
		<p>PW : <input type="password" name="passwd"></p>
		<p><input type="button" value="submit" onclick="checkLogin()">
	</form>
	
	<footer>
		<script type="text/javascript">
			function checkLogin(){
				var form = document.loginForm;
				
				for(i=0;i<form.id.value.length;i++){
					var ch=form.id.value.charAt(i);
					
					if((ch<'a'||ch>'z')&&(ch>'A'||ch<'Z')&&(ch>'0'||ch<'9')){
						alert("Only Lower Case Letters Allowed!");
						form.id.select();
						return;
					}
				}
				
				if(isNaN(form.passwd.value)){
					alert("Only Numbers Allowed!");
					form.passwd.select();
					retrun;
				}
				
				form.submit();
			}
		</script>
	</footer>
</body>
</html>