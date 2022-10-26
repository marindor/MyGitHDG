package ServletContextfileIO;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.StringTokenizer;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/FileIO")
public class FileIO extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public FileIO() {
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();		
		
		ServletContext con = getServletContext();
		
		InputStream aaa = con.getResourceAsStream("/WEB-INF/myfolder/test.txt");
		BufferedReader buff = new BufferedReader(new InputStreamReader(aaa));
		
		String data = null;
		String man = null;
		String woman = null;
		while((data=buff.readLine())!=null) {
			StringTokenizer tok = new StringTokenizer(data, ",");
			man = tok.nextToken();
			woman = tok.nextToken();
		}
		
		out.print(man);
		out.print("<br>");
		out.print(woman);
		out.close();
	}

}
