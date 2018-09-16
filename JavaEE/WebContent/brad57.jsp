<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- JSTL  -->
<jsp:directive.page import="tw.brad.beans.Member" />
<%
	Member member = new Member("007","OK");
%>
<jsp:declaration>
	int i;
	String name;
</jsp:declaration>

<jsp:scriptlet>
	i = 10;
	name = "III";
</jsp:scriptlet>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Welcome, <%= member.getName() %>
<hr>
Member = <jsp:expression>member</jsp:expression>
<hr>
i = <jsp:expression>i</jsp:expression>
<hr>
name = <jsp:expression>name</jsp:expression>

</body>
</html>