package kr.ac.kopo.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.MemberService;
import kr.ac.kopo.vo.MemberVO;

public class SignUpController implements Controller {

	
	private MemberService service;
	private MemberVO member;
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		
		service = new MemberService();
		member = new MemberVO();
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		String post = request.getParameter("post");
		String addr = request.getParameter("roadaddr");
		String detailaddr = request.getParameter("detailaddr");
		
		member.setId(id);
		member.setName(name);
		member.setPassword(password);
		member.setGender(gender);
		member.setTel(tel);
		member.setEmail(email);
		member.setPost(post);
		member.setAddr(addr);
		member.setDetailaddr(detailaddr);
		
		service.insertMember(member);
		
		return "redirect:/login.do";
	}

}
