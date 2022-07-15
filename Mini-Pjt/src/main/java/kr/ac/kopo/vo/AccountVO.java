package kr.ac.kopo.vo;

public class AccountVO {
	private String accountNo;
	private String bankCode;
	private String id;
	private String type;
	private String name;
	private String password;
	private int balance;
	
	public AccountVO() {
		super();
	}

	public AccountVO(String accountNo, String bankCode, String id, String type, String name, String password,
			int balance) {
		super();
		this.accountNo = accountNo;
		this.bankCode = bankCode;
		this.id = id;
		this.type = type;
		this.name = name;
		this.password = password;
		this.balance = balance;
	}

	public String getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}

	public String getBankCode() {
		return bankCode;
	}

	public void setBankCode(String bankCode) {
		this.bankCode = bankCode;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getBalance() {
		return balance;
	}

	public void setBalance(int balance) {
		this.balance = balance;
	}

	@Override
	public String toString() {
		return "AccountVO [accountNo=" + accountNo + ", bankCode=" + bankCode + ", id=" + id + ", type=" + type
				+ ", name=" + name + ", password=" + password + ", balance=" + balance + "]";
	}
	
	
}
