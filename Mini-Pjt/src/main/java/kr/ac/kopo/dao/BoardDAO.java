package kr.ac.kopo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.MyConfig;
import kr.ac.kopo.vo.BoardVO;

public class BoardDAO {
	
	private SqlSession session;
	
	public BoardDAO() {
		session = new MyConfig().getInstance();
		System.out.println("session : " + session);
	}
	
	/**
	 * 새글작성
	 */
	public void write(BoardVO board) {
		session.insert("dao.BoardDAO.insertBoard", board);
		session.commit();
		System.out.println("삽입완료");
	}
	
	/**
	 * 댓글작성
	 */
	public void insertComment(BoardVO board) {
		session.insert("dao.BoardDAO.insertCommentBoard", board);
		session.commit();
		System.out.println("삽입완료");
	}
	
	/**
	 * 전체 게시글 조회
	 */
	public List<BoardVO> selectAllBoard(){
		List<BoardVO> boardList = session.selectList("dao.BoardDAO.selectAllBoard");
		return boardList;
	}
	
	/**
	 * 특정 게시글 조회
	 */
	public BoardVO selectOneBoard(int no) {
		// 조회수 증가
		session.update("dao.BoardDAO.updateViewCnt", no);
		session.commit();
		BoardVO board = session.selectOne("dao.BoardDAO.selectOneBoard", no);
		
		return board;
	}
	
}
