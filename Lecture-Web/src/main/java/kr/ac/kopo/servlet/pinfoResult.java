package kr.ac.kopo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/pinfoResult")
public class pinfoResult extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		String[] mail = request.getParameterValues("mail");
		int[] mail_reception = new int[3];
		String job = request.getParameter("직업");
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("	<title>개인 정보 출력</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("	<h2>개인 정보 출력</h2>");
		out.println("	이름 : " + name + "<br>");
		out.println("	아이디 : " + id + "<br>");
		out.println("	임호 : " + password + "<br>");
		out.println("	성별 : " + gender + "<br>");
		for(int i = 0; i < mail.length; i++) {
			if(mail[i].equals("공지 메일")) {
				mail_reception[0] = 1;
			}
			if(mail[i].equals("광고 메일")) {
				mail_reception[1] = 1;
			}
			if(mail[i].equals("배송 확인 메일")) {
				mail_reception[2] = 1;
			}
		}
		
		if(mail_reception[0] == 1) {
			out.println("공지 메일 : 받음<br>");
		}else {
			out.println("공지 메일 : 받지않음<br>");
		}
		if(mail_reception[1] == 1) {
			out.println("광고 메일 : 받음<br>");
		}else {
			out.println("광고 메일 : 받지않음<br>");
		}
		if(mail_reception[2] == 1) {
			out.println("배송 확인 메일 : 받음<br>");
		}else {
			out.println("배송 확인 메일 : 받지않음<br>");
		}
		
		out.println("	직업 : " + job);
		
		out.println("</body>");
		out.println("</html>");
		
	}
}
