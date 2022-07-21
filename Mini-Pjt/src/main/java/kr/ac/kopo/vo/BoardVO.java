package kr.ac.kopo.vo;

public class BoardVO {
	private int no;			// 게시글 번호
	private int groupNo;	// 그룹 번호
	private int orderNo;		// 그룹 내 순서
	private int parent;		// 부모 노드
	private String title;	// 제목
	private String writer;	// 작성자
	private String content;	// 내용
	private int viewCnt;	// 조회수
	private String regDate;	// 등록날짜
	
	
	public BoardVO() {}
	
	public BoardVO(String title, String writer, String content) {
		this.title = title;
		this.writer = writer;
		this.content = content;
	}
	
	

	public BoardVO(int groupNo, int orderNo, int parent, String title, String writer, String content) {
		super();
		this.groupNo = groupNo;
		this.orderNo = orderNo;
		this.parent = parent;
		this.title = title;
		this.writer = writer;
		this.content = content;
	}

	public BoardVO(int no, int groupNo, int orderNo, int parent, String title, String writer, String content,
			int viewCnt, String regDate) {
		super();
		this.no = no;
		this.groupNo = groupNo;
		this.orderNo = orderNo;
		this.parent = parent;
		this.title = title;
		this.writer = writer;
		this.content = content;
		this.viewCnt = viewCnt;
		this.regDate = regDate;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getGroupNo() {
		return groupNo;
	}

	public void setGroupNo(int groupNo) {
		this.groupNo = groupNo;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public int getParent() {
		return parent;
	}

	public void setParent(int parent) {
		this.parent = parent;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getViewCnt() {
		return viewCnt;
	}

	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "BoardVO [no=" + no + ", groupNo=" + groupNo + ", orderNo=" + orderNo + ", parent=" + parent + ", title="
				+ title + ", writer=" + writer + ", content=" + content + ", viewCnt=" + viewCnt + ", regDate="
				+ regDate + "]";
	}

}
