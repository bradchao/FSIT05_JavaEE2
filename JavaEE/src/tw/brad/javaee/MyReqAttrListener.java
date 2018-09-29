package tw.brad.javaee;

import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class MyReqAttrListener implements
 						ServletRequestAttributeListener{

	@Override
	public void attributeAdded(ServletRequestAttributeEvent event) {
		String key = event.getName();
		Object value = event.getValue();
		System.out.println("add => " + key + ":" + value);
		
		
		
	}

	@Override
	public void attributeRemoved(ServletRequestAttributeEvent event) {
		String key = event.getName();
		Object value = event.getValue();
		System.out.println("remove => " + key + ":" + value);
	}

	@Override
	public void attributeReplaced(ServletRequestAttributeEvent event) {
		String key = event.getName();
		Object value = event.getValue();
		System.out.println("replace => " + key + ":" + value);
	}
	

}
