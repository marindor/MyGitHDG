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

@WebServlet("/GetAttribute")
public class GetAttribute extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		
		ServletContext ctx = getServletContext(); //서블릿 컨텍스트 객체 가져오기
		HttpSession sess = req.getSession();	
		
		String aaa = (String)ctx.getAttribute("context massege");
		String bbb = (String)sess.getAttribute("session massege");
		String ccc = (String)req.getAttribute("request massege");
		
		out.print("<html><body>");
		out.print(aaa);
		out.print("<br>");
		out.print(bbb);
		out.print("<br>");
		out.print(ccc);
		out.print("</body></html>");		
	}
}
