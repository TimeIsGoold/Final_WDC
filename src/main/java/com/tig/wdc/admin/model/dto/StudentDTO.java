package com.tig.wdc.admin.model.dto;

import java.sql.Date;

public class StudentDTO {

	private int studentnNo;      		  // 회원 번호
	private String type;        		  // 회원타입
	private String id;         		      // 회원 아이디
	private String email;      		      // 회원 이메일
	private String phone;       		  // 회원 휴대폰 번호
	private String birth;        		  // 회원 생년 월일
	private java.sql.Date enrollDate;     // 가입일
	private int reportedCnt;              // 누적 신고일
	
	
	public StudentDTO() {}
	
	
	public StudentDTO(int studentnNo, String type, String id, String email, String phone, String birth, Date enrollDate,
			int reportedCnt) {
		super();
		this.studentnNo = studentnNo;
		this.type = type;
		this.id = id;
		this.email = email;
		this.phone = phone;
		this.birth = birth;
		this.enrollDate = enrollDate;
		this.reportedCnt = reportedCnt;
	}
	
	
	public int getStudentnNo() {
		return studentnNo;
	}
	public void setStudentnNo(int studentnNo) {
		this.studentnNo = studentnNo;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public java.sql.Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(java.sql.Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	public int getReportedCnt() {
		return reportedCnt;
	}
	public void setReportedCnt(int reportedCnt) {
		this.reportedCnt = reportedCnt;
	}
	
	
	@Override
	public String toString() {
		return "StudentDTO [studentnNo=" + studentnNo + ", type=" + type + ", id=" + id + ", email=" + email
				+ ", phone=" + phone + ", birth=" + birth + ", enrollDate=" + enrollDate + ", reportedCnt="
				+ reportedCnt + "]";
	}

}
