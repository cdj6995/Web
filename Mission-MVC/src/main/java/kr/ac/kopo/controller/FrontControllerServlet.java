package kr.ac.kopo.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
	urlPatterns = {"*.do"},
	initParams = {
			@WebInitParam(name="propLocation",value="D:\\Lecture\\web-workspace\\Mission-MVC\\bean.properties")
})
public class FrontControllerServlet extends HttpServlet {
	
	HandlerMapping mappings;
	
	// 환경설정은 init에서!
	@Override
	public void init(ServletConfig config) throws ServletException {
		
		String propLocation = config.getInitParameter("propLocation");
		
		mappings = new HandlerMapping(propLocation);
	}
	
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String context = request.getContextPath();
		
		String uri = request.getRequestURI();
		uri = uri.substring(context.length());
		System.out.println("uri : " + uri);
		
		try {
			Controller control = mappings.getController(uri);
			String callPage = null;
			
			if(control != null) {
				callPage = control.handleRequest(request, response);
				if(callPage.startsWith("redirect")) {
					response.sendRedirect(request.getContextPath() + callPage.substring("redirect:".length()));
				} else {
					RequestDispatcher dispacher = request.getRequestDispatcher(callPage);
					dispacher.forward(request, response);	// forward는 경로 제일 앞의 /는 Mission-MVC까지는 나타낸다. (xml과 include도) 따라서 callPage경로도 저렇게 설정									
				}
			}
			
		} catch(Exception e) {
			throw new ServletException();
		}
		
	}


}
