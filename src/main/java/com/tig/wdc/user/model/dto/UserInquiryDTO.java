package com.tig.wdc.user.model.dto;

import java.sql.Date;

public class UserInquiryDTO {

	private int queNo;
	private String queContent;
	private Date queDate;
	private String queVisibleYn;
	private String userName;
	private int clsNo;
	private InquiryAnswerDTO answer;

	public UserInquiryDTO() {
		super();
	}

	public UserInquiryDTO(int queNo, String queContent, Date queDate, String queVisibleYn, String userName, int clsNo,
			InquiryAnswerDTO answer) {
		super();
		this.queNo = queNo;
		this.queContent = queContent;
		this.queDate = queDate;
		this.queVisibleYn = queVisibleYn;
		this.userName = userName;
		this.clsNo = clsNo;
		this.answer = answer;
	}

	public int getQueNo() {
		return queNo;
	}

	public void setQueNo(int queNo) {
		this.queNo = queNo;
	}

	public String getQueContent() {
		return queContent;
	}

	public void setQueContent(String queContent) {
		this.queContent = queContent;
	}

	public Date getQueDate() {
		return queDate;
	}

	public void setQueDate(Date queDate) {
		this.queDate = queDate;
	}

	public String getQueVisibleYn() {
		return queVisibleYn;
	}

	public void setQueVisibleYn(String queVisibleYn) {
		this.queVisibleYn = queVisibleYn;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getClsNo() {
		return clsNo;
	}

	public void setClsNo(int clsNo) {
		this.clsNo = clsNo;
	}

	public InquiryAnswerDTO getAnswer() {
		return answer;
	}

	public void setAnswer(InquiryAnswerDTO answer) {
		this.answer = answer;
	}

	@Override
	public String toString() {
		return "UserInquiryDTO [queNo=" + queNo + ", queContent=" + queContent + ", queDate=" + queDate
				+ ", queVisibleYn=" + queVisibleYn + ", userName=" + userName + ", clsNo=" + clsNo + ", answer="
				+ answer + "]";
	}

}
