package GetServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/setContext")
public class setContext extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public setContext() {
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		ServletContext ctx = getServletContext();
		System.out.println(ctx);
		
		PrintWriter out = response.getWriter();
		ServletContext context = getServletContext(); //ServletContext 객체 선언 및 가져오기
		List member = new ArrayList();
		member.add("이순신");
		member.add(30);
		context.setAttribute("member", member);//ServletContext 객체 ctx에 데이터 바인딩
		out.print("<html><body>");
		out.print("이순신과 30 설정함");
		out.print("</body></html>");
	}
}
