package com.tig.wdc.admin.model.dao;

import java.util.List;

import com.tig.wdc.admin.model.dto.CalculateDTO;
import com.tig.wdc.admin.model.dto.ClassDTO;
import com.tig.wdc.admin.model.dto.CouponDTO;
import com.tig.wdc.admin.model.dto.NoticeDTO;
import com.tig.wdc.admin.model.dto.ReportDTO;
import com.tig.wdc.admin.model.dto.StudentDTO;
import com.tig.wdc.admin.model.dto.TeacherDTO;
import com.tig.wdc.admin.model.dto.TotalDTO;
import com.tig.wdc.admin.model.dto.QuestionDTO;


public interface AdminMapper {

	List<TotalDTO> selectTotalUsertList();
	
	List<ClassDTO> selectAllClassList();

	List<ReportDTO> selectAllReportList();

	List<TotalDTO> selectTeacherList();

	/**
	 * 전체 문의
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
	 * 고객문의
	 * 아현
	 * @return
	 */
	List<QuestionDTO> selectStudentQuestionList();
	
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

	StudentDTO selectOneStudent(int no);

	TeacherDTO selectOneTeacher(int no);

	List<TotalDTO> selectStudentList();

	

}
