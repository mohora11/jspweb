package ch08;

public class book {
//	클래스는 기본 생성자를 가지고 있어야 한다.
//	클래스의 속성들은 get, set 혹은 표준 명명법을 
//	따르는 메서드들을 사용해 접근할 수 있어야 한다.
	private String code;
	private String title;
	private String writer;
	private String publisher;
	private int price;
	private boolean out;
	
	public boolean isOut() { //boolean 타입일경우 프로퍼티 앞에 is (관례)
		return out;
	}
	
	public void setOut(boolean out) {
		this.out = out;
	}

	public String getCode() { // get을 뺀 code는 프로퍼티 그리고 C를 소문자로
		return code;
	}

	public void setCode(String code) {
		this.code = code;
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

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
}