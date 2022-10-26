package pro08_re.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Sam1")
public class Sam1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Sam1() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");

		request.setAttribute("you", "동균");
		RequestDispatcher rd = request.getRequestDispatcher("/Sam2");
		rd.forward(request, response);
		
		
		
	}

}
