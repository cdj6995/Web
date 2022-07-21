package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.dao.BoardDAO;
import kr.ac.kopo.vo.BoardVO;

public class BoardService {
	
	private BoardDAO boardDao;
	
	public BoardService() {
		boardDao = new BoardDAO();
	}
	
	
	/**
	 * 전체 게시글 조횐
	 */
	public List<BoardVO> selectAllBoard(){
		List<BoardVO> boardList = boardDao.selectAllBoard();
		return boardList;
	}
	
	/**
	 * 특정 게시글 조회
	 */
	public BoardVO selectOneBoard(int no) {
		
		BoardVO board = boardDao.selectOneBoard(no);
		return board;
	}
	
	
	/**
	 * 새글 작성
	 */
	public void write(String writer, String title, String content) {
		BoardVO board = new BoardVO(title, writer, content);
		boardDao.write(board);
	}
	
	/**
	 * 댓글 작성
	 */
	public void insertComment(int groupNo, int orderNo, int parent, String title, String writer, String content) {
		BoardVO board = new BoardVO(groupNo, orderNo, parent, title, writer, content);
		boardDao.insertComment(board);
	}

}
