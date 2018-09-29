package tw.brad.javaee;

import java.io.IOException;
import java.io.StringWriter;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class MyTag3 extends SimpleTagSupport {
	private String name;
	private String price;
	private StringWriter sw;
	
	public void setName(String name) {this.name = name;}
	public void setPrice(String price) {this.price = price;}
	
	
	@Override
	public void doTag() throws JspException, IOException {
		super.doTag();
		
		JspWriter out = getJspContext().getOut();
		//out.print(name + ":" + price);

		// use body
		sw = new StringWriter();
		getJspBody().invoke(sw);
		
		out.print(name + ":" + price + sw.toString() + "<br>");
		
	}
	

}
