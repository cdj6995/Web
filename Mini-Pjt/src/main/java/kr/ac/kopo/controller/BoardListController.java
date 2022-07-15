package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardListController implements Controller {
	
	// private BoardService service;
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		/*
		 * service = new BoardService(); 
		 * List<BoardVO> boardList = service.selectAllBoard();
		 * 
		 * request.setAttribute("list", boardList);
		 */
		
		return "/jsp/board/list.jsp";
	}
}
