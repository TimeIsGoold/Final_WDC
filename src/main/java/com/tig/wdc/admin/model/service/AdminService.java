package com.tig.wdc.admin.model.service;

import java.util.List;

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
	 * 공지
	 * 
	 * @return
	 */
	List<NoticeDTO> selectAllNoticeList();

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
	

	ReportDetailDTO selectStudentReportList(int no);

}
