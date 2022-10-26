package pro06;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public void init() {
    	System.out.println("초기화");
    }

	public void destroy() {
		System.out.println("소멸!");
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String str1 = request.getParameter("user_id");
		String str2 = request.getParameter("user_pass");
//		String str3[] = request.getParameterValues("frmlogin");
		System.out.println(str1);
		System.out.println(str2);

		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter pw = response.getWriter();
		pw.print("<html><body>"+str1+"님 반갑습니다. 당신의 암호는 "+str2+"입니다."+"</body></html>");
		
		}
}
