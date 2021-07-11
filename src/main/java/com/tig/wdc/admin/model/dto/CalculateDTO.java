package com.tig.wdc.admin.model.dto;

public class CalculateDTO {

	private int calcNo;
	private int teNo;
	private String teType;
	private String teName;
	private String teId;
	private String calcMonth;
	private String calcYN;
	private String bank;
	private String teAcntNo;
	private String teAcntHolder;
	private String totalSales;
	private int tax;
	private String useFees;
	private String cardFees;
	private String calcAmount;
	private int classNo;
	private String className;
	private String classType;
	private int countStudent;
	private int cday;
	private String today;
	private int tuitionMNo;
	
	public CalculateDTO() {
		super();
	}

	public CalculateDTO(int calcNo, int teNo, String teType, String teName, String teId, String calcMonth,
			String calcYN, String bank, String teAcntNo, String teAcntHolder, String totalSales, int tax,
			String useFees, String cardFees, String calcAmount, int classNo, String className, String classType,
			int countStudent, int cday, String today, int tuitionMNo) {
		super();
		this.calcNo = calcNo;
		this.teNo = teNo;
		this.teType = teType;
		this.teName = teName;
		this.teId = teId;
		this.calcMonth = calcMonth;
		this.calcYN = calcYN;
		this.bank = bank;
		this.teAcntNo = teAcntNo;
		this.teAcntHolder = teAcntHolder;
		this.totalSales = totalSales;
		this.tax = tax;
		this.useFees = useFees;
		this.cardFees = cardFees;
		this.calcAmount = calcAmount;
		this.classNo = classNo;
		this.className = className;
		this.classType = classType;
		this.countStudent = countStudent;
		this.cday = cday;
		this.today = today;
		this.tuitionMNo = tuitionMNo;
	}

	public int getCalcNo() {
		return calcNo;
	}

	public void setCalcNo(int calcNo) {
		this.calcNo = calcNo;
	}

	public int getTeNo() {
		return teNo;
	}

	public void setTeNo(int teNo) {
		this.teNo = teNo;
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

	public String getTeAcntHolder() {
		return teAcntHolder;
	}

	public void setTeAcntHolder(String teAcntHolder) {
		this.teAcntHolder = teAcntHolder;
	}

	public String getTotalSales() {
		return totalSales;
	}

	public void setTotalSales(String totalSales) {
		this.totalSales = totalSales;
	}

	public int getTax() {
		return tax;
	}

	public void setTax(int tax) {
		this.tax = tax;
	}

	public String getUseFees() {
		return useFees;
	}

	public void setUseFees(String useFees) {
		this.useFees = useFees;
	}

	public String getCardFees() {
		return cardFees;
	}

	public void setCardFees(String cardFees) {
		this.cardFees = cardFees;
	}

	public String getCalcAmount() {
		return calcAmount;
	}

	public void setCalcAmount(String calcAmount) {
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

	public String getClassType() {
		return classType;
	}

	public void setClassType(String classType) {
		this.classType = classType;
	}

	public int getCountStudent() {
		return countStudent;
	}

	public void setCountStudent(int countStudent) {
		this.countStudent = countStudent;
	}

	public int getCday() {
		return cday;
	}

	public void setCday(int cday) {
		this.cday = cday;
	}

	public String getToday() {
		return today;
	}

	public void setToday(String today) {
		this.today = today;
	}

	public int getTuitionMNo() {
		return tuitionMNo;
	}

	public void setTuitionMNo(int tuitionMNo) {
		this.tuitionMNo = tuitionMNo;
	}

	@Override
	public String toString() {
		return "CalculateDTO [calcNo=" + calcNo + ", teNo=" + teNo + ", teType=" + teType + ", teName=" + teName
				+ ", teId=" + teId + ", calcMonth=" + calcMonth + ", calcYN=" + calcYN + ", bank=" + bank
				+ ", teAcntNo=" + teAcntNo + ", teAcntHolder=" + teAcntHolder + ", totalSales=" + totalSales + ", tax="
				+ tax + ", useFees=" + useFees + ", cardFees=" + cardFees + ", calcAmount=" + calcAmount + ", classNo="
				+ classNo + ", className=" + className + ", classType=" + classType + ", countStudent=" + countStudent
				+ ", cday=" + cday + ", today=" + today + ", tuitionMNo=" + tuitionMNo + "]";
	}

}
