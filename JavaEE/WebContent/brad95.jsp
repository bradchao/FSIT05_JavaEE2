<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Locale locale = request.getLocale();
%>
Country: <%= locale.getCountry() %><br>
Country: <%= locale.getDisplayCountry() %><br>
Country: <%= locale.getLanguage() %><hr>

<fmt:setLocale value="zh_TW"/>
<fmt:setBundle basename="res"/>
<h1><fmt:message key="compayName"/></h1>
<fmt:message key="hello" />, <fmt:message key="world" /> 
<hr>
<fmt:setLocale value="en_US"/>
<fmt:setBundle basename="res"/>
<h1><fmt:message key="compayName"/></h1>
<fmt:message key="hello" />, <fmt:message key="world" /> 
<hr>
<%
	Date now = new Date();
	out.print(now + "<br>");
	pageContext.setAttribute("now", now);
	
%>
<fmt:setTimeZone value="Asia/Tokyo"/>
<fmt:formatDate value="${now }" type="date" dateStyle="long" /><br>

<fmt:setTimeZone value="Asia/Taipei"/>
<fmt:formatDate value="${now }" type="both" dateStyle="long" /><br>

<fmt:setTimeZone value="Europe/Berlin"/>
<fmt:formatDate value="${now }" pattern="yyyy-MM-dd HH:mm:ss" 
	type="both" dateStyle="long" /><br>
<hr>
Default: <fmt:formatNumber value="1234567.76543" 
	type="CURRENCY" currencyCode="JPY" />



</body>
</html>