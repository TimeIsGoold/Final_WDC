package com.tig.wdc.admin.model.dto;

public class ClassDTO {

	private int classNo;
	private String classTitle;
	private String teacherName;
	private String classPrice;
	private String classType;
	private String decisionStatus;
	public ClassDTO() {}
	
	public ClassDTO(int classNo, String classTitle, String teacherName, String classPrice, String classType,
			String decisionStatus) {
		super();
		this.classNo = classNo;
		this.classTitle = classTitle;
		this.teacherName = teacherName;
		this.classPrice = classPrice;
		this.classType = classType;
		this.decisionStatus = decisionStatus;
	}
	
	public int getClassNo() {
		return classNo;
	}
	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}
	public String getClassTitle() {
		return classTitle;
	}
	public void setClassTitle(String classTitle) {
		this.classTitle = classTitle;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public String getClassPrice() {
		return classPrice;
	}
	public void setClassPrice(String classPrice) {
		this.classPrice = classPrice;
	}
	public String getClassType() {
		return classType;
	}
	public void setClassType(String classType) {
		this.classType = classType;
	}
	public String getDecisionStatus() {
		return decisionStatus;
	}
	public void setDecisionStatus(String decisionStatus) {
		this.decisionStatus = decisionStatus;
	}
	
	@Override
	public String toString() {
		return "ClassDTO [classNo=" + classNo + ", classTitle=" + classTitle + ", teacherName=" + teacherName
				+ ", classPrice=" + classPrice + ", classType=" + classType + ", decisionStatus=" + decisionStatus
				+ "]";
	}
	
	
	
}
