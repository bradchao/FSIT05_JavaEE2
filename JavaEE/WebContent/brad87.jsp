<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="brad" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Brad Big Company</h1>
<hr />
<brad:test1/>
<hr>
<brad:test2 user="Brad" />
<hr>
<brad:test3 x="10" y="3">
10 + 3 = ${add }<br>
10 - 3 = ${sub }<br>
10 x 3 = ${multiply }<br>
10 / 3 = ${divide }<br>
</brad:test3>
<hr>
<brad:test4/>
<hr>
<table border="1" width="100%">
	<tr>
		<th>Name</th>
		<th>Price</th>
	</tr>
	<brad:test5 name="Camera" price="140" />
	<brad:test5 name="Mouse" />
	<brad:test5 name="Mobile" price="2000" />
</table>






</body>
</html>