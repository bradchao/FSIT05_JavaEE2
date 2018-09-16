<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<sql:setDataSource
	driver="com.mysql.jdbc.Driver" 
	url="jdbc:mysql://localhost/iii"
	user="root" password="root" />

<c:if test="${!empty param.delid }">
	<c:catch var="error">
		<sql:update>
			delete from cust where id = ?
			<sql:param>${param.delid }</sql:param>
		</sql:update>
	</c:catch>
	<c:if test="${error != null }">${error }</c:if>
</c:if>

<sql:query var="result">
	select * from cust
</sql:query>
<script>
	function confirmDelete(name){
		var isDel = confirm("Delete " + name + "?");
		return isDel;
	}
</script>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Brad Big Company</h1>
<hr>
<a href="brad70.jsp"><button>新增</button></a>
<hr>
<table border="1" width="100%">
	<tr>
		<th>id</th>
		<th>name</th>
		<th>tel</th>
		<th>Birthday</th>
		<th>Del</th>
		<th>Edit</th>
	</tr>
	<c:forEach var="row" items="${result.rows }">
	<tr>
		<td>${row.id }</td>
		<td>${row.name }</td>
		<td>${row.tel }</td>
		<td>${row.birthday }</td>
		<td align="center">
			<a href="?delid=${row.id }" 
				onclick="return confirmDelete('${row.name }');">
				<button>Del</button>
			</a>
		</td>
		<td align="center">
			<a href="brad71.jsp?editid=${row.id }"><button>Edit</button></a>
		</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>