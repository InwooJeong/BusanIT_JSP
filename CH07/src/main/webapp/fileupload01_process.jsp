<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload Pro</title>
</head>
<body>
	<%
		MultipartRequest multi = new MultipartRequest(request, "C:\\upload",
			5 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());
		
		Enumeration params = multi.getParameterNames();
		
		while(params.hasMoreElements()){
			String name=(String)params.nextElement();
			String value=multi.getParameter(name);
			out.println(name + " = " + value + "<br>");
		}
		
		out.println("---------------------------------<br>");
		
		Enumeration files = multi.getFileNames();
		
		while(files.hasMoreElements()){
			String name= (String) files.nextElement();
			String filename=multi.getFilesystemName(name);
			String original=multi.getOriginalFileName(name);
			String type=multi.getContentType(name);
			File file=multi.getFile(name);
			
			out.println("Requested Parameter name : " + name + "<br>");
			out.println("Ori File Title : " + original + "<br>");
			out.println("Saved File Title : " + filename + "<br>");
			out.println("Contents Type : " + type + "<br>");
			
			if(file != null){
				out.println("File Size : " + file.length());
				out.println("<br>");
			}
		}
	%>
</body>
</html>