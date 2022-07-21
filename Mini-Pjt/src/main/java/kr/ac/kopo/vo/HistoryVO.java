package kr.ac.kopo.vo;

public class HistoryVO {
	private int no;
	private String accountNO;
	private String sendName;
	private String opponentAcc;
	private int amount;
	private int sendBalance;
	private String regDate;
	private String regTime;
	
	public HistoryVO() {}
	
	public HistoryVO(int no, String accountNO, String sendName, String opponentAcc, int amount,
			int sendBalance, String regDate, String regTime) {
		super();
		this.no = no;
		this.accountNO = accountNO;
		this.sendName = sendName;
		this.opponentAcc = opponentAcc;
		this.amount = amount;
		this.sendBalance = sendBalance;
		this.regDate = regDate;
		this.regTime = regTime;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getAccountNO() {
		return accountNO;
	}

	public void setAccountNO(String accountNO) {
		this.accountNO = accountNO;
	}

	public String getSendName() {
		return sendName;
	}

	public void setSendName(String sendName) {
		this.sendName = sendName;
	}

	public String getOpponentAcc() {
		return opponentAcc;
	}

	public void setOpponentAcc(String opponentAcc) {
		this.opponentAcc = opponentAcc;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getSendBalance() {
		return sendBalance;
	}

	public void setSendBalance(int sendBalance) {
		this.sendBalance = sendBalance;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getRegTime() {
		return regTime;
	}

	public void setRegTime(String regTime) {
		this.regTime = regTime;
	}

	@Override
	public String toString() {
		return "HistoryVO [no=" + no + ", accountNO=" + accountNO + ", sendName=" + sendName + ", opponentAcc="
				+ opponentAcc + ", amount=" + amount + ", sendBalance=" + sendBalance + ", regDate=" + regDate
				+ ", regTime=" + regTime + "]";
	}

	
	
}
