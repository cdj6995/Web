package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.board.service.BoardService;
import kr.ac.kopo.board.vo.BoardVO;

public class BoardDetailController implements Controller {
	
	private BoardService service;
	
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		service = new BoardService();
		
		int no = Integer.parseInt(request.getParameter("no"));
		int viewCnt = Integer.parseInt(request.getParameter("viewCnt"));
		
		
		service.addViewCnt(++viewCnt, no);
		BoardVO board = service.selectByNo(no);
		
		request.setAttribute("board", board);
		
		return "/jsp/board/detail.jsp?no="+no+"viewCnt="+viewCnt;
	}

}
