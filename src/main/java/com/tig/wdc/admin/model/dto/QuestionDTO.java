package com.tig.wdc.admin.model.dto;

import java.util.Date;

public class QuestionDTO {

	private int questionNo;
	private String questionType;
	private String questionName;
	private String questionId;
	private String questionTitle;
	private java.util.Date questionDate;
	
	public QuestionDTO() {
		super();
	}

	public QuestionDTO(int questionNo, String questionType, String questionName, String questionId,
			String questionTitle, Date questionDate) {
		super();
		this.questionNo = questionNo;
		this.questionType = questionType;
		this.questionName = questionName;
		this.questionId = questionId;
		this.questionTitle = questionTitle;
		this.questionDate = questionDate;
	}

	public int getQuestionNo() {
		return questionNo;
	}

	public void setQuestionNo(int questionNo) {
		this.questionNo = questionNo;
	}

	public String getQuestionType() {
		return questionType;
	}

	public void setQuestionType(String questionType) {
		this.questionType = questionType;
	}

	public String getQuestionName() {
		return questionName;
	}

	public void setQuestionName(String questionName) {
		this.questionName = questionName;
	}

	public String getQuestionId() {
		return questionId;
	}

	public void setQuestionId(String questionId) {
		this.questionId = questionId;
	}

	public String getQuestionTitle() {
		return questionTitle;
	}

	public void setQuestionTitle(String questionTitle) {
		this.questionTitle = questionTitle;
	}

	public java.util.Date getQuestionDate() {
		return questionDate;
	}

	public void setQuestionDate(java.util.Date questionDate) {
		this.questionDate = questionDate;
	}

	@Override
	public String toString() {
		return "QuestionDTO [questionNo=" + questionNo + ", questionType=" + questionType + ", questionName="
				+ questionName + ", questionId=" + questionId + ", questionTitle=" + questionTitle + ", questionDate="
				+ questionDate + "]";
	}
	
}
