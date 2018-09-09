package tw.brad.javaee;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad23")
public class Brad23 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("image/jpeg");
		
		String strRate = request.getParameter("rate");
		float rate = Float.parseFloat(strRate);
		
		BufferedImage bimg = new BufferedImage(400, 20, BufferedImage.TYPE_INT_RGB);
		Graphics2D g2d = bimg.createGraphics();
		
		g2d.setColor(Color.YELLOW);
		g2d.fillRect(0, 0, bimg.getWidth(), bimg.getHeight());
		g2d.setColor(Color.RED);
		g2d.fillRect(0, 0, (int)(bimg.getWidth()*rate/100), bimg.getHeight());
		
		OutputStream out = response.getOutputStream();
		
		ImageIO.write(bimg, "jpeg", out);
		
		out.flush();
		out.close();
	
	}
}
