package tw.brad.javaee;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Timer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Brad42")
public class Brad42 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		
		Brad41.MyTask task1 = (Brad41.MyTask)session.getAttribute("task1");
		Brad41.MyTask2 task2 = (Brad41.MyTask2)session.getAttribute("task2");
		if (task1 == null && task2 != null) {
			task2.cancel();
			task2 = null;
			session.removeAttribute("task2");
		}else if (task1 != null){
			task1.cancel();
			task1 = null;
			session.removeAttribute("task1");
		}else {
			out.println("no task");
			session.invalidate();
		}
		
	
	}

}
