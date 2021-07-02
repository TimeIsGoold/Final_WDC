package com.tig.wdc.admin.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tig.wdc.admin.model.dao.AdminMapper;
import com.tig.wdc.admin.model.dto.CalculateDTO;
import com.tig.wdc.admin.model.dto.ClassDTO;
import com.tig.wdc.admin.model.dto.CouponDTO;
import com.tig.wdc.admin.model.dto.NoticeDTO;
import com.tig.wdc.admin.model.dto.QuestionDTO;
import com.tig.wdc.admin.model.dto.ReportDTO;
import com.tig.wdc.admin.model.dto.ReportDetailDTO;
import com.tig.wdc.admin.model.dto.StudentDTO;
import com.tig.wdc.admin.model.dto.TeacherDTO;
import com.tig.wdc.admin.model.dto.TotalDTO;
import com.tig.wdc.admin.model.dto.BlackListDTO;

@Service
public class AdminServiceImpl implements AdminService {

	private AdminMapper mapper;

	@Autowired
	public AdminServiceImpl(AdminMapper mapper) {

		this.mapper = mapper;

	}

	@Override
	public List<TotalDTO> selectTotalUsertList() {

		return mapper.selectTotalUsertList();
	}

	@Override
	public List<ClassDTO> selectAllClassList() {

		return mapper.selectAllClassList();
	}

	@Override
	public List<ReportDTO> selectAllReportList() {

		return mapper.selectAllReportList();
	}

	/**
	 * @author 송아현
	 * 전체 문의 사항
	 * 
	 */
	@Override
	public List<QuestionDTO> selectAllQuestionList() {

		return mapper.selectAllQuestionList();
	}
	
	/**
	 * @author 송아현
	 * 강사 문의 사항
	 * 
	 */
	@Override
	public List<QuestionDTO> selectTeacherQuestionList() {
		
		return mapper.selectTeacherQuestionList();
	}
	
	/**
	 * @author 송아현
	 * 학생 문의 사항
	 * 
	 */
	@Override
	public List<QuestionDTO> selectStudentQuestionList() {
		
		return mapper.selectStudentQuestionList();
	}
	
	/**
	 * @author 송아현
	 * 강사 문의 상세
	 */
	@Override
	public QuestionDTO selectTeacherQuestionInfoDetail(int no) {

		return mapper.selectTeacherQuestionInfoDetail(no);
	}
	
	/**
	 * @author 송아현
	 * 학생 상세 문의
	 */
	@Override
	public QuestionDTO selectStudentQuestionInfoDetail(int no) {

		return mapper.selectStudentQuestionInfoDetail(no);
	}

	@Override
	public StudentDTO selectOneStudent(int no) {
		
		return mapper.selectOneStudent(no);
	}

	@Override
	public TeacherDTO selectOneTeacher(int no) {
		
		return mapper.selectOneTeacher(no);
	}

	@Override
	public List<TotalDTO> selectTeacherList() {
		return mapper.selectTeacherList();
	}

	@Override
	public List<TotalDTO> selectStudentList() {
		return mapper.selectStudentList();
		
	}
	/**
	 * @author 송아현
	 * 쿠폰
	 * 
	 */
	@Override
	public List<CouponDTO> selectAllCouponList() {

		return mapper.selectAllCouponList();
	}
	
	/**
	 *@author 송아현
	 *쿠폰 상세
	 */
	@Override
	public CouponDTO selectCouponInfoDetail(int no) {
		
		return mapper.selectCouponInfoDetail(no);
	}
	
	/**
	 *@author 송아현
	 *쿠폰 발급
	 */
	@Override
	public int insertCouponIssue(HashMap coupon) {
		
		return mapper.insertCouponIssue(coupon);
	}

	/**
	 * @author 송아현
	 * 공지
	 * 
	 */
	@Override
	public List<NoticeDTO> selectAllNoticeList() {

		return mapper.selectAllNoticeList();
	}
	
	/**
	 * @author 송아현
	 * 공지 상세
	 *
	 */
	@Override
	public NoticeDTO selectNoticeInfoDetail(int no) {

		return mapper.selectNoticeInfoDetail(no);
	}

	 /**
	 * @author 송아현
	 * 미정산
	 * 
	 */
	@Override 
	 public List<CalculateDTO> selectNoCalculateList() {
	 
		 return mapper.selectNoCalculateList(); 
	}
	
	 /**
	 * @author 송아현
	 * 정산완료
	 * 
	 */
	@Override 
	 public List<CalculateDTO> selectYesCalculateList() {
	 
		 return mapper.selectYesCalculateList(); 
	}

	@Override
	public ReportDetailDTO selectStudentReportList(ReportDetailDTO rd) {

		
		return mapper.selectStudentReportList(rd);
	}


//	@Override
//	public ReportDetailDTO selectTeacherReportList(int no) {
//		
//		return mapper.selectTeacherReportList(no);
//	}

	

	@Override
	public  int updateReportStatus(int no) {
		
		return mapper.updateReportStatus(no);
	}

	@Override
	public int updateReportStatus2(int no) {
		
		return mapper.updateReportStatus2(no);
	}

	@Override
	public List<BlackListDTO> selectAllBlackList() {
		
		return mapper.selectAllBlackList();
	}

	@Override
	public List<BlackListDTO> selectBlockedTeacherList() {
		
		return mapper.selectBlockedTeacherList();
	}

	@Override
	public List<BlackListDTO> selectBlockedStudentList() {
		
		return mapper.selectBlockedStudentList();
	}

	@Override
	public int selectReportCnt(int no) {
		
		return mapper.selectReportCnt(no);
	}

	@Override
	public int insertBlackList(Map<String, Object> blackMap) {
		
		return mapper.insertBlackList(blackMap);
	}

	@Override
	public int updateBlackListOnUSerTable(Map<String, Object> blackMap) {
		
		return mapper.updateBlackListOnUSerTable(blackMap);
	}



}
