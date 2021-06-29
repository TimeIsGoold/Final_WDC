package com.tig.wdc.admin.model.service;

import java.util.List;

import com.tig.wdc.admin.model.dto.CalculateDTO;
import com.tig.wdc.admin.model.dto.ClassDTO;
import com.tig.wdc.admin.model.dto.CouponDTO;
import com.tig.wdc.admin.model.dto.NoticeDTO;
import com.tig.wdc.admin.model.dto.QuestionDTO;
import com.tig.wdc.admin.model.dto.ReportDTO;
import com.tig.wdc.admin.model.dto.StudentDTO;
import com.tig.wdc.admin.model.dto.TeacherDTO;
import com.tig.wdc.admin.model.dto.TotalDTO;

public interface AdminService {

	List<TotalDTO> selectTotalUsertList();

	List<ClassDTO> selectAllClassList();

	List<ReportDTO> selectAllReportList();

	/**
	 * 전체문의
	 * 아현
	 * @return
	 */
	List<QuestionDTO> selectAllQuestionList();
	
	/**
	 * 강사문의
	 * 아현
	 * @return
	 */
	List<QuestionDTO> selectTeacherQuestionList();

	/**
	 * 학생문의
	 * 아현
	 * @return
	 */
	List<QuestionDTO> selectStudentQuestionList();

	StudentDTO selectOneStudent(int no);

	TeacherDTO selectOneTeacher(int no);

	List<TotalDTO> selectTeacherList();

	List<TotalDTO> selectStudentList();
	
	/**
	 * 쿠폰
	 * 아현
	 * @return
	 */
	List<CouponDTO> selectAllCouponList();

	/**
	 * 공지
	 * 아현
	 * @return
	 */
	List<NoticeDTO> selectAllNoticeList();

	/**
	 * 미정산
	 * 아현
	 * @return
	 */
	List<CalculateDTO> selectNoCalculateList();
	
	/**
	 * 정산완료
	 * 아현
	 * @return
	 */
	List<CalculateDTO> selectYesCalculateList();
}
