package tw.brad.javaee;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import javax.servlet.AsyncContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/Brad43",
			asyncSupported=true)
public class Brad43 extends HttpServlet {
	private ExecutorService executorService = Executors.newFixedThreadPool(1);
	AsyncContext asyncContext;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");

		asyncContext = request.startAsync();
		executorService.execute(new AsyncRequest());
		
		out.println("end");
	}
	
	
	private class AsyncRequest implements Runnable {
		@Override
		public void run() {
			try {
				Thread.sleep(10*1000);
				
				PrintWriter out = asyncContext.getResponse().getWriter();
				int rand = (int)(Math.random()*49+1);
				out.println("OK: " + rand);
				asyncContext.complete();
			}catch (Exception e) {
			}
		}
	}
	
	@Override
	public void destroy() {
		System.out.println("destory");
		executorService.shutdown();
		super.destroy();
	}
	
	

}
