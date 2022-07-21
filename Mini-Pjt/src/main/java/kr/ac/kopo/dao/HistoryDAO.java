package kr.ac.kopo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.MyConfig;
import kr.ac.kopo.vo.HistoryVO;

public class HistoryDAO {
	
private SqlSession session;
	
	public HistoryDAO() {
		session = new MyConfig().getInstance();
	}
	
	
	/**
	 * 거래내역 생성
	 */
	public void insertHistory(Map<String, String> hisMap) {
		session.insert("dao.HistoryDAO.insertHis", hisMap);
		
		if(hisMap.get("bankCode").equals("0002")) {
			session.insert("dao.HistoryDAO.insertTransfer2", hisMap);			
		} else if(hisMap.get("bankCode").equals("0001")) {
			session.insert("dao.HistoryDAO.insertTransfer1", hisMap);
		}
		
		session.commit();
		System.out.println("거래내역 입력 완료");
	}
	
	/**
	 * 해당 계좌 거래내역 조회
	 */
	public List<HistoryVO> selectHistory(String accountNo){
		List<HistoryVO> historyList = session.selectList("dao.HistoryDAO.selectHis", accountNo);
		return historyList;
	}
}
