package kr.ac.kopo.dao;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.MyConfig;
import kr.ac.kopo.vo.MemberVO;


public class MemberDAO {

	private SqlSession session;
	
	public MemberDAO() {
		session = new MyConfig().getInstance();
		System.out.println("session : " + session);
	}
	
	/**
	 * 회원가입
	 */
	public void insert(MemberVO member) {
		session.insert("dao.MemberDAO.insertMember", member);
		session.commit();
		System.out.println("삽입 완료");
	}
	
	/**
	 * 로그인
	 */
	public MemberVO login(String id, String password) {
		MemberVO vo = new MemberVO();
		vo.setId(id);
		vo.setPassword(password);
		
		MemberVO member = session.selectOne("dao.MemberDAO.selectById", vo);
		
		if(member != null) {
			return member;
		}
		
		return null;
	}
	
	
}
