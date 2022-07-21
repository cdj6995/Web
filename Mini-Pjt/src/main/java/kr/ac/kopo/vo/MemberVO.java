package kr.ac.kopo.vo;

public class MemberVO {
	private String id;
	private String name;
	private String password;
	private String gender;
	private String tel;
	private String email;
	private String openBank;
	private String post;
	private String addr;
	private String detailaddr;
	private String regDate;
	
	public MemberVO() {}

	
	public MemberVO(String id, String name, String email, String type, String regDate) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.regDate = regDate;
	}

	
	public MemberVO(String id, String name, String password, String gender, String tel, String email, String openBank, String post,
			String addr, String detailaddr, String regDate) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.gender = gender;
		this.tel = tel;
		this.email = email;
		this.openBank = openBank;
		this.post = post;
		this.addr = addr;
		this.detailaddr = detailaddr;
		this.regDate = regDate;
	}

	
	
	public String getOpenBank() {
		return openBank;
	}


	public void setOpenBank(String openBank) {
		this.openBank = openBank;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
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


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPost() {
		return post;
	}


	public void setPost(String post) {
		this.post = post;
	}


	public String getAddr() {
		return addr;
	}


	public void setAddr(String addr) {
		this.addr = addr;
	}


	public String getDetailaddr() {
		return detailaddr;
	}


	public void setDetailaddr(String detailaddr) {
		this.detailaddr = detailaddr;
	}


	public String getRegDate() {
		return regDate;
	}


	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}


	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", name=" + name + ", password=" + password + ", gender=" + gender + ", tel="
				+ tel + ", email=" + email + ", openBank=" + openBank + ", post=" + post + ", addr=" + addr
				+ ", detailaddr=" + detailaddr + ", regDate=" + regDate + "]";
	}

}
