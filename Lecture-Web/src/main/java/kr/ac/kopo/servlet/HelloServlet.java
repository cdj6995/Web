package kr.ac.kopo.servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {

	@Override
	public void init(ServletConfig config) throws ServletException{
		System.out.println("init() : 최초 한번만 실행되는 메소드입니다.ㅋㅋㅋ샛팅");
	}
	
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		System.out.println("service() : 실제 작업이 수행되는 메소드 입니다. 요청이 들어올때마다 호출됩니다.");
	}
	
	@Override
	public void destroy() {
		System.out.println("\t\t\t\t\t\t\t\t\t\t\t\tdestroy()....");
	}
}
