<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Brad92<hr>
<%
	int test1 = (int)(Math.random()*49+1);
	out.println(test1 + "<br>");
	
	request.setAttribute("test1", test1);
	
//	response.sendRedirect("brad93.jsp");
	request.getRequestDispatcher("brad93.jsp").forward(request, response);
//	request.getRequestDispatcher("brad93.jsp").include(request, response);


%>



</body>
</html>