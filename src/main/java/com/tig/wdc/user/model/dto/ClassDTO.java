package com.tig.wdc.user.model.dto;

import java.sql.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import com.tig.wdc.model.dto.AttachMentDTO;
import com.tig.wdc.model.dto.ClassPieceDTO;

public class ClassDTO {

	private int clsNo;
	private String title;
	private String address;
	private String intro;
	private String cExpl;
	private String time;
	private Date startDate;
	private Date endDate;
	private int price;
	private String addInfo;
	private String addSup;
	private String dicsionStatus;
	private String clsType;
	private Date dateAplct;
	private String status;
	private int teNo;
	private int categoryNo;
	private String simpleIntro;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private java.util.Date stardDay;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private java.util.Date endDay;

	private List<AttachMentDTO> titlePictue;  //대표사진
	private List<ClassPieceDTO> completePiece; //완성작
	
	public ClassDTO() {
		super();
	}
	
	public ClassDTO(int clsNo, String title, String address, String intro, String cExpl, String time, Date startDate,
			Date endDate, int price, String addInfo, String addSup, String dicsionStatus, String clsType,
			Date dateAplct, String status, int teNo, int categoryNo, String simpleIntro, java.util.Date stardDay,
			java.util.Date endDay, List<AttachMentDTO> titlePictue, List<ClassPieceDTO> completePiece) {
		super();
		this.clsNo = clsNo;
		this.title = title;
		this.address = address;
		this.intro = intro;
		this.cExpl = cExpl;
		this.time = time;
		this.startDate = startDate;
		this.endDate = endDate;
		this.price = price;
		this.addInfo = addInfo;
		this.addSup = addSup;
		this.dicsionStatus = dicsionStatus;
		this.clsType = clsType;
		this.dateAplct = dateAplct;
		this.status = status;
		this.teNo = teNo;
		this.categoryNo = categoryNo;
		this.simpleIntro = simpleIntro;
		this.stardDay = stardDay;
		this.endDay = endDay;
		this.titlePictue = titlePictue;
		this.completePiece = completePiece;
	}
	
	public int getClsNo() {
		return clsNo;
	}
	
	public void setClsNo(int clsNo) {
		this.clsNo = clsNo;
	}
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getIntro() {
		return intro;
	}
	
	public void setIntro(String intro) {
		this.intro = intro;
	}
	
	public String getcExpl() {
		return cExpl;
	}
	
	public void setcExpl(String cExpl) {
		this.cExpl = cExpl;
	}
	
	public String getTime() {
		return time;
	}
	
	public void setTime(String time) {
		this.time = time;
	}
	
	public Date getStartDate() {
		return startDate;
	}
	
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	
	public Date getEndDate() {
		return endDate;
	}
	
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	
	public int getPrice() {
		return price;
	}
	
	public void setPrice(int price) {
		this.price = price;
	}
	
	public String getAddInfo() {
		return addInfo;
	}
	
	public void setAddInfo(String addInfo) {
		this.addInfo = addInfo;
	}
	
	public String getAddSup() {
		return addSup;
	}
	
	public void setAddSup(String addSup) {
		this.addSup = addSup;
	}
	
	public String getDicsionStatus() {
		return dicsionStatus;
	}
	
	public void setDicsionStatus(String dicsionStatus) {
		this.dicsionStatus = dicsionStatus;
	}
	
	public String getClsType() {
		return clsType;
	}
	
	public void setClsType(String clsType) {
		this.clsType = clsType;
	}
	
	public Date getDateAplct() {
		return dateAplct;
	}
	
	public void setDateAplct(Date dateAplct) {
		this.dateAplct = dateAplct;
	}
	
	public String getStatus() {
		return status;
	}
	
	public void setStatus(String status) {
		this.status = status;
	}
	
	public int getTeNo() {
		return teNo;
	}
	
	public void setTeNo(int teNo) {
		this.teNo = teNo;
	}
	
	public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
	public String getSimpleIntro() {
		return simpleIntro;
	}
	public void setSimpleIntro(String simpleIntro) {
		this.simpleIntro = simpleIntro;
	}
	public java.util.Date getStardDay() {
		return stardDay;
	}
	public void setStardDay(java.util.Date stardDay) {
		this.stardDay = stardDay;
	}
	public java.util.Date getEndDay() {
		return endDay;
	}
	public void setEndDay(java.util.Date endDay) {
		this.endDay = endDay;
	}
	public List<AttachMentDTO> getTitlePictue() {
		return titlePictue;
	}
	public void setTitlePictue(List<AttachMentDTO> titlePictue) {
		this.titlePictue = titlePictue;
	}
	public List<ClassPieceDTO> getCompletePiece() {
		return completePiece;
	}
	public void setCompletePiece(List<ClassPieceDTO> completePiece) {
		this.completePiece = completePiece;
	}
	
	@Override
	public String toString() {
		return "ClassDTO [clsNo=" + clsNo + ", title=" + title + ", address=" + address + ", intro=" + intro
				+ ", cExpl=" + cExpl + ", time=" + time + ", startDate=" + startDate + ", endDate=" + endDate
				+ ", price=" + price + ", addInfo=" + addInfo + ", addSup=" + addSup + ", dicsionStatus="
				+ dicsionStatus + ", clsType=" + clsType + ", dateAplct=" + dateAplct + ", status=" + status + ", teNo="
				+ teNo + ", categoryNo=" + categoryNo + ", simpleIntro=" + simpleIntro + ", stardDay=" + stardDay
				+ ", endDay=" + endDay + ", titlePictue=" + titlePictue + ", completePiece=" + completePiece + "]";
	}
}
