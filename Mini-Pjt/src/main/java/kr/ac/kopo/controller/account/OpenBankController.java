package kr.ac.kopo.controller.account;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.controller.Controller;

public class OpenBankController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("userVO") != null) {
			
			return "/jsp/account/openBank.jsp";
		}
		return "redirect:/login.do";
		
	}

}
