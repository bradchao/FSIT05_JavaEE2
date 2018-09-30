<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String method = request.getMethod();
	//out.println(method);
	
	String strX = request.getParameter("x");
	String strY = request.getParameter("y");
	
	try{
		double dX = Double.parseDouble(strX);
		double dY = Double.parseDouble(strY);
		double result = dX + dY;
		out.print(result);
	}catch(Exception e){
		out.print("");		
	}
	
	
%>