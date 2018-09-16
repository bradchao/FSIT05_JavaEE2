<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:catch var="errorMsg">
<%
	//Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection(
			"jdbc:mysql://localhost/iii", "root", "root");
	Statement stmt = conn.createStatement();
	String sql = "INSERT INTO cust (name,tel,birthday) VALUES ('Brad2','123','1999-01-02')";
	stmt.execute(sql);
	out.println("OK");
%>
</c:catch>
<c:if test="${errorMsg != null }">ERROR</c:if>





</body>
</html>