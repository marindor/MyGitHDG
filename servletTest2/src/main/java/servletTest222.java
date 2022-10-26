

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/test222")
public class servletTest222 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void init(ServletConfig config) throws ServletException {
		System.out.println("초기화");
	}
	public void destroy() {
		System.out.println("종료");
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet()호출");
//		response.getWriter().append("Served at: ").append(request.getContextPath());
        PrintWriter writer = response.getWriter();
        writer.print("<html><head></head><body>hahahahahah</body></html>");
	}

}
