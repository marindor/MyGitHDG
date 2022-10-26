package pro08_re.test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Binding")
public class Binding extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Binding() {
        super();
    }

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		res.setContentType("text/html;charset=utf-8");
		req.setAttribute("address", "서울시 성북");
		res.sendRedirect("Binding2");
	}

}
