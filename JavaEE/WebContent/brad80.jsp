<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:catch var="errorMsg">
	<sql:setDataSource
		driver="com.mysql.jdbc.Driver" 
		url="jdbc:mysql://localhost/iii"
		user="root" password="root" />
		
	<sql:update var="count">
		insert into cust (name,tel,birthday) values (?,?,?)
		<sql:param>iii</sql:param>
		<sql:param>111</sql:param>
		<sql:param>1999-09-08</sql:param>
	</sql:update>	
</c:catch>
<c:if test="${count >= 1 }">OK</c:if>
<c:if test="${errorMsg != null }">XX</c:if>
	
	


</body>
</html>