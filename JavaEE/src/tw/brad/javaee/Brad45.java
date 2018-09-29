package tw.brad.javaee;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Brad45")
public class Brad45 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		
		HttpSession session = request.getSession();
		System.out.println("session id = " + session.getId());
		
		
		ServletContext servletContext = request.getServletContext();
		
		try {
			Connection conn = (Connection)servletContext.getAttribute("conn");
			Statement stmt = conn.createStatement();
			stmt.executeUpdate("insert into cust (name,tel,birthday) values ('aa','bb','2018-09-29')");
			System.out.println("insert ok");
		}catch(Exception e) {
			System.out.println(e.toString());
		}
	
	
	}
}
