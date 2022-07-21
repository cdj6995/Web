package kr.ac.kopo.service;

import kr.ac.kopo.dao.MemberDAO;
import kr.ac.kopo.vo.MemberVO;

public class MemberService {

	private MemberDAO memberDao;

	public MemberService() {
		memberDao = new MemberDAO();
	}
	
	/**
	 * 회원 등록
	 */
	public void insertMember(MemberVO member) {
		memberDao.insert(member);
	}
	
	/**
	 * 오픈뱅킹 가입
	 */
	public void updateOpenBank(String id) {
		memberDao.updateOpenBank(id);
	}
	
	/**
	 * 회원정보 가져오기
	 */
	public MemberVO getUser(String id) {
		MemberVO member = memberDao.getUser(id);
		
		return member;
	}
	
	/**
	 * 로그인 정보 db랑 확인
	 */
	public MemberVO login(String id, String password) {
		MemberVO member = memberDao.login(id, password);
		
		if(member != null) {
			return member;
		}
		
		return null;
	}
	/**
	 * 카카오로그인 정보 db랑 확인
	 */
	public MemberVO apiLogin(String name, String email) {
		MemberVO member = memberDao.apiLogin(name, email);
		
		if(member != null) {
			return member;
		}
		
		return null;
	}
	
}
