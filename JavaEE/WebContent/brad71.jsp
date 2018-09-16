<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<c:if test="${empty param.editid and empty param.id}">
	<c:redirect url="brad69.jsp"/>
</c:if>

<sql:setDataSource
	driver="com.mysql.jdbc.Driver" 
	url="jdbc:mysql://localhost/iii"
	user="root" password="root" />

<c:if test="${!empty param.id }">
	<sql:update>
		update cust set name=?,tel=?,birthday=? where id=?
		<sql:param>${param.name }</sql:param>
		<sql:param>${param.tel }</sql:param>
		<sql:param>${param.birthday }</sql:param>
		<sql:param>${param.id }</sql:param>
	</sql:update>
	<c:redirect url="brad69.jsp"/>
</c:if>

	
<sql:query var="result">
	select * from cust where id = ?
	<sql:param>${param.editid }</sql:param>
</sql:query>	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

Edit Cust:<hr>
<form>
<input type="hidden" name="id" value="${result.rows[0].id }">
Name: <input name="name" value="${result.rows[0].name }"><br>
Tel: <input name="tel" value="${result.rows[0].tel }"><br>
Birthday: <input name="birthday" value="${result.rows[0].birthday }"><br>
<input type="submit" value="Edit">
</form>

</body>
</html>