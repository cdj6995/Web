package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.member.vo.MemberVO;

public class LoginProcessController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		if(id.equals("myid") && password.equals("SECRET123")) {
			// 로그인 성공
			MemberVO userVO = new MemberVO();
			userVO.setId(id);
			userVO.setPassword(password);
			userVO.setName("황황");
			userVO.setType("U");
			
			// 세션 등록 (session이 내장객체가 아니라서 객체를 만들어 줘야함)
			HttpSession session = request.getSession();
			session.setAttribute("userVO", userVO);
			
			return "redirect:";
		}
		
		// 로그인 실패
		return "redirect:/login.do";
	}

}
