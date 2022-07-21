package kr.ac.kopo.controller.account;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.MemberService;
import kr.ac.kopo.vo.MemberVO;

public class OpenBankProcessController implements Controller {
	
	private MemberService service;
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		
		HttpSession session = request.getSession();
		
		MemberVO userVO = (MemberVO)session.getAttribute("userVO");
		
		System.out.println(userVO.toString());
		
		String id = userVO.getId();
		
		service = new MemberService();
		service.updateOpenBank(id);
		
		MemberVO member = service.getUser(id);
		session.setAttribute("userVO", member);
		
		return "redirect:/index.do";
	}

}
