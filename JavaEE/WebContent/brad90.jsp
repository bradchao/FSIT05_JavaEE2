<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if (session.isNew() ||
			request.getParameter("account") == null ||
			request.getParameter("passwd") == null){
		response.sendRedirect("brad89.jsp");
		return;
	}

	// 以下檢查帳密
	String account = request.getParameter("account");
	String passwd = request.getParameter("passwd");
	
	if (account.equals("brad") && passwd.equals("123456")){
		session.setAttribute("account", account);
		response.sendRedirect("brad91.jsp");
	}else{
		response.sendRedirect("brad89.jsp");
	}



%>