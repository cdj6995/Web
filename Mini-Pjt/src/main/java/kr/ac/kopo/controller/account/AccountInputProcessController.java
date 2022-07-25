package kr.ac.kopo.controller.account;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.AccountService;
import kr.ac.kopo.service.BankService;
import kr.ac.kopo.service.HistoryService;
import kr.ac.kopo.vo.AccountVO;

public class AccountInputProcessController implements Controller {

	private AccountService Aservice;
	private BankService Bservice;
	private HistoryService Hservice;
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		Aservice = new AccountService();
		Bservice = new BankService();
		Hservice = new HistoryService();
		
		String accountNo = request.getParameter("send");	// 입금 계좌번호
		String money = request.getParameter("money");		// 입금 금액
		String password = request.getParameter("password");
				

		boolean result = Aservice.input(accountNo, money, password);
		if(result) {
			
			AccountVO account = Aservice.searchAccountNo(accountNo);
			String Balance = account.getBalance() + "";	// 거래 후 잔액
			// 거래내역 기록
			Hservice.insertHistory("0003", "ATM 입금", "DJ뱅크", Balance, accountNo, money);
			
			return "/jsp/account/completeTransfer.jsp";
		}
		
		return "redirect:/index.do";
	}

}
