package kh.web.beans;

public class BoardDTO {
	private int seq;
	private String no;
	private String title;
	private String contents;
	private String writer;
	private String write_date;
	
	public BoardDTO() {
		super();
	}
	
	public BoardDTO(int seq, String no, String title, String contents, String writer, String write_date) {
		super();
		this.seq = seq;
		this.no = no;
		this.title = title;
		this.contents = contents;
		this.writer = writer;
		this.write_date = write_date;
	}
	
	
	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getWrite_date() {
		return write_date;
	}
	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}
	
	
}
