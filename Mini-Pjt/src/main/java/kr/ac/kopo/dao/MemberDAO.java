package kr.ac.kopo.dao;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.MyConfig;
import kr.ac.kopo.vo.MemberVO;


public class MemberDAO {

	private SqlSession session;
	
	public MemberDAO() {
		session = new MyConfig().getInstance();
		/* System.out.println("session : " + session); */
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
	 * 회원정보 가져오기
	 */
	public MemberVO getUser(String id) {
		MemberVO member = session.selectOne("dao.MemberDAO.getById", id);
		return member;
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
	/**
	 * 카카오로그인
	 */
	public MemberVO apiLogin(String name, String email) {
		MemberVO vo = new MemberVO();
		vo.setName(name);
		vo.setEmail(email);
		
		MemberVO member = session.selectOne("dao.MemberDAO.selectByName", vo);
		
		if(member != null) {
			return member;
		}
		
		return null;
	}
	
	/**
	 * 오픈뱅킹 가입
	 */
	public void updateOpenBank(String id) {
		System.out.println("들어가기 직전");
		session.update("dao.MemberDAO.updateOpenBank", id);
		session.commit();
	}
	
	
}
