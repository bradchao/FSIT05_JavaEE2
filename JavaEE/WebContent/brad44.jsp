<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Brad Big Company</h1>
<hr>

<table border="1" width="100%">
<%
	for (int k=0; k<4; k++){
		out.println("<tr>");
		for (int j=2; j<=5; j++){
			out.println("<td bgcolor='" + ((k+j)%2!=0?"yellow":"pink") + "'>");
			int newj = k*4 + j;
			for (int i=1; i<=9; i++){
				int r = newj * i;
				out.println(newj + " x " + i + " = " + r + "<br>");
			}
			out.println("</td>");
		}
		out.println("</tr>");
	}
%>
</table>



</body>
</html>