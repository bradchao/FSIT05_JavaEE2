<%@tag import="java.util.HashMap"%>
<%@ tag dynamic-attributes="product" %>
<%
	HashMap<String,String> ps = 
		(HashMap<String,String>)jspContext.getAttribute("product");

	out.print("<tr>");
	if (ps.containsKey("name")){
		out.print("<td>" + ps.get("name") + "</td>");
	}else{
		out.print("<td></td>");
	}
	
	if (ps.containsKey("price")){
		out.print("<td>" + ps.get("price") + "</td>");
	}else{
		out.print("<td></td>");
	}
	
	out.print("</tr>");

%>