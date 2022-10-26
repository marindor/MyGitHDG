package pro06_re.ex01;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Reader;
import java.io.Serializable;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet({ "/SelfSelf", "/nanana" })
public class SelfSelf extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public SelfSelf() {
    }


	public void init(ServletConfig config) throws ServletException {
		
	}


	public void destroy() {
		System.out.println("소멸");
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); //요청을 한글로 받을 때를 대비
		response.setContentType("text/html;charset=UTF-8"); //응답형식 ; 응답을 한글로 할 때의 대비
		response.getWriter().append("<!DOCTYPE html>\r\n"
				+ "<html lang=\"en\">\r\n"
				+ "<head>\r\n"
				+ "    <meta charset=\"UTF-8\">\r\n"
				+ "    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n"
				+ "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n"
				+ "    <title>Document</title>\r\n"
				+ "</head>\r\n"
				+ "<body>\r\n"
				+ "    <form action=\"http://localhost:8090/pro06_re/SelfSelf\" method=\"post\">\r\n"
				+ "        id:<input type=\"text\" name=\"id\" value=\"abcd\"><br>\r\n"
				+ "        password:<input type=\"password\" name=\"password\" value=\"1234\"><br>\r\n"
				+ "        주소 : <input type=\"text\" name=\"address\" value=\"서울시 성북구\"><br>\r\n"
				+ "        <input type=\"submit\" >\r\n"
				+ "        <input type=\"reset\">\r\n"
				+ "    </form>    \r\n"
				+ "</body>\r\n"
				+ "</html>");
		

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); //요청을 한글로 받을 때를 대비
		response.setContentType("text/html;charset=UTF-8"); //응답형식 ; 응답을 한글로 할 때의 대비
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		
		response.getWriter().append(id+"<br>"+password+"<br>"+address);
	}

}


