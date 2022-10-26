package listener;

import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

public class SessionEvent implements HttpSessionBindingListener{

	String data;
	static int count=0;
	
	public SessionEvent(String data) {
		this.data=data;
	}
	
	@Override
	public void valueBound(HttpSessionBindingEvent arg0) {
		System.out.println("세션객체에 바인딩했으니 +1!!");
		++count;
		System.out.println("현재 접속수 "+count);
	}
	
	
	public void valueUnbound(HttpSessionBindingEvent arg0) {
		System.out.println("세션객체에 언바인딩했으니 -1~!");
		count--;
		System.out.println("현재 접속수 "+count);
	}	
}
