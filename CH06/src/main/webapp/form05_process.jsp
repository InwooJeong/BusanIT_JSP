<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String sex = request.getParameter("sex");
		String[] hobby = request.getParameterValues("hobby"); 
		String comment = request.getParameter("comment");
	%>
	<p> ID : <%=id %></p>
	<p> PW : <%=pw %></p>
	<p> NAME : <%=name %></p>
	<p> PHONE : <%=phone1 %> - <%=phone2 %> - <%=phone3 %></p>
	<p> GENDER : <%=sex %></p>
	<p> HOBBY : <%
				if(hobby!=null){
					for(int i=0;i<hobby.length;i++){
						out.println(" " + hobby[i]);
					}
				}
				%></p>
	<p> COMMENT : <%=comment %></p> 
</body>
</html>