<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="java.util.Properties"%>
<%@page import="javax.mail.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Properties props = new Properties();
//	props.put("mail.smtp.auth", "true");
	props.put("mail.smtp.host", "ms7.hinet.net");
//	props.put("mail.smtp.post", "587");
//	props.put("mail.smtp.starttls.enable", "true");
	
	Session session2 = Session.getInstance(props);
	
	try{
		Message message = new MimeMessage(session2);
		message.setFrom(new InternetAddress("brad@brad.tw"));
		message.setRecipient(Message.RecipientType.TO, 
				new InternetAddress("seanhhe@gmail.com"));
		message.setText("1234567\n7654321\nabcdefg");
		message.setSubject("Hello from Brad");
		Transport.send(message);
		out.println("Send Mail OK");
	}catch(Exception e){
		out.println(e.toString());		
	}
	
%>


</body>
</html>