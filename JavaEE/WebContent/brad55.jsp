<%@page import="tw.brad.beans.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="member" class="tw.brad.beans.Member"/>

<!-- member has proprerty id, name values "01", "Brad"  -->
<jsp:setProperty property="id" value="005" name="member"/>
<jsp:setProperty property="name" value="Peter" name="member"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

Hello, 
<jsp:getProperty property="id" name="member"/>
:
<jsp:getProperty property="name" name="member"/>

</body>
</html>