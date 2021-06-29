package com.tig.wdc.admin.model.dto;

import java.sql.Date;

public class CalculateDTO {

	private int calcNo;
	private String teType;
	private String teName;
	private String teId;
	private String calcMonth;
	private String calcYN;
	
	public CalculateDTO() {
		super();
	}

	public CalculateDTO(int calcNo, String teType, String teName, String teId, String calcMonth, String calcYN) {
		super();
		this.calcNo = calcNo;
		this.teType = teType;
		this.teName = teName;
		this.teId = teId;
		this.calcMonth = calcMonth;
		this.calcYN = calcYN;
	}

	public int getCalcNo() {
		return calcNo;
	}

	public void setCalcNo(int calcNo) {
		this.calcNo = calcNo;
	}

	public String getTeType() {
		return teType;
	}

	public void setTeType(String teType) {
		this.teType = teType;
	}

	public String getTeName() {
		return teName;
	}

	public void setTeName(String teName) {
		this.teName = teName;
	}

	public String getTeId() {
		return teId;
	}

	public void setTeId(String teId) {
		this.teId = teId;
	}

	public String getCalcMonth() {
		return calcMonth;
	}

	public void setCalcMonth(String calcMonth) {
		this.calcMonth = calcMonth;
	}

	public String getCalcYN() {
		return calcYN;
	}

	public void setCalcYN(String calcYN) {
		this.calcYN = calcYN;
	}

	@Override
	public String toString() {
		return "CalculateDTO [calcNo=" + calcNo + ", teType=" + teType + ", teName=" + teName + ", teId=" + teId
				+ ", calcMonth=" + calcMonth + ", calcYN=" + calcYN + "]";
	}

	
}
