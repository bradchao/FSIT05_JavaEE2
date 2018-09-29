<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("account") == null){
		response.sendRedirect("brad89.jsp");
		return;
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Brad Big Company</h1>
<hr>
Welcome, ${account }
<hr>
<a href="logout.jsp">Logout</a>

</body>
</html>