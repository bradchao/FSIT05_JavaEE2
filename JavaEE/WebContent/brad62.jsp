<%@page import="tw.brad.beans.BradAPIs"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] names = {"brad","eric","john","mary"};
	request.setAttribute("usernames", names);

	LinkedList<String> list = new LinkedList<>();
	list.add("AAA");list.add("BBB");list.add("CCC");
	request.setAttribute("list", list);
	
	HashMap<String,String> map = new HashMap<>();
	map.put("name", "Brad");
	map.put("gender", "male");
	map.put("age", "53");
	request.setAttribute("map", map);
	
	pageContext.setAttribute("var1", 111);
	request.setAttribute("var1", 222);
	session.setAttribute("var1", 333);
	application.setAttribute("var1", 444);
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Username 1: ${usernames[0] }<br>
Username 2: ${usernames[1] }<br>
List 1: ${list[param.i] }<br>
Map name: ${map[param.key] }<br>
Map age: ${map.age }<br>
<hr>
Page Var1: ${pageScope.var1 }<br>
Request Var1: ${requestScope.var1 }<br>
Session Var1: ${sessionScope.var1 }<br>
Application Var1: ${applicationScope.var1 }<br>
<hr>
Lottery: <%= BradAPIs.lottery() %><br>
Lottery: ${BradAPIs.lottery() }<br>
${BradAPIs.sayYa("Brad") }<br>
${BradAPIs.sayYa(param.name) }<br>
<hr>
${10 + 3 }<br>
${param.x} > ${param.y } => ${param.x > param.y } <br>
${param.x > 3 }<br>
${(param.x == "10") ? "Yes" : "No" }


</body>
</html>