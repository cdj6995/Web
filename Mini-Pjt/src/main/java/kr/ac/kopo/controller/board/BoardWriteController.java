package kr.ac.kopo.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.BoardService;

public class BoardWriteController implements Controller {
	
	private BoardService service;

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		
		service = new BoardService();
		HttpSession session = request.getSession();
		
		if(session.getAttribute("userVO") != null) {
			// 로그인 되어있을 때
			return "/jsp/board/write.jsp";
		}
		// 로그인 되어있지 않을 때
		 request.setAttribute("loginMsg", "게시물 작성은 로그인이 필요합니다.");
		
		
		return "redirect:/login.do";
	}

}
