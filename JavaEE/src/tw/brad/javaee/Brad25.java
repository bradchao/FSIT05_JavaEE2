package tw.brad.javaee;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad25")
public class Brad25 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("image/jpeg");
		
		String uploadPath = getServletContext().getInitParameter("upload-dir");
		
		BufferedImage bimg = ImageIO.read(new File(uploadPath, "coffee.jpg"));
		Graphics2D g2d = bimg.createGraphics();
		
		Font font = new Font(null, Font.BOLD+Font.ITALIC, 48);
		
		AffineTransform tran = new AffineTransform();
		tran.rotate(Math.toRadians(-45), 140, 0);
		Font newfont = font.deriveFont(tran);
		
		g2d.setFont(newfont);
		g2d.setColor(Color.GREEN);
		g2d.drawString("資策會論壇專屬, 歡迎拷貝", 40, 200);
		
		OutputStream out = response.getOutputStream();
		File fileOut = new File(uploadPath, "coffee2.jpg");
		
		ImageIO.write(bimg, "jpeg", out);
		ImageIO.write(bimg, "jpeg", fileOut);
		
		out.flush();
		out.close();
		
		
		
	}

}
