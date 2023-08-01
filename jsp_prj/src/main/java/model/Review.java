package model;

import java.sql.Date;

public class Review {
	
	private int num;
	private int pro_num;
	private String writer;
	private String content;
	private Date date_time;
	
	
	public Review() {
		super();
	}

	public Review(int num, int pro_num, String writer, String content, Date date_time) {
		super();
		this.num = num;
		this.pro_num = pro_num;
		this.writer = writer;
		this.content = content;
		this.date_time = date_time;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getPro_num() {
		return pro_num;
	}

	public void setPro_num(int pro_num) {
		this.pro_num = pro_num;
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

	public Date getDate_time() {
		return date_time;
	}

	public void setDate_time(Date date_time) {
		this.date_time = date_time;
	}

	@Override
	public String toString() {
		return "Review [num=" + num + ", pro_num=" + pro_num + ", writer=" + writer + ", content=" + content
				+ ", date_time=" + date_time + "]";
	}
	
	
	
}
