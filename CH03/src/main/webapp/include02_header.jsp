<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	int pageCount = 0;
	void addCount(){
		pageCount++;
	}
%>
<%
	addCount();
%>
<p>
	Ur <%=pageCount %>th visit in this site!!
</p>