package com.tig.wdc.admin.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tig.wdc.admin.model.dao.AdminMapper;
import com.tig.wdc.admin.model.dto.CalculateDTO;
import com.tig.wdc.admin.model.dto.CheeringClassDTO;
import com.tig.wdc.admin.model.dto.ClassDTO;
import com.tig.wdc.admin.model.dto.ClsDecisionDTO;
import com.tig.wdc.admin.model.dto.CouponDTO;
import com.tig.wdc.admin.model.dto.NoticeDTO;
import com.tig.wdc.admin.model.dto.QuestionDTO;
import com.tig.wdc.admin.model.dto.RefundDTO;
import com.tig.wdc.admin.model.dto.ReportDTO;
import com.tig.wdc.admin.model.dto.ReportDetailDTO;
import com.tig.wdc.admin.model.dto.StudentDTO;
import com.tig.wdc.admin.model.dto.TeacherDTO;
import com.tig.wdc.admin.model.dto.TotalDTO;
import com.tig.wdc.user.model.dto.UserClassDTO;
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
	
	/**
	 * @author 송아현
	 * 문의 답변 - insert
	 */
	@Override
	public int insertAnswer(QuestionDTO question) {
		
		return mapper.insertAnswer(question);
	}
	
	/**
	 * @author 송아현
	 * 문의 답변 - update
	 */
	@Override
	public int updateAnswer(QuestionDTO question) {

		return mapper.updateAnswer(question);
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
	public int insertCouponIssue(CouponDTO coupon) {
		
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
	 * 공지 등록
	 * 
	 */
	@Override
	public int insertNoticeWrite(NoticeDTO notice) {

		return mapper.insertNoticeWrite(notice);
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
	
	/**
	 * @author 송아현
	 * 정산 상세
	 * 
	 */
	@Override
	public CalculateDTO selectCalculateDetail() {
		
		return mapper.selectCalculateDetail();
	}
	
	/**
	 * @author 송아현
	 * 환불 관리
	 * 
	 */
	@Override
	public List<RefundDTO> selectRefundList(String type) {

		return mapper.selectRefundList(type);
	}
	
	/**
	 * @author 송아현
	 * 환불 상세
	 */
	@Override
	public RefundDTO selectRefundInfoDetail(RefundDTO refund) {

		return mapper.selectRefundInfoDetail(refund);
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

	@Override
	public List<ClassDTO> selectClassBycategory(Map<String, String> type) {
		
		return mapper.selectClassBycategory(type);
	}

	@Override
	public int updateFirstDecision(ClsDecisionDTO clsDecisionDTO) {
		
		return mapper.updateFirstDecision(clsDecisionDTO);
	}

	@Override
	public int insertClassDecision(ClsDecisionDTO clsDecisionDTO) {
		return mapper.insertClassDecision(clsDecisionDTO);
	}

	@Override
	public List<CheeringClassDTO> selectCheeringClass() {
		return mapper.selectCheeringClass();
	}

	@Override
	public List<Integer> selectUserNoByCheeringClass(int clsNo) {
		
		return mapper.selectUserNoByCheeringClass(clsNo);
	}

	@Override
	public int updateClsSecondDecision(int clsNo) {
		
		return mapper.updateClsSecondDecision(clsNo);
	}

	@Override
	public int updateClsSecondDecisionHistory(int clsNo) {
		
		return mapper.updateClsSecondDecisionHistory(clsNo);
	}

	@Override
	public int insertCheeringCoupon(UserClassDTO classDetail) {
		
		return mapper.insertCheeringCoupon(classDetail);
	}




}
