<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="member" class="tw.brad.beans.Member"/>

<jsp:setProperty property="id" name="member" value="${param.id }" />
<jsp:setProperty property="name" name="member" value="${param.name }" />

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
<hr>
Hello, ${member.id } : ${member.name }
<hr>
Hello, ${param.id } : ${param.name } 




</body>
</html>