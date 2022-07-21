package kr.ac.kopo.vo;

public class BankVO {
	private String bankCode;
	private String bankName;
	private String establish;
	
	
	public BankVO() {}


	public BankVO(String bankCode, String bankName, String establish) {
		super();
		this.bankCode = bankCode;
		this.bankName = bankName;
		this.establish = establish;
	}


	public String getBankCode() {
		return bankCode;
	}


	public void setBankCode(String bankCode) {
		this.bankCode = bankCode;
	}


	public String getBankName() {
		return bankName;
	}


	public void setBankName(String bankName) {
		this.bankName = bankName;
	}


	public String getEstablish() {
		return establish;
	}


	public void setEstablish(String establish) {
		this.establish = establish;
	}


	@Override
	public String toString() {
		return "BankVO [bankCode=" + bankCode + ", bankName=" + bankName + ", establish=" + establish + "]";
	}
	
}
