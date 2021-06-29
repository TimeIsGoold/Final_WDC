package com.tig.wdc.user.model.dto;

import java.sql.Date;

/**
 * @author SORA
 * 클래스 스케쥴 DTO
 */
public class ScheduleDTO {

	private int ScheduleNo;
	private String ScheduleType;
	private Date ScheduleDate;
	private String ScheduleStart;
	private int minPeople;
	private int maxPeople;
	private int clsNo;
	private int ScheduleCount;

	public ScheduleDTO() {
		super();
	}

	public ScheduleDTO(int scheduleNo, String scheduleType, Date scheduleDate, String scheduleStart, int minPeople,
			int maxPeople, int clsNo, int scheduleCount) {
		super();
		ScheduleNo = scheduleNo;
		ScheduleType = scheduleType;
		ScheduleDate = scheduleDate;
		ScheduleStart = scheduleStart;
		this.minPeople = minPeople;
		this.maxPeople = maxPeople;
		this.clsNo = clsNo;
		ScheduleCount = scheduleCount;
	}

	public int getScheduleNo() {
		return ScheduleNo;
	}

	public void setScheduleNo(int scheduleNo) {
		ScheduleNo = scheduleNo;
	}

	public String getScheduleType() {
		return ScheduleType;
	}

	public void setScheduleType(String scheduleType) {
		ScheduleType = scheduleType;
	}

	public Date getScheduleDate() {
		return ScheduleDate;
	}

	public void setScheduleDate(Date scheduleDate) {
		ScheduleDate = scheduleDate;
	}

	public String getScheduleStart() {
		return ScheduleStart;
	}

	public void setScheduleStart(String scheduleStart) {
		ScheduleStart = scheduleStart;
	}

	public int getMinPeople() {
		return minPeople;
	}

	public void setMinPeople(int minPeople) {
		this.minPeople = minPeople;
	}

	public int getMaxPeople() {
		return maxPeople;
	}

	public void setMaxPeople(int maxPeople) {
		this.maxPeople = maxPeople;
	}

	public int getClsNo() {
		return clsNo;
	}

	public void setClsNo(int clsNo) {
		this.clsNo = clsNo;
	}

	public int getScheduleCount() {
		return ScheduleCount;
	}

	public void setScheduleCount(int scheduleCount) {
		ScheduleCount = scheduleCount;
	}

	@Override
	public String toString() {
		return "ScheduleDTO [ScheduleNo=" + ScheduleNo + ", ScheduleType=" + ScheduleType + ", ScheduleDate="
				+ ScheduleDate + ", ScheduleStart=" + ScheduleStart + ", minPeople=" + minPeople + ", maxPeople="
				+ maxPeople + ", clsNo=" + clsNo + ", ScheduleCount=" + ScheduleCount + "]";
	}

}
