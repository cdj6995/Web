package kr.ac.kopo.controller.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.BoardService;
import kr.ac.kopo.vo.BoardVO;

public class BoardListController implements Controller {
	
	 private BoardService service;
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		
		service = new BoardService();
		List<BoardVO> boardList = service.selectAllBoard();
		
		request.setAttribute("boardList", boardList);
		
		return "/jsp/board/list.jsp";
	}
}
