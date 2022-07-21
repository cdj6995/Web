package kr.ac.kopo.controller.account;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.HistoryService;
import kr.ac.kopo.vo.HistoryVO;

public class HistoryController implements Controller {
	
	private HistoryService service;
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		service = new HistoryService();
		
		String accountNo = request.getParameter("accountNo");
		
		List<HistoryVO> historyList = service.selectHistory(accountNo);
		
		request.setAttribute("historyList", historyList);
		
		return "/jsp/account/history.jsp";
	}

}
