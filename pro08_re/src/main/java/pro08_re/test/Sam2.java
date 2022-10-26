package pro08_re.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Sam2")
public class Sam2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Sam2() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		String nanana = (String) request.getAttribute("you");
		PrintWriter pw = response.getWriter();		
		pw.print(nanana);

	}

}
