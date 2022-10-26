package pro10_re.scope;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SetAttribute")
public class SetAttribute extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		
		//1
		ServletContext ctx = getServletContext(); //서블릿 컨텍스트 객체 가져오기
		ctx.setAttribute("context massege", "this is aaa");
		//2
		HttpSession sess = req.getSession();
		sess.setAttribute("session massege", "this is bbb");
		//3	
		req.setAttribute("request massege", "this is ccc");
	}
}
