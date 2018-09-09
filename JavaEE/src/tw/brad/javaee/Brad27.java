package tw.brad.javaee;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad27")
public class Brad27 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		Cookie cookieRemember = new Cookie("remember", "true");
		cookieRemember.setMaxAge(1*60);
		response.addCookie(cookieRemember);

		Cookie cookieUsername = new Cookie("username", "brad");
		cookieUsername.setMaxAge(1*60);
		response.addCookie(cookieUsername);

		Cookie cookiePasswd = new Cookie("password", "123456");
		cookiePasswd.setMaxAge(1*60);
		response.addCookie(cookiePasswd);

	}

}
