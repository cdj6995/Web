package kr.ac.kopo.board.service;

import java.util.List;

import kr.ac.kopo.board.dao.BoardDAO;
import kr.ac.kopo.board.vo.BoardVO;

public class BoardService {

	private BoardDAO boardDao;
	
	public BoardService() {
		boardDao = new BoardDAO();
	}
	
	/**
	 *	전체게시글 조회
	 */
	public List<BoardVO> selectAllBoard() {
		List<BoardVO> boardList =  boardDao.selectAll();
		return boardList;
	}
	
	/**
	 * 게시글 등록
	 */
	public void addBoard(BoardVO board) {
		
		int no = boardDao.selectBoardNo();
		board.setNo(no);
		
		boardDao.insertBoard(board);
	}
	
	/**
	 * 특정 번호의 게시글 조회
	 */
	public BoardVO selectByNo(int no) {
		BoardVO board = boardDao.selectByNo(no);
		
		return board;
	}
	
	/**
	 * 조회수 증가
	 */
	public void addViewCnt(int viewCnt, int no) {
		boardDao.addViewCnt(viewCnt, no);
	}
}
