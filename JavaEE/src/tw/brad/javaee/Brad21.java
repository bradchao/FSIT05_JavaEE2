package tw.brad.javaee;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad21")
public class Brad21 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		String account = request.getParameter("account");
		String passwd = request.getParameter("passwd");
		String realname = request.getParameter("realname");
		
		out.println("account: " + account);
		out.println("passwd: " + passwd);
		out.println("realname: " + realname);
		out.println("<hr>");
		
		passwd = BCrypt.hashpw(passwd, BCrypt.gensalt());
		out.println("hash passwd: " + passwd);
		out.println("length: " + passwd.length());
		
		testMySQL(account, passwd, realname);
		
	}

	
	private void testMySQL(String account, String passwd, String realname) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/iii", "root", "root");
			String sql = "INSERT INTO accounts (account,passwd,realname) VALUES (?,?,?)";
			PreparedStatement pstmt =  conn.prepareStatement(sql);
			pstmt.setString(1, account);
			pstmt.setString(2, passwd);
			pstmt.setString(3, realname);
			pstmt.executeUpdate();
			System.out.println("OK");
			
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		
		
	}
	
	
	
}
