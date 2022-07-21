package kr.ac.kopo.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.BoardService;
import kr.ac.kopo.vo.BoardVO;

public class BoardDetailController implements Controller {
	
	private BoardService service;
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("userVO") != null) {
			service = new BoardService();
			int no = Integer.parseInt(request.getParameter("no"));			
			// 특정번호 게시글
			BoardVO board = service.selectOneBoard(no);
			
			request.setAttribute("board", board);
			
			return "/jsp/board/detail.jsp";
		}
		
		return "redirect:/login.do";
		
	}

}
