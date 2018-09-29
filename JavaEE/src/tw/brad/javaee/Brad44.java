package tw.brad.javaee;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import javax.servlet.AsyncContext;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/Brad44",
			asyncSupported=true)
public class Brad44 extends HttpServlet {
	private ExecutorService executorService = Executors.newFixedThreadPool(10);

	@Override
	public void init() throws ServletException {
		super.init();
		
		System.out.println("init()");
		
		ServletContext servletContext = getServletContext();
		List<AsyncContext> asyncs = new LinkedList<>();
		servletContext.setAttribute("asyncs", asyncs);
		
		MyAsyncListener asyncListener = new MyAsyncListener();
		servletContext.setAttribute("asyncListener", asyncListener);
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");

		System.out.println("doGet");
		
		ServletContext servletContext = getServletContext();
		List<AsyncContext> asyncs = 
				(List<AsyncContext>)servletContext.getAttribute("asyncs");
		MyAsyncListener asyncListener = 
				(MyAsyncListener)servletContext.getAttribute("asyncListener");
		
		
		AsyncContext async = request.startAsync();
		async.addListener(asyncListener);
		async.setTimeout(10*1000);
		asyncs.add(async);

		System.out.println("add a task");
		
//		executorService.execute(new AsyncRequest(async));
		executorService.submit(new AsyncRequest(async));
		
		
	}
	
	private class AsyncRequest implements Runnable {
		private AsyncContext asyncContext;
		
		public AsyncRequest(AsyncContext asyncContext) {
			this.asyncContext = asyncContext;
		}
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

	
	
}
