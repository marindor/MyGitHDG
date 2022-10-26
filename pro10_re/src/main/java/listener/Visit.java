package listener;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/Visit")
public class Visit extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter out = resp.getWriter();
        
        HttpSession sess = req.getSession();//바인딩할 객체 선언
        SessionEvent bbbb = new SessionEvent("이벤트 수신기 설치");
        if(sess.isNew()) {
            sess.setAttribute("data", bbbb);
        }
        
        out.println("<head>");
        out.println("<script type='text/javascript'>");
        out.println("setTimeout('history.go(0);',5000");
        out.println("</script>");
        out.println("</head>");
        out.println("<html><body>");
        out.println("data는 "+ bbbb.data + "입니다.");        
        out.println("</body></html>");
    }
}
