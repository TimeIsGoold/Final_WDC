package com.tig.wdc.user.model.dto;

import java.sql.Date;

/**
 * @author SORA
 * 클래스 신청 정보 DTO
 */
public class ClassApplyDTO {

	private int aplNo;
	private int ppl;
	private Date aplDate;
	private int userNo;
	private String attStatus;
	private int scheduleNo;

	public ClassApplyDTO() {
		super();
	}

	public ClassApplyDTO(int aplNo, int ppl, Date aplDate, int userNo, String attStatus, int scheduleNo) {
		super();
		this.aplNo = aplNo;
		this.ppl = ppl;
		this.aplDate = aplDate;
		this.userNo = userNo;
		this.attStatus = attStatus;
		this.scheduleNo = scheduleNo;
	}

	public int getAplNo() {
		return aplNo;
	}

	public void setAplNo(int aplNo) {
		this.aplNo = aplNo;
	}

	public int getPpl() {
		return ppl;
	}

	public void setPpl(int ppl) {
		this.ppl = ppl;
	}

	public Date getAplDate() {
		return aplDate;
	}

	public void setAplDate(Date aplDate) {
		this.aplDate = aplDate;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getAttStatus() {
		return attStatus;
	}

	public void setAttStatus(String attStatus) {
		this.attStatus = attStatus;
	}

	public int getScheduleNo() {
		return scheduleNo;
	}

	public void setScheduleNo(int scheduleNo) {
		this.scheduleNo = scheduleNo;
	}

	@Override
	public String toString() {
		return "ClassApplyDTO [aplNo=" + aplNo + ", ppl=" + ppl + ", aplDate=" + aplDate + ", userNo=" + userNo
				+ ", attStatus=" + attStatus + ", scheduleNo=" + scheduleNo + "]";
	}

}
