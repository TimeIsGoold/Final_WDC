package com.tig.wdc.admin.model.dto;

import java.sql.Date;

public class ReportDetailDTO {

	private int reportNo;
	private String reportTitle;
	private String reportedId;
	private String reportedNmae;
	private java.sql.Date reportDate;
	private String reason;
	private String imgPath;
	private String reportStatua;
	public ReportDetailDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReportDetailDTO(int reportNo, String reportTitle, String reportedId, String reportedNmae, Date reportDate,
			String reason, String imgPath, String reportStatua) {
		super();
		this.reportNo = reportNo;
		this.reportTitle = reportTitle;
		this.reportedId = reportedId;
		this.reportedNmae = reportedNmae;
		this.reportDate = reportDate;
		this.reason = reason;
		this.imgPath = imgPath;
		this.reportStatua = reportStatua;
	}
	public int getReportNo() {
		return reportNo;
	}
	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
	}
	public String getReportTitle() {
		return reportTitle;
	}
	public void setReportTitle(String reportTitle) {
		this.reportTitle = reportTitle;
	}
	public String getReportedId() {
		return reportedId;
	}
	public void setReportedId(String reportedId) {
		this.reportedId = reportedId;
	}
	public String getReportedNmae() {
		return reportedNmae;
	}
	public void setReportedNmae(String reportedNmae) {
		this.reportedNmae = reportedNmae;
	}
	public java.sql.Date getReportDate() {
		return reportDate;
	}
	public void setReportDate(java.sql.Date reportDate) {
		this.reportDate = reportDate;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	public String getReportStatua() {
		return reportStatua;
	}
	public void setReportStatua(String reportStatua) {
		this.reportStatua = reportStatua;
	}
	@Override
	public String toString() {
		return "ReportDetailDTO [reportNo=" + reportNo + ", reportTitle=" + reportTitle + ", reportedId=" + reportedId
				+ ", reportedNmae=" + reportedNmae + ", reportDate=" + reportDate + ", reason=" + reason + ", imgPath="
				+ imgPath + ", reportStatua=" + reportStatua + "]";
	}
	
	
	
}
