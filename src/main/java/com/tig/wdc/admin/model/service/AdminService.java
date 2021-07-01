package com.tig.wdc.admin.model.service;

import java.util.List;
import java.util.Map;

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

public interface AdminService {

	List<TotalDTO> selectTotalUsertList();

	List<ClassDTO> selectAllClassList();

	List<ReportDTO> selectAllReportList();

	/**
	 * @author 송아현
	 * 전체문의
	 * 
	 * @return
	 */
	List<QuestionDTO> selectAllQuestionList();
	
	/**
	 * @author 송아현
	 * 강사문의
	 * 
	 * @return
	 */
	List<QuestionDTO> selectTeacherQuestionList();

	/**
	 * @author 송아현
	 * 학생문의
	 * 
	 * @return
	 */
	List<QuestionDTO> selectStudentQuestionList();
	
	/**
	 * @author 송아현
	 * 학생 문의상세
	 * @param id
	 * @return
	 */
	QuestionDTO selectStudentQuestionInfoDetail(int no);
	
	/**
	 * @author 송아현
	 * 강사문의상세
	 * 
	 * @param id
	 * @return
	 */
	QuestionDTO selectTeacherQuestionInfoDetail(int no);
	

	StudentDTO selectOneStudent(int no);

	TeacherDTO selectOneTeacher(int no);

	List<TotalDTO> selectTeacherList();

	List<TotalDTO> selectStudentList();
	
	/**
	 * @author 송아현
	 * 쿠폰
	 * 
	 * @return
	 */
	List<CouponDTO> selectAllCouponList();
	
	
	/**
	 * @author 송아현
	 * 쿠폰 상세
	 * 
	 * @param no
	 * @return
	 */
	CouponDTO selectCouponInfoDetail(int no);
	
	/**
	 * @author 송아현
	 * 쿠폰 발급
	 * @param coupon 
	 * 
	 * @return
	 */
	int insertCouponIssue(CouponDTO coupon);

	/**
	 * @author 송아현
	 * 공지
	 * 
	 * @return
	 */
	List<NoticeDTO> selectAllNoticeList();
	
	/**
	 * @author 송아현
	 * 공지 상세
	 * 
	 * @param no
	 * @return
	 */
	NoticeDTO selectNoticeInfoDetail(int no);

	/**
	 * @author 송아현
	 * 미정산
	 * 
	 * @return
	 */
	List<CalculateDTO> selectNoCalculateList();
	
	/**
	 * @author 송아현
	 * 정산완료
	 * 
	 * @return
	 */
	List<CalculateDTO> selectYesCalculateList();
	

	ReportDetailDTO selectStudentReportList(ReportDetailDTO rd);


	/**
	 * @author 김현빈
	 * 신고 승인 
	 * 
	 * @return
	 */
	int updateReportStatus(int no);

	/**
	 * @author 김현빈
	 * 신고 거부
	 * 
	 * @param no
	 */
	int updateReportStatus2(int no);

	List<BlackListDTO> selectAllBlackList();

	List<BlackListDTO> selectBlockedTeacherList();

	List<BlackListDTO> selectBlockedStudentList();

	int selectReportCnt(int no);

	int insertBlackList(Map<String, Object> blackMap);

	int updateBlackListOnUSerTable(Map<String, Object> blackMap);


}
