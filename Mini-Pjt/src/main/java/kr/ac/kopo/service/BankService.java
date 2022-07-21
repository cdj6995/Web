package kr.ac.kopo.service;

import kr.ac.kopo.dao.BankDAO;
import kr.ac.kopo.vo.BankVO;

public class BankService {
	
	private BankDAO bankDao;
	
	public BankService() {
		bankDao = new BankDAO();
	}
	
	/**
	 * 은행명으로 은행 조회
	 */
	public BankVO selectByName(String bankName) {
		
		BankVO bank = bankDao.selectByName(bankName);
		
		return bank;
	}
	
}
