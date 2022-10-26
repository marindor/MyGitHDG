package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;


@WebFilter("/*")
public class Encoding extends HttpFilter implements Filter {
       

	ServletContext ctx;
	


	public void init(FilterConfig fConfig) throws ServletException {
		ctx = fConfig.getServletContext();
	}

	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
		req.setCharacterEncoding("utf-8");
		String context = ((HttpServletRequest)req).getContextPath();
		String pathinfo = ((HttpServletRequest)req).getRequestURI();
		String physicPath = req.getRealPath(pathinfo);
		
		
		long begin = System.currentTimeMillis();
		chain.doFilter(req, resp); //요청시 필터와 응답 시 필터의 구분지점
		long end = System.currentTimeMillis();
		System.out.println("작업시간 : "+ (end-begin)+" ms");
		
	
	}

	public void destroy() {

	}


}
