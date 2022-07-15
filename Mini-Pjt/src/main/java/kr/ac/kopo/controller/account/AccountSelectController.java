package kr.ac.kopo.controller.account;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.AccountService;
import kr.ac.kopo.vo.AccountVO;
import kr.ac.kopo.vo.MemberVO;

public class AccountSelectController implements Controller {

	private AccountService	service;
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("userVO") != null) {
			MemberVO userVO = (MemberVO)session.getAttribute("userVO");
			
			String id = userVO.getId();
			
			service = new AccountService();
			List<AccountVO> accountList = service.searchAccount(id);
			
			request.setAttribute("accountList", accountList);
			
		}
		return "/jsp/account/accountSelect.jsp";			
	}

}
