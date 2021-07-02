package com.tig.wdc.model.dto;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class RegularClassInfoDTO {

	private int schedule_no;
	private int maxPeople;
	private int scheduleCount;
	private int applyCount;
	private Date start;
	private Date end;
	
	public RegularClassInfoDTO() {}

	public RegularClassInfoDTO(int schedule_no, int maxPeople, int scheduleCount, int applyCount, Date start,
			Date end) {
		super();
		this.schedule_no = schedule_no;
		this.maxPeople = maxPeople;
		this.scheduleCount = scheduleCount;
		this.applyCount = applyCount;
		this.start = start;
		this.end = end;
	}

	public int getSchedule_no() {
		return schedule_no;
	}

	public void setSchedule_no(int schedule_no) {
		this.schedule_no = schedule_no;
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

	@Override
	public String toString() {
		return "RegularClassInfoDTO [schedule_no=" + schedule_no + ", maxPeople=" + maxPeople + ", scheduleCount="
				+ scheduleCount + ", applyCount=" + applyCount + ", start=" + start + ", end=" + end + "]";
	}
}
