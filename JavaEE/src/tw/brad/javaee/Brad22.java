package tw.brad.javaee;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Brad22")
public class Brad22 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String account = request.getParameter("account");
		String passwd = request.getParameter("passwd");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/iii", "root", "root");
			PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM accounts WHERE account = ?");
			pstmt.setString(1, account);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				String hPasswd = rs.getString("passwd");
				if (BradAPI.ckPasswd(passwd, hPasswd)) {
					// Login Success
					HttpSession session = request.getSession();
					Member member = new Member(rs.getString("realname"),rs.getString("account"),18);
					session.setAttribute("member", member);
					response.sendRedirect("Brad32");
				}else {
					// Login Fail => passwd error
					response.sendRedirect("brad22.html");
				}
			}else {
				// Login fail => account not exist
				response.sendRedirect("brad22.html");
			}
		}catch (Exception e) {
			response.sendRedirect("brad22.html");
		}
		
		
		
	
	}

}
