<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String[] names= {"Brad","Amy","Tony","Peter","Kevin","AAA","BBB","CCC"};
	pageContext.setAttribute("names", names);
	
	for (String name : names){
		// play name
	}
	
%>

<table border="1" width="100%">
	<tr>
		<th>id</th>
		<th>Name</th>
		<th>Count</th>
		<th>First</th>
		<th>Last</th>
	</tr>
	<c:forEach var="name" items="${names }" varStatus="status"
		begin="1" end="6" step="2">
		
		<tr bgcolor="
		<c:choose>
			<c:when test="${status.first }">yellow</c:when>
			<c:when test="${status.last }">pink</c:when>
			<c:otherwise>lightgray</c:otherwise>
		</c:choose>
		">
		
		<!--  
		<c:if test="${status.count % 2 == 0 }"><tr bgcolor='yellow'></c:if>
		<c:if test="${status.count % 2 != 0 }"><tr bgcolor='pink'></c:if>
		-->
			<td>${status.index }</td>
			<td>${name }</td>
			<td>${status.count }</td>
			<td>${status.first }</td>
			<td>${status.last }</td>
		</tr>
	</c:forEach>
</table>










</body>
</html>