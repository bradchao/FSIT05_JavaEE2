<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Brad Big Company</h1>
<hr>
<%
	int a = 10, b = 3;
	out.println(a / b + "<br>");
	int lottery = (int)(Math.random()*49+1);
%>
樂透號碼: <% out.print(lottery); %><br>
樂透號碼: <%= lottery %><br>
<%= Calendar.getInstance().get(Calendar.HOUR_OF_DAY) %>

</body>
</html>