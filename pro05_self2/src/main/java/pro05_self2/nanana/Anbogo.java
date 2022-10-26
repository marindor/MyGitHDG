package pro05_self2.nanana;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

public class Anbogo extends HttpServlet {
	
		@Override
		public void init() throws ServletException {
			System.out.println("Anbogo init!");
		}
		
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			System.out.println("Anbogo doGet!");
			//UDP (User Datagram Protocol) UDP[유디피]는 IP를 사용하는 네트웍 내에서 컴퓨터들 간에
			//메시지들이 교환될 때 제한된 서비스만을 제공하는 통신 프로토콜이다.
			//UDP는 TCP의 대안이며, IP와 함께 쓰일 때에는 UDP/IP라고 표현하기도 한다.
			
			//req.setCharacterEncoding("utf-8"); //요청을 한글로 받을 때를 대비
			//resp.setContentType("text/html;charset=UTF-8"); //응답형식 ; 응답을 한글로 할 때의 대비
			
			//PrintWriter()
			//import java.io.PrintWriter;
//			PrintWriter pw = resp.getWriter();//PrintWriter는 h
			
//			String sendDate = "    <form action=\"http://localhost:8090/pro05_self2/main\" method=\"post\">\r\n"
//					+ "        id:<input type=\"text\" value=\"abcd\"><br>\r\n"
//					+ "        password:<input type=\"password\" value=\"1234\"><br>\r\n"
//					+ "        <div>주소 : 서울시 성북구</div><br>\r\n"
//					+ "        <input type=\"submit\" >\r\n"
//					+ "        <input type=\"reset\">\r\n"
//					+ "    </form>";
//			
//			pw.write(sendDate);
			doHandle(req,resp);
		}

		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
//			req.setCharacterEncoding("utf-8"); //요청을 한글로 받을 때를 대비
//			resp.setContentType("text/html;charset=UTF-8"); //응답형식 ; 응답을 한글로 할 때의 대비
//			System.out.println("=================================");
//			System.out.println(req.getParameter("id"));
//			System.out.println(req.getParameter("password"));
//			System.out.println(req.getParameter("address"));
//			System.out.println("=================================");
//			PrintWriter pw = resp.getWriter();
//			pw.write("id : ");
//			pw.write(req.getParameter("id"));
//			pw.write("<br>");
//			pw.write("password : ");
//			pw.write(req.getParameter("password"));
//			pw.write("<br>");
//			pw.write("address : ");
//			pw.write(req.getParameter("address"));
			doHandle(req,resp);
			
		}
		
		protected void doHandle(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
			req.setCharacterEncoding("utf-8"); //요청을 한글로 받을 때를 대비
			resp.setContentType("text/html;charset=UTF-8"); //응답형식 ; 응답을 한글로 할 때의 대비
			System.out.println("=================================");
			System.out.println(req.getParameter("id"));
			System.out.println(req.getParameter("password"));
			System.out.println(req.getParameter("address"));
			System.out.println("=================================");
			
			PrintWriter pw = resp.getWriter();
			
			
			pw.write("id : ");
			pw.write(req.getParameter("id"));
			pw.write("<br>");
			pw.write("password : ");
			pw.write(req.getParameter("password"));
			pw.write("<br>");
			pw.write("address : ");
			pw.write(req.getParameter("address"));			
		}
		
		@Override
		public void destroy() {
			System.out.println("Anbogo destroy!");
		}
		
		
}

