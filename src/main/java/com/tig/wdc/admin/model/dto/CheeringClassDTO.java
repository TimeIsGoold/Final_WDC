package com.tig.wdc.admin.model.dto;

import java.sql.Date;

public class CheeringClassDTO {

	private int clsNo;
	private java.sql.Date firstDecision;
	private java.sql.Date enrollDate;
	private String title;
	private String teName;
	private int categoryNo;
	private int cheeringCnt;
	
	public CheeringClassDTO() {}
	
	public CheeringClassDTO(int clsNo, Date firstDecision, Date enrollDate, String title, String teName, int categoryNo,
			int cheeringCnt) {
		super();
		this.clsNo = clsNo;
		this.firstDecision = firstDecision;
		this.enrollDate = enrollDate;
		this.title = title;
		this.teName = teName;
		this.categoryNo = categoryNo;
		this.cheeringCnt = cheeringCnt;
	}
	
	public int getClsNo() {
		return clsNo;
	}
	public void setClsNo(int clsNo) {
		this.clsNo = clsNo;
	}
	public java.sql.Date getFirstDecision() {
		return firstDecision;
	}
	public void setFirstDecision(java.sql.Date firstDecision) {
		this.firstDecision = firstDecision;
	}
	public java.sql.Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(java.sql.Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTeName() {
		return teName;
	}
	public void setTeName(String teName) {
		this.teName = teName;
	}
	public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
	public int getCheeringCnt() {
		return cheeringCnt;
	}
	public void setCheeringCnt(int cheeringCnt) {
		this.cheeringCnt = cheeringCnt;
	}
	
	@Override
	public String toString() {
		return "CheeringClassDTO [clsNo=" + clsNo + ", firstDecision=" + firstDecision + ", enrollDate=" + enrollDate
				+ ", title=" + title + ", teName=" + teName + ", categoryNo=" + categoryNo + ", cheeringCnt="
				+ cheeringCnt + "]";
	}
	
	
}
