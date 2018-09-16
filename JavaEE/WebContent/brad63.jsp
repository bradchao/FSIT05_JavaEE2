<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="member1" class="tw.brad.beans.Member"/>
<jsp:useBean id="member2" class="tw.brad.beans.Member"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	pageContext.setAttribute("x", 1234);
	//pageContext.setAttribute("var1", "123");
%>
<c:out value="Hello, World"/><br>
<c:out value="${'Hello, Brad' }"/><br>
<c:out value="${x }" default="no value" /><br>
${x != null ? x : "no value" }	<!-- no attr => null => object -->
<hr>
<c:set var="var1" value="123" scope="page"/>
Var1: ${var1 }<br>
<c:set var="var2">321</c:set>
Var2: ${var2 }<br>
<hr>
<c:set target="${member1 }" property="id">009</c:set>
<c:set target="${member1 }" property="name">Brad</c:set>

<c:set target="${member2 }" property="id">010</c:set>
<c:set target="${member2 }" property="name">III</c:set>

${member1.name }<br>
${member2.name }<br>
<c:remove var="var1"/>
Var1: <c:out value="${var1 }" default="no value" />



</body>
</html>