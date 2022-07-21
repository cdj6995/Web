package kr.ac.kopo.dao;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.MyConfig;
import kr.ac.kopo.vo.BankVO;

public class BankDAO {

	private SqlSession session;

	public BankDAO() {
		session = new MyConfig().getInstance();
		/* System.out.println("session : " + session); */
	}
	
	/**
	 * 은행명으로 은행 코드 조회
	 */
	public BankVO selectByName(String bankName) {
		BankVO bank = session.selectOne("dao.BankDAO.selectByName", bankName);
		return bank;
	}
}
