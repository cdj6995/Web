package kr.ac.kopo.controller.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.AccountService;
import kr.ac.kopo.service.MemberService;
import kr.ac.kopo.vo.AccountVO;
import kr.ac.kopo.vo.MemberVO;



public class LoginProcessController implements Controller {

	private MemberService mservice;
	private AccountService	aservice;
	private MemberVO member;
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		mservice = new MemberService();
		aservice = new AccountService();
		member = mservice.login(id, password);
		List<AccountVO> accountList = aservice.searchAccount(id);

		if(member != null) {
			// 로그인 성공
			MemberVO userVO = new MemberVO();
			userVO.setId(member.getId());
			userVO.setPassword(member.getPassword());
			userVO.setName(member.getName());
			userVO.setEmail(member.getEmail());
			
			// 세션 등록 (session이 내장객체가 아니라서 객체를 만들어 줘야함)
			HttpSession session = request.getSession();
			session.setAttribute("userVO", userVO);
			
			request.setAttribute("accountList", accountList);
			
			return "/";
		}
		
		// 로그인 실패
		return "redirect:/login.do";
	}

}
