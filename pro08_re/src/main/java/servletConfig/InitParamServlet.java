package servletConfig;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(
		description = "this is description. hahahaha", 
		urlPatterns = { 
				"/InitParamServlet", 
				"/InitParamServlet2"
		}, 
		initParams = { 
				@WebInitParam(name = "myName", value = "DongGyun", description = "myName's description hahaha"), 
				@WebInitParam(name = "myWeight", value = "86", description = "too heavy!")
		})
public class InitParamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	PrintWriter out = response.getWriter();
    	String myName = getInitParameter("myName");
    	String myWeight = getInitParameter("myWeight");
    	out.print(myName);
    	out.print("<br>");
    	out.print(myWeight);
    	
	}

}
