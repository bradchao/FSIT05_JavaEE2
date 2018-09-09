<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String x = request.getParameter("x");
	String y = request.getParameter("y");
	String op = request.getParameter("op");
	
	int intX, intY;
	int result = 0;
	if (x != null && y!=null){
		try{
			intX = Integer.parseInt(x);
			intY = Integer.parseInt(y);
			switch (op){
				case "1": result = intX + intY; break;
				case "2": result = intX - intY; break;
				case "3": result = intX * intY; break;
				case "4": result = intX / intY; break;
				default: result = 0;
			}
		}catch(Exception e){
			intX = intY = 0;	
		}
	}else{
		intX = intY = 0;
	}
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form>
	<input name="x" value="<%= intX %>">
	<select name="op">
		<option value="1" <%= op.equals("1")?"selected":"" %>>+</option>
		<option value="2" <%= op.equals("2")?"selected":"" %>>-</option>
		<option value="3" <%= op.equals("3")?"selected":"" %>>x</option>
		<option value="4" <%= op.equals("4")?"selected":"" %>>/</option>
	</select>
	<input name="y" value="<%= intY %>">
	<input type="submit" value="=">
	<%= result %>
</form>

</body>
</html>