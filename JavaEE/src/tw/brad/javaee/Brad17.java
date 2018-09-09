package tw.brad.javaee;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad17")
public class Brad17 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		// 0. prepare
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		if (x == null) x = "0";
		if (y == null) y = "0";
		
		// 1. Model
		Brad18 model = new Brad18(x, y);
		int result = model.add();
		
		// 2. view
//		RequestDispatcher rd = request.getRequestDispatcher("Brad19?x=" + x + "&y=" + y + "&result=" + result);
		
//		RequestDispatcher rd = request.getRequestDispatcher("Brad19");
//		request.setAttribute("x", x);
//		request.setAttribute("y", y);
//		request.setAttribute("result", result+"");
		
		RequestDispatcher rd = request.getRequestDispatcher("brad55.jsp");
		request.setAttribute("x", x);
		request.setAttribute("y", y);
		request.setAttribute("result", result+"");
		
		
		rd.forward(request, response);
		
	}

}
