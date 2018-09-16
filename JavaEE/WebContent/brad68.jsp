<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  
<sql:setDataSource driver="com.mysql.jdbc.Driver" 
	url="jdbc:mysql://localhost/iii" user="root" password="root" />
-->
<sql:setDataSource url="jdbc:mysql://localhost/iii" 
	user="root" password="root" />
<sql:query var="resultAll" sql="select * from gifts" />
<c:set var="count" value="${resultAll.rowCount }"></c:set>
<c:set var="start" value="${(param.page - 1) * 10 }" />
<c:set var="start" value="${start < 0 ? 0 : start }" />
<sql:query var="result">
select * from gifts order by id limit ${start } ,10
</sql:query>
<h1>Brad Big Company</h1>
<hr>
<a href=''>Prev</a> ${param.page } <a href=''>Next</a>
<table border="1" width="100%">
<c:forEach items="${result.rows }" var="row">
<tr>
	<td width="5%">${row.id }</td>
	<td width="20%">${row.name }</td>
	<td>${row.feature }</td>
</tr>
</c:forEach>	
</table>
	
	


</body>
</html>