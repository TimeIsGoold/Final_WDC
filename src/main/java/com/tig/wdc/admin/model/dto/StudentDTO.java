package com.tig.wdc.admin.model.dto;

import java.sql.Date;

public class StudentDTO {

	private int studentNo;
	private String studentName;
	private String studentId;
	private java.sql.Date enrollDate;
	private int reportedCnt;
	
	public StudentDTO() {}
	
	public StudentDTO(int studentNo, String studentName, String studentId, Date enrollDate, int reportedCnt) {
		super();
		this.studentNo = studentNo;
		this.studentName = studentName;
		this.studentId = studentId;
		this.enrollDate = enrollDate;
		this.reportedCnt = reportedCnt;
	}
	
	public int getStudentNo() {
		return studentNo;
	}
	public void setStudentNo(int studentNo) {
		this.studentNo = studentNo;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
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
		return "StudentDTO [studentNo=" + studentNo + ", studentName=" + studentName + ", studentId=" + studentId
				+ ", enrollDate=" + enrollDate + ", reportedCnt=" + reportedCnt + "]";
	}
	
	
}
