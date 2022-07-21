package kr.ac.kopo.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.BoardService;
import kr.ac.kopo.vo.MemberVO;

public class BoardWriteProcessController implements Controller {
	
	private BoardService service;

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		
		service = new BoardService();
		HttpSession session = request.getSession();
		MemberVO userVO = (MemberVO)session.getAttribute("userVO");
		
		String writer = userVO.getId();
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		service.write(writer, title, content);
		
		return "redirect:/board/list.do";
	}

}
