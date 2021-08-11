<%@page import="db.beans.*" %>
<%@page import="java.io.File"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Locale"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.oreilly.servlet.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Image File Upload</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String contentType = request.getContentType();
		
		if((contentType==null)||(contentType.indexOf("multipart/form-data")==-1)){
			throw new Exception("ContentType is Not multipart/form-data.");
		}
		
		String uploadDir = getServletContext().getRealPath("/") + "upload";
		
		out.println("Upload Server Path : " + uploadDir);
		
		int maxSize = 100*1024*1024;
		
		MultipartRequest mRequest = new MultipartRequest(request, uploadDir, maxSize,
				"utf-08",new DefaultFileRenamePolicy());
		
		String imgText = mRequest.getParameter("imgText");
		String fileName = mRequest.getOriginalFileName("file1");
		long fileSize = mRequest.getFile("file1").length();
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.KOREA);
		Date currentTime = new Date();
		String dTime = formatter.format(currentTime);
		
		String[] f_name_arr = fileName.split("\\.");
		String f_end = f_name_arr[1];
		
		String strOldFile = uploadDir + "\\" + fileName;
		String strNewFile = uploadDir + "\\" + dTime + "." + f_end;
		
		File oldFile = new File(strOldFile);
		File newFile = new File(strNewFile);
		
		try{
			if(newFile.exists()){
				newFile.delete();
			}
			oldFile.renameTo(newFile);
		}catch(Exception e){
			out.println(e.toString());
		}
	%>
	
	<div id = div_popup style="position: absolute;" left:0px; top:20px; width:500px">
		<table align="center" border="0" width="500" cellpadding="0" cellspacing="1">
			<tr height="40">
				<td colspan="3" align="center"><b>Upload Result</b></td>
			</tr>
			<tr height="70">
				<td width="500" colspan="2" align="center"><%=fileName %>==><br>
				<%=strNewFile %><br>(<%=fileSize %> byte) File uploaded</td>
			</tr>
			<tr height="35">
				<td width="400">&nbsp;</td>
				<td width="100"><input type="button" value="OK" onClick="javascript:window.close()"></td>
			</tr>
		</table>
	</div>
</body>
</html>