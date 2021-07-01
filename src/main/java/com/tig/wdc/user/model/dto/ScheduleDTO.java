package com.tig.wdc.user.model.dto;

import java.sql.Date;

import org.springframework.stereotype.Component;

/**
 * @author SORA
 * 클래스 스케쥴 DTO
 */
@Component
public class ScheduleDTO {

	private int scheduleNo;
	private String scheduleType;
	private Date scheduleDate;
	private String scheduleStart;
	private int minPeople;
	private int maxPeople;
	private int clsNo;
	private int scheduleCount;
	
	private String inputDate;
	private String inputMin;
	private String inputMax;
	
	public ScheduleDTO() {}

	public ScheduleDTO(int scheduleNo, String scheduleType, Date scheduleDate, String scheduleStart, int minPeople,
			int maxPeople, int clsNo, int scheduleCount, String inputDate, String inputMin, String inputMax) {
		super();
		this.scheduleNo = scheduleNo;
		this.scheduleType = scheduleType;
		this.scheduleDate = scheduleDate;
		this.scheduleStart = scheduleStart;
		this.minPeople = minPeople;
		this.maxPeople = maxPeople;
		this.clsNo = clsNo;
		this.scheduleCount = scheduleCount;
		this.inputDate = inputDate;
		this.inputMin = inputMin;
		this.inputMax = inputMax;
	}

	public int getScheduleNo() {
		return scheduleNo;
	}

	public void setScheduleNo(int scheduleNo) {
		this.scheduleNo = scheduleNo;
	}

	public String getScheduleType() {
		return scheduleType;
	}

	public void setScheduleType(String scheduleType) {
		this.scheduleType = scheduleType;
	}

	public Date getScheduleDate() {
		return scheduleDate;
	}

	public void setScheduleDate(Date scheduleDate) {
		this.scheduleDate = scheduleDate;
	}

	public String getScheduleStart() {
		return scheduleStart;
	}

	public void setScheduleStart(String scheduleStart) {
		this.scheduleStart = scheduleStart;
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
		return scheduleCount;
	}

	public void setScheduleCount(int scheduleCount) {
		scheduleCount = scheduleCount;
	}

	public String getInputDate() {
		return inputDate;
	}

	public void setInputDate(String inputDate) {
		this.inputDate = inputDate;
	}

	public String getInputMin() {
		return inputMin;
	}

	public void setInputMin(String inputMin) {
		this.inputMin = inputMin;
	}

	public String getInputMax() {
		return inputMax;
	}

	public void setInputMax(String inputMax) {
		this.inputMax = inputMax;
	}

	@Override
	public String toString() {
		return "ScheduleDTO [scheduleNo=" + scheduleNo + ", scheduleType=" + scheduleType + ", scheduleDate="
				+ scheduleDate + ", scheduleStart=" + scheduleStart + ", minPeople=" + minPeople + ", maxPeople="
				+ maxPeople + ", clsNo=" + clsNo + ", ScheduleCount=" + scheduleCount + ", inputDate=" + inputDate
				+ ", inputMin=" + inputMin + ", inputMax=" + inputMax + "]";
	}
}
