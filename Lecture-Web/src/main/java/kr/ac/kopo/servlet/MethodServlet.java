package kr.ac.kopo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MethodServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getMethod();	// 요청이 어떤 메서드 방식인지? get? post?
		String uri = request.getRequestURI();
		StringBuffer url = request.getRequestURL();
		String id = request.getParameter("id");
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("	<title>메소드 요청방식</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("	<h3>================================</h3>");
		out.println("	&nbsp;&nbsp;&nbsp;&nbsp;출력결과");
		out.println("	<h3>================================</h3>");
		out.println("	파라미터(id) : " + id + "<br>");
		out.println("	요청방식 : " + method + "<br>");
		out.println("	URI : " + uri);
		out.println("	<h3>================================</h3>");
		out.println("	<h3>================================</h3>");
		out.println("</body>");
		out.println("</html>");
		
		/*
		 	System.out.println("요청 메소드 : " + method); 
		 	System.out.println("요청 URI : " + uri);
		 	System.out.println("요청 URL : " + url.toString());
		 	System.out.println("ID : " + id);
		 */
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8"); 	// post방식일때 한글이 깨지기 때문에 이렇게 해줘야함
		
		String method = request.getMethod();	// 요청이 어떤 메서드 방식인지? get? post?
		String uri = request.getRequestURI();
		StringBuffer url = request.getRequestURL();
		String id = request.getParameter("id");
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("	<title>메소드 요청방식</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("	<h3>================================</h3>");
		out.println("	&nbsp;&nbsp;&nbsp;&nbsp;출력결과");
		out.println("	<h3>================================</h3>");
		out.println("	파라미터(id) : " + id + "<br>");
		out.println("	요청방식 : " + method + "<br>");
		out.println("	URI : " + uri);
		out.println("	<h3>================================</h3>");
		out.println("	<h3>================================</h3>");
		out.println("</body>");
		out.println("</html>");
	}

	
}
