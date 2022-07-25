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
	public List<AccountVO> searchAccount(String tel){
		List<AccountVO> accountList = session.selectList("dao.AccountDAO.selectById", tel);
		return accountList;
	}
	
	
	public List<AccountVO> searchOpenAccount(String tel){
		List<AccountVO> accountList = session.selectList("dao.AccountDAO.selectById", tel);
		/*
		 * List<AccountVO> accountList1 =
		 * session.selectList("dao.AccountDAO.selectById1", tel); List<AccountVO>
		 * accountList2 = session.selectList("dao.AccountDAO.selectById2", tel);
		 * List<AccountVO> accountList4 =
		 * session.selectList("dao.AccountDAO.selectById4", tel);
		 * 
		 * accountList.addAll(accountList1); accountList.addAll(accountList2);
		 * accountList.addAll(accountList4);
		 */
		return accountList;
	}
	
	
	/**
	 * 해당 계좌번호 계좌조회
	 */
	public AccountVO searchAccountNo(String accountno){
		
		AccountVO account = session.selectOne("dao.AccountDAO.selectOne", accountno);
		return account;
	}
	
	/**
	 * 입금하기
	 */
	public void input(Map<String, String> inputMap) {
		session.update("dao.AccountDAO.plusTransfer", inputMap);
		session.commit();
		System.out.println("입금완료");
	}
	
	/**
	 * 출금하기
	 */
	public void output(Map<String, String> outputMap) {
		session.update("dao.AccountDAO.minusTransfer", outputMap);
		session.commit();
		System.out.println("출금완료");
	}
	
	/**
	 * 당행 이체하기
	 */
	public void transfer(Map<String, String> sendMap, Map<String, String> receiveMap) {
		System.out.println(3);
		session.update("dao.AccountDAO.minusTransfer", sendMap);
		session.update("dao.AccountDAO.plusTransfer", receiveMap);
		session.commit();
		System.out.println("이체완료");
	}
	
	
	/**
	 * 타행 이체하기
	 */
	public void transferOther(Map<String, String> sendMap, Map<String, String> receiveMap) {
		
		if(receiveMap.get("bankCode").equals("D004")) {
			// 수민
			session.update("dao.AccountDAO.minusTransferOther", sendMap);
			session.update("dao.AccountDAO.plusTransferOther4", receiveMap);
			session.commit();
			System.out.println("이체완료");
		} else if(receiveMap.get("bankCode").equals("D002")) {
			// 선
			session.update("dao.AccountDAO.minusTransferOther", sendMap);
			session.update("dao.AccountDAO.plusTransferOther2", receiveMap);
			session.commit();
			System.out.println("이체완료");
		} else {
			// 재철형
			session.update("dao.AccountDAO.minusTransferOther", sendMap);
			session.update("dao.AccountDAO.plusTransferOther1", receiveMap);
			session.commit();
			System.out.println("이체완료");			
		}
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
