package com.tig.wdc.model.dto;

import java.sql.Date;

import org.springframework.stereotype.Component;

/**
 * @author 이해승
 * 정규과정 정보조회용
 */
@Component
public class RegularClassInfoDTO {

	private int scheduleNo;
	private int maxPeople;
	private int scheduleCount;
	private int applyCount;
	private Date start;
	private Date end;
	private String classTitle;
	private int nowCount;
	
	public RegularClassInfoDTO() {}

	public RegularClassInfoDTO(int scheduleNo, int maxPeople, int scheduleCount, int applyCount, Date start, Date end,
			String classTitle) {
		super();
		this.scheduleNo = scheduleNo;
		this.maxPeople = maxPeople;
		this.scheduleCount = scheduleCount;
		this.applyCount = applyCount;
		this.start = start;
		this.end = end;
		this.classTitle = classTitle;
	}

	public int getSchedule_no() {
		return scheduleNo;
	}

	public void setSchedule_no(int scheduleNo) {
		this.scheduleNo = scheduleNo;
	}

	public int getMaxPeople() {
		return maxPeople;
	}

	public void setMaxPeople(int maxPeople) {
		this.maxPeople = maxPeople;
	}

	public int getScheduleCount() {
		return scheduleCount;
	}

	public void setScheduleCount(int scheduleCount) {
		this.scheduleCount = scheduleCount;
	}

	public int getApplyCount() {
		return applyCount;
	}

	public void setApplyCount(int applyCount) {
		this.applyCount = applyCount;
	}

	public Date getStart() {
		return start;
	}

	public void setStart(Date start) {
		this.start = start;
	}

	public Date getEnd() {
		return end;
	}

	public void setEnd(Date end) {
		this.end = end;
	}

	public String getClassTitle() {
		return classTitle;
	}

	public void setClassTitle(String classTitle) {
		this.classTitle = classTitle;
	}

	@Override
	public String toString() {
		return "RegularClassInfoDTO [scheduleNo=" + scheduleNo + ", maxPeople=" + maxPeople + ", scheduleCount="
				+ scheduleCount + ", applyCount=" + applyCount + ", start=" + start + ", end=" + end + ", classTitle="
				+ classTitle + "]";
	}
}
