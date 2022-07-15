package kr.ac.kopo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.MyConfig;
import kr.ac.kopo.vo.AccountVO;

public class AccountDAO {

	private SqlSession session;

	public AccountDAO() {
		session = new MyConfig().getInstance();
		/* System.out.println("session : " + session); */
	}
	
	
	/**
	 * 계좌개설
	 */
	public void insert(AccountVO account) {
		System.out.println(account.toString());
		session.insert("dao.AccountDAO.insertAccount", account);
		session.commit();
		System.out.println("삽입 완료");
	}
	
	/**
	 * 해당 아이디 계좌조회
	 */
	public List<AccountVO> searchAccount(String id){
		
		List<AccountVO> accountList = session.selectList("dao.AccountDAO.selectById", id);
		return accountList;
	}
	
	/**
	 * 당행 이체하기
	 */
	public void transfer(Map<String, String> sendMap, Map<String, String> receiveMap) {
		System.out.println(3);
		session.update("dao.AccountDAO.minusTransfer", sendMap);
		session.update("dao.AccountDAO.plusTransfer", receiveMap);
	}
	
	/**
	 * 계좌 비밀번호 확인
	 */
	public boolean comparePassword(String sendAccount, String password) {
		
		AccountVO account = session.selectOne("dao.AccountDAO.selectOne", sendAccount);
		if(password.equals(account.getPassword())) {
			return true;			
		}
		return false;
	}
}
