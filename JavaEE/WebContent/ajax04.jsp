<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
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