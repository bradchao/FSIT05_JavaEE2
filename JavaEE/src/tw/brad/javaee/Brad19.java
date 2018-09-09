package tw.brad.javaee;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad19")
public class Brad19 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		String result = request.getParameter("result");
		
		try {
			String htmlFile = loadTempView("mycal2.html");
			String outHtml = String.format(htmlFile, x, y, result);
			out.print(outHtml);
		}catch(Exception e) {
			out.println("Server Busy");
		}
	}

	private String loadTempView(String file) throws Exception {
		String tempPath = getServletContext().getInitParameter("temp-dir");
		File viewFile = new File(tempPath, file);
		
//		byte[] buf = new byte[(int)viewFile.length()];
//		BufferedInputStream bin = new BufferedInputStream(new FileInputStream(viewFile));
//		bin.read(buf);
//		bin.close();
//		return new String(buf);

		BufferedReader reader = new BufferedReader(new FileReader(viewFile));
		StringBuffer sb = new StringBuffer(); String line= null;
		while( (line= reader.readLine()) != null) {
			sb.append(line);
		}
		reader.close();
		return sb.toString();
	}
	
	
}
