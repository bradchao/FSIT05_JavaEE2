package tw.brad.javaee;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad12")
public class Brad12 extends HttpServlet {
	protected void doGet(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
	
		String name = request.getParameter("name");
		
		RequestDispatcher dispatcher1 = request.getRequestDispatcher("Brad13?name=brad");
		RequestDispatcher dispatcher2 = request.getRequestDispatcher("brad14.html");
		
		out.println("<h1>Brad Big Company</h1>");
		out.println("I am Brad12:" + name);
		out.println("<hr>");
		
		dispatcher1.include(request, response);
		out.println("<hr>");
		dispatcher2.include(request, response);
		
	
	}
}
