package pro06_re.ex01;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//This annotation is processed by the container at deployment time,and the corresponding servlet made available at the specified URLpatterns.
@WebServlet("/Rereview")
public class Review extends HttpServlet {
	//이 서블릿이 가진 유니크한 ID.
	private static final long serialVersionUID = 1L;
       

    public Review() {
        super();
        // TODO Auto-generated constructor stub
    }


	public void init(ServletConfig config) throws ServletException {
		System.out.println("초기화 및 객체 생성");
	}


	public void destroy() {
		System.out.println("객체 소멸");
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
