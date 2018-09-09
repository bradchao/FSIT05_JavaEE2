package tw.brad.javaee;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Brad32")
public class Brad32 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession(false);
		if (session == null) {
			// 趕走
			response.sendRedirect("brad22.html");
		}else {
			// 合法
			Member member = (Member)session.getAttribute("member");
			out.println(member.getName() + ":" + member.getAccount());
			out.println("<hr>");
			out.println("<a href='Logout'>Logout</a>");
		}
		
		
		

	}

}
