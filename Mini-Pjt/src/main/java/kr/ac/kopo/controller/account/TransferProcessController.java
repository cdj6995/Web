package kr.ac.kopo.controller.account;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.AccountService;
import kr.ac.kopo.service.BankService;
import kr.ac.kopo.service.HistoryService;
import kr.ac.kopo.vo.AccountVO;
import kr.ac.kopo.vo.BankVO;

public class TransferProcessController implements Controller {
	
	private AccountService Aservice;
	private BankService Bservice;
	private HistoryService Hservice;
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		Aservice = new AccountService();
		Bservice = new BankService();
		Hservice = new HistoryService();
		
		String bankName = request.getParameter("bankname");
		String sendAccount = request.getParameter("send");	// 출금 계좌번호
		String receiveAccount = request.getParameter("receive");	// 입금 계좌번호
		String money = request.getParameter("money");		// 거래 금액
		String password = request.getParameter("password");
		
		BankVO bank = Bservice.selectByName(bankName);
		String bankCode = bank.getBankCode();
		

		if(bankName.equals("DJ Bank")) {
			// 당행이체
			boolean result = Aservice.transfer(sendAccount, receiveAccount, money, password);
			if(result) {
				
				AccountVO account = Aservice.searchAccountNo(sendAccount);
				String sendBalance = account.getBalance() + "";	// 거래 후 잔액
				String sendId = account.getId();	// 거래자 명
				// 거래내역 기록
				Hservice.insertHistory(bankCode, sendAccount, sendId, sendBalance, receiveAccount, money);
				
				return "/jsp/account/completeTransfer.jsp";
			}
			
		}else {
			// 타행이체
			
			boolean result = Aservice.transferOther(bankCode, sendAccount, receiveAccount, money, password);
			if(result) {
				AccountVO account = Aservice.searchAccountNo(sendAccount);
				String sendBalance = account.getBalance() + "";	// 거래 후 잔액
				String sendId = account.getId();	// 거래자 명
				// 거래내역 기록
				Hservice.insertHistory(bankCode, sendAccount, sendId, sendBalance, receiveAccount, money);
				
				return "/jsp/account/completeTransfer.jsp";				
			}
		}
		
		
		
		return "/index.do";
	}

}
