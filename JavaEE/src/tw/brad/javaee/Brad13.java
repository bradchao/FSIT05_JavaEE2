package tw.brad.javaee;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Brad13
 */
@WebServlet("/Brad13")
public class Brad13 extends HttpServlet {
	protected void doGet(
			HttpServletRequest request, HttpServletResponse response) 
					throws ServletException, IOException {
		
		String name = request.getParameter("name");
		
		PrintWriter out = response.getWriter();
		out.print("I am Brad13:" + name);
	}

}
