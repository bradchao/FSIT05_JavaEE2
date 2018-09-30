<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Enumeration<String> keys = request.getHeaderNames();
	while (keys.hasMoreElements()){
		String key = keys.nextElement();
		out.println(key + ":" + request.getHeader(key) + "<br>");
	}
%>    
<hr>
Hello, World
<hr>
<%= (int)(Math.random()*49+1)%>