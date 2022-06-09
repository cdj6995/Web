package kr.ac.kopo.board;

/*
	자바빈즈 클래스 규칙
	1. 패키지를 포함
	2. class 접근 제한자는 public
	3. 기본 생성자 선언
	4. 멤버변수 접근 제한자는 private
	5. setter/getter 메소드 존재
 */

public class BoardVO {
	private int no;
	private String title;
	
	public BoardVO() {}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	
}
