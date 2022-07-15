package kr.ac.kopo.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.ac.kopo.dao.AccountDAO;
import kr.ac.kopo.vo.AccountVO;

public class AccountService {

	private AccountDAO accountDao;

	public AccountService() {
		accountDao = new AccountDAO();
	}
	
	/**
	 * 계좌개설
	 */
	public void insert(AccountVO account) {
		// 랜덤으로 계좌번호 생성
		String accountNo = "830";	// 앞 세자리 은행 번호
		int num = (int)(Math.random()*1000000000)+1000000000;
		accountNo += num;
		
		account.setAccountNo(accountNo);
		
		accountDao.insert(account);
	}
	
	/**
	 * 해당 아이디의 계좌 찾기
	 */
	public List<AccountVO> searchAccount(String id){
		List<AccountVO> accountList = accountDao.searchAccount(id);
		return accountList;
	}
	
	/**
	 * 당행 이체하기
	 */
	public boolean transfer(String sendAccount, String receiveAccount, String money, String password) {
		System.out.println(2);
		boolean bool = accountDao.comparePassword(sendAccount, password);
		
		if(bool) {
			Map<String, String> sendMap= new HashMap<>();
			Map<String, String> receiveMap= new HashMap<>();
			
			sendMap.put("accountNo", sendAccount);
			sendMap.put("balance", money);
			receiveMap.put("accountNo", receiveAccount);
			receiveMap.put("balance", money);
			
			accountDao.transfer(sendMap, receiveMap);
			
			return true;
		}
		
		return false;
	}

}
