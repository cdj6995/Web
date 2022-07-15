package kr.ac.kopo.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.ac.kopo.board.vo.BoardVO;
import kr.ac.kopo.util.ConnectionFactory;
import kr.ac.kopo.util.JDBCClose;

/*
	t_board 테이블의 CRUD 담당 클래스
 */
public class BoardDAO {

	/**
		전체 게시글 조회 메소드
	 */
	public List<BoardVO> selectAll(){
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		List<BoardVO> list = new ArrayList();
		
		try {
			conn = new ConnectionFactory().getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append("select no, title, writer, view_cnt, to_char(reg_date, 'yyyy-mm-dd') as reg_date ");
			sql.append(" from t_board ");
			sql.append(" order by no desc ");
			
			pstmt = conn.prepareStatement(sql.toString());
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int no = rs.getInt("no");
				String title = rs.getString("title");
				String writer = rs.getString("writer");
				int viewCnt = rs.getInt("view_cnt");
				String regDate = rs.getString("reg_date");
				
				BoardVO board = new BoardVO();
				board.setNo(no);
				board.setTitle(title);
				board.setWriter(writer);
				board.setViewCnt(viewCnt);
				board.setRegDate(regDate);
				
				list.add(board);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCClose.close(pstmt, conn);
		}
		
		return list;
	}
	
	/**
	 * 새글 등록을 위한 seq_t_board_no의 시퀀스 추출
	 */
	public int selectBoardNo() {
		
		String sql = "select seq_t_board_no.nextval from dual ";
		
		try(
				Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
		) {
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			return rs.getInt(1);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}
	
	/**
		새글 등록 
	 */
	public void insertBoard(BoardVO board) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = new ConnectionFactory().getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append("insert into t_board(no, title, writer, content) ");
			sql.append(" values(?, ?, ?, ?) ");
			
			int loc = 1;
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(loc++, board.getNo());
			pstmt.setString(loc++, board.getTitle());
			pstmt.setString(loc++, board.getWriter());
			pstmt.setString(loc++, board.getContent());
			
			pstmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCClose.close(pstmt, conn);
		}
		
	}
	
	/**
		no에 해당 게수물 조회 메소드
		결과가 레코드 하나만 나오기 때문에 리턴 타입이 BoardVo!
	 */
	public BoardVO selectByNo(int no) {
		
		StringBuilder sql = new StringBuilder();
		sql.append("select no, title, writer, content, view_cnt, to_char(reg_date, 'yyyy-mm-dd') as regDate ");
		sql.append(" from t_board ");
		sql.append(" where no = ?");
		
		try(
			Connection conn = new ConnectionFactory().getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());	
		) {
			pstmt.setInt(1, no);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				int boardNo = rs.getInt("no");
				String title = rs.getString("title");
				String writer = rs.getString("writer");
				String content = rs.getString("content");
				int viewCnt = rs.getInt("view_cnt");
				String regDate = rs.getString("regDate");
				
				BoardVO board = new BoardVO(boardNo, title, writer, content, viewCnt, regDate);
				return board;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 조회수 증가시키기
	 */
	public void addViewCnt(int viewCnt, int no) {
		
		StringBuilder sql = new StringBuilder();
		sql.append(" update t_board set view_cnt = ? where no = ?");
		
		try(
			Connection conn = new ConnectionFactory().getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		) {
			pstmt.setInt(1, viewCnt);
			pstmt.setInt(2, no);
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


}






