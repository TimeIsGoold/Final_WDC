package com.tig.wdc.admin.model.dto;

import java.sql.Date;

public class CalculateDTO {

	private int calcNo;
	private String teType;
	private String teName;
	private String teId;
	private String calcMonth;
	private String calcYN;
	private String bank;
	private String teAcntNo;
	private int totalSales;
	private int tax;
	private int useFees;
	private int cardFees;
	private int calcAmount;
	private int classNo;
	private String className;
	private int count;
	private int workDay;
	private int workTime;
	private int price;
	
	public CalculateDTO() {
		super();
	}

	public CalculateDTO(int calcNo, String teType, String teName, String teId, String calcMonth, String calcYN,
			String bank, String teAcntNo, int totalSales, int tax, int useFees, int cardFees, int calcAmount,
			int classNo, String className, int count, int workDay, int workTime, int price) {
		super();
		this.calcNo = calcNo;
		this.teType = teType;
		this.teName = teName;
		this.teId = teId;
		this.calcMonth = calcMonth;
		this.calcYN = calcYN;
		this.bank = bank;
		this.teAcntNo = teAcntNo;
		this.totalSales = totalSales;
		this.tax = tax;
		this.useFees = useFees;
		this.cardFees = cardFees;
		this.calcAmount = calcAmount;
		this.classNo = classNo;
		this.className = className;
		this.count = count;
		this.workDay = workDay;
		this.workTime = workTime;
		this.price = price;
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

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getTeAcntNo() {
		return teAcntNo;
	}

	public void setTeAcntNo(String teAcntNo) {
		this.teAcntNo = teAcntNo;
	}

	public int getTotalSales() {
		return totalSales;
	}

	public void setTotalSales(int totalSales) {
		this.totalSales = totalSales;
	}

	public int getTax() {
		return tax;
	}

	public void setTax(int tax) {
		this.tax = tax;
	}

	public int getUseFees() {
		return useFees;
	}

	public void setUseFees(int useFees) {
		this.useFees = useFees;
	}

	public int getCardFees() {
		return cardFees;
	}

	public void setCardFees(int cardFees) {
		this.cardFees = cardFees;
	}

	public int getCalcAmount() {
		return calcAmount;
	}

	public void setCalcAmount(int calcAmount) {
		this.calcAmount = calcAmount;
	}

	public int getClassNo() {
		return classNo;
	}

	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getWorkDay() {
		return workDay;
	}

	public void setWorkDay(int workDay) {
		this.workDay = workDay;
	}

	public int getWorkTime() {
		return workTime;
	}

	public void setWorkTime(int workTime) {
		this.workTime = workTime;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "CalculateDTO [calcNo=" + calcNo + ", teType=" + teType + ", teName=" + teName + ", teId=" + teId
				+ ", calcMonth=" + calcMonth + ", calcYN=" + calcYN + ", bank=" + bank + ", teAcntNo=" + teAcntNo
				+ ", totalSales=" + totalSales + ", tax=" + tax + ", useFees=" + useFees + ", cardFees=" + cardFees
				+ ", calcAmount=" + calcAmount + ", classNo=" + classNo + ", className=" + className + ", count="
				+ count + ", workDay=" + workDay + ", workTime=" + workTime + ", price=" + price + "]";
	}

}
