package kr.ac.kopo.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.BoardService;
import kr.ac.kopo.vo.BoardVO;

public class BoardCommentController implements Controller {
	
	private BoardService service;
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		service = new BoardService();
		
		
		int no = Integer.parseInt(request.getParameter("no"));			
		// 특정번호 게시글
		BoardVO board = service.selectOneBoard(no);
		
		request.setAttribute("board", board);
		
		return "/jsp/board/comment.jsp";
	}

}
