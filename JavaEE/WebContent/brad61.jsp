<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String method = request.getMethod();
	out.print(method + "<hr>");
	
	HttpServletRequest req = 
		(HttpServletRequest)pageContext.getRequest();
	out.print(req.getMethod() + "<hr>");
	
	out.println(req == request);	
	out.print("<hr>");
	
	String ip = request.getRemoteAddr();
	out.println(ip + "<hr>");
	
	String query = request.getQueryString();
	out.println(query + "<hr>");
%>
Method = ${pageContext.request.method }<br>
${pageContext.request.remoteAddr }<br>






</body>
</html>