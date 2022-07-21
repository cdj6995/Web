package kr.ac.kopo.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.BoardService;
import kr.ac.kopo.vo.BoardVO;
import kr.ac.kopo.vo.MemberVO;

public class BoardCommentProcessController implements Controller {

	private BoardService service;
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		service = new BoardService();
		
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("userVO");
		
		int no = Integer.parseInt(request.getParameter("no"));

		// 부모 게시글
		BoardVO board = service.selectOneBoard(no);
		
		int groupNo = board.getGroupNo();
		int orderNo = board.getOrderNo();
		int parent = no;
		String writer = member.getId();
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		System.out.println(title);
		System.out.println(content);
		
		service.insertComment(groupNo, orderNo, parent, title, writer, content);
		
		
		return "redirect:/board/list.do";
	}

}
