<%@page import="org.json.JSONObject"%>
<%@page import="java.util.*"%>
<%@page import="org.json.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<sql:setDataSource
	driver="com.mysql.jdbc.Driver" 
	url="jdbc:mysql://localhost/iii"
	user="root" password="root" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:import var="data" url="http://data.coa.gov.tw/Service/OpenData/ODwsv/ODwsvAttractions.aspx" />
<%
	String strJSON = (String)pageContext.getAttribute("data");
	LinkedList<HashMap<String,String>> data = new LinkedList<>();
	
	JSONArray root = new JSONArray(strJSON);
	for (int i=0; i<root.length(); i++){
		JSONObject row = root.getJSONObject(i);
		HashMap<String,String> map = new HashMap<>();
		map.put("ID", row.getString("ID"));
		map.put("Name", row.getString("Name"));
		map.put("Tel", row.getString("Tel"));
		map.put("Address", row.getString("Address"));
		map.put("pos", row.getString("Coordinate"));
		data.add(map);
	}
	pageContext.setAttribute("pdata", data);

%>
<table border="1" width="100%">
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Tel</th>
		<th>LatLng</th>
	</tr>
	<c:forEach items="${pdata }" var="row">
		<tr>
			<td>${row.ID }</td>
			<td>${row.Name }</td>
			<td>${row.Tel }</td>
			<td>${row.pos }</td>
		</tr>
		
		<!--  
		<sql:update>
			insert into travel (sid,name,tel,addr,pos) values (?,?,?,?,?)
			<sql:param>${row.ID }</sql:param>
			<sql:param>${row.Name }</sql:param>
			<sql:param>${row.Tel }</sql:param>
			<sql:param>${row.Address }</sql:param>
			<sql:param>${row.pos }</sql:param>
		</sql:update>
		-->
	</c:forEach>
</table>



</body>
</html>