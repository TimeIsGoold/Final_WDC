package com.tig.wdc.admin.model.dto;

import java.util.Date;

public class CouponDTO {

	private int couponNo;
	private String couponType;
	private String couponName;
	private int discount;
	private java.util.Date issueDate;
	private java.util.Date startDate;
	private java.util.Date endDate;
	private String useStatus;
	
	public CouponDTO() {
		super();
	}

	public CouponDTO(int couponNo, String couponType, String couponName, int discount, Date issueDate, Date startDate,
			Date endDate, String useStatus) {
		super();
		this.couponNo = couponNo;
		this.couponType = couponType;
		this.couponName = couponName;
		this.discount = discount;
		this.issueDate = issueDate;
		this.startDate = startDate;
		this.endDate = endDate;
		this.useStatus = useStatus;
	}

	public int getCouponNo() {
		return couponNo;
	}

	public void setCouponNo(int couponNo) {
		this.couponNo = couponNo;
	}

	public String getCouponType() {
		return couponType;
	}

	public void setCouponType(String couponType) {
		this.couponType = couponType;
	}

	public String getCouponName() {
		return couponName;
	}

	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public java.util.Date getIssueDate() {
		return issueDate;
	}

	public void setIssueDate(java.util.Date issueDate) {
		this.issueDate = issueDate;
	}

	public java.util.Date getStartDate() {
		return startDate;
	}

	public void setStartDate(java.util.Date startDate) {
		this.startDate = startDate;
	}

	public java.util.Date getEndDate() {
		return endDate;
	}

	public void setEndDate(java.util.Date endDate) {
		this.endDate = endDate;
	}

	public String getUseStatus() {
		return useStatus;
	}

	public void setUseStatus(String useStatus) {
		this.useStatus = useStatus;
	}

	@Override
	public String toString() {
		return "CouponDTO [couponNo=" + couponNo + ", couponType=" + couponType + ", couponName=" + couponName
				+ ", discount=" + discount + ", issueDate=" + issueDate + ", startDate=" + startDate + ", endDate="
				+ endDate + ", useStatus=" + useStatus + "]";
	}
	
}
