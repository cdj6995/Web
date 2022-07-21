package kr.ac.kopo.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.ac.kopo.dao.HistoryDAO;
import kr.ac.kopo.vo.HistoryVO;

public class HistoryService {

	private HistoryDAO historyDao;
	
	public HistoryService() {
		historyDao = new HistoryDAO();
	}
	
	/**
	 * 거래내역 생성
	 */
	public void insertHistory(String bankCode, String sendAccount, String sendId, String sendBalance, String receiveAccount, String money) {
		Map<String, String> hisMap = new HashMap<>();
		hisMap.put("bankCode", bankCode);
		hisMap.put("sendAccount", sendAccount);
		hisMap.put("sendId", sendId);
		hisMap.put("sendBalance", sendBalance);
		hisMap.put("receiveAccount", receiveAccount);
		hisMap.put("money", money);
		
		historyDao.insertHistory(hisMap);
	}
	
	/**
	 * 해당 계좌 거래내역 조회
	 */
	public List<HistoryVO> selectHistory(String accountNo){
		List<HistoryVO> historyList = historyDao.selectHistory(accountNo);
		return historyList;
	}
}
