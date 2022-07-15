package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.service.AccountService;
import kr.ac.kopo.vo.AccountVO;
import kr.ac.kopo.vo.MemberVO;

public class IndexController implements Controller {

	private AccountService	service;
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("wowowow");
		
		HttpSession session = request.getSession(false);
		service = new AccountService();
		
		if(session.getAttribute("userVO") != null) {
			MemberVO userVO = (MemberVO)session.getAttribute("userVO");
			String id = userVO.getId();
			
			List<AccountVO> accountList = service.searchAccount(id);
			
			request.setAttribute("accountList", accountList);
			return "/";
		}
		return "redirect:";
	}

}
