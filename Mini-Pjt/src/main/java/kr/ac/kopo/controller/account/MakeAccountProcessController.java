package kr.ac.kopo.controller.account;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.AccountService;
import kr.ac.kopo.vo.AccountVO;

public class MakeAccountProcessController implements Controller {

	private AccountService service;
	private AccountVO account;
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		
		service = new AccountService();
		account = new AccountVO();
		
		String id = request.getParameter("id");
		String type = request.getParameter("type");
		String sname = request.getParameter("sname");
		String password = request.getParameter("password");
		
		account.setId(id);
		account.setType(type);
		account.setName(sname);
		account.setPassword(password);
		
		service.insert(account);
		
		return "redirect:/";
	}

}
