package kr.ac.kopo.controller.account;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.AccountService;

public class TransferProcessController implements Controller {
	
	private AccountService service;
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		
		String sendAccount = request.getParameter("send");
		String receiveAccount = request.getParameter("receive");
		String money = request.getParameter("money");
		String password = request.getParameter("password");
		
		System.out.println(sendAccount);
		System.out.println(receiveAccount);
		System.out.println(money);
		System.out.println(password);
		System.out.println(1);
		boolean result = service.transfer(sendAccount, receiveAccount, money, password);
		
		if(result) {
			return "/jsp/account/completeTransfer.jsp";
			
		}
		return "";
	}

}
