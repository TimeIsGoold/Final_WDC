package com.tig.wdc.user.model.dto;

import java.sql.Date;

public class UserClassDTO {

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
   private String titlePic;
   private String bodyPic1;
   private String bodyPic2;

   public UserClassDTO() {
      super();
   }

   public UserClassDTO(int clsNo, String title, String address, String intro, String cExpl, String time, Date startDate,
         Date endDate, int price, String addInfo, String addSup, String dicsionStatus, String clsType,
         Date dateAplct, String status, int teNo, int categoryNo, String simpleIntro, String titlePic,
         String bodyPic1, String bodyPic2) {
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
      this.titlePic = titlePic;
      this.bodyPic1 = bodyPic1;
      this.bodyPic2 = bodyPic2;
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

   public String getTitlePic() {
      return titlePic;
   }

   public void setTitlePic(String titlePic) {
      this.titlePic = titlePic;
   }

   public String getBodyPic1() {
      return bodyPic1;
   }

   public void setBodyPic1(String bodyPic1) {
      this.bodyPic1 = bodyPic1;
   }

   public String getBodyPic2() {
      return bodyPic2;
   }

   public void setBodyPic2(String bodyPic2) {
      this.bodyPic2 = bodyPic2;
   }

   @Override
   public String toString() {
      return "ClassDTO [clsNo=" + clsNo + ", title=" + title + ", address=" + address + ", intro=" + intro
            + ", cExpl=" + cExpl + ", time=" + time + ", startDate=" + startDate + ", endDate=" + endDate
            + ", price=" + price + ", addInfo=" + addInfo + ", addSup=" + addSup + ", dicsionStatus="
            + dicsionStatus + ", clsType=" + clsType + ", dateAplct=" + dateAplct + ", status=" + status + ", teNo="
            + teNo + ", categoryNo=" + categoryNo + ", simpleIntro=" + simpleIntro + ", titlePic=" + titlePic
            + ", bodyPic1=" + bodyPic1 + ", bodyPic2=" + bodyPic2 + "]";
   }

	

}