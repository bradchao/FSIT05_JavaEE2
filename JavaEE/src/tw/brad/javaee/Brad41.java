package tw.brad.javaee;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Brad41")
public class Brad41 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");

		Timer timer = new Timer();
		MyTask task1 = new MyTask();
		MyTask2 task2 = new MyTask2();
		timer.schedule(task1, 0, 1*1000);
		timer.schedule(task2, 0, 2*1000);
		
		HttpSession session = request.getSession();
		session.setAttribute("timer", timer);
		session.setAttribute("task1", task1);
		session.setAttribute("task2", task2);
		
		out.println("end");
		
	}
	
	class MyTask extends TimerTask {
		@Override
		public void run() {
			System.out.println("111=> " + (int)(Math.random()*49+1));
		}
	}
	
	class MyTask2 extends TimerTask {
		@Override
		public void run() {
			System.out.println("222=> " + (int)(Math.random()*49+1));
		}
	}
	
}
