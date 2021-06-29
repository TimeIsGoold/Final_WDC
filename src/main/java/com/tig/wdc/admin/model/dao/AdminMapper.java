package com.tig.wdc.admin.model.dao;

import java.util.List;

import com.tig.wdc.admin.model.dto.CalculateDTO;
import com.tig.wdc.admin.model.dto.ClassDTO;
import com.tig.wdc.admin.model.dto.CouponDTO;
import com.tig.wdc.admin.model.dto.NoticeDTO;
import com.tig.wdc.admin.model.dto.ReportDTO;
import com.tig.wdc.admin.model.dto.ReportDetailDTO;
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
	 * @author 송아현
	 * 전체 문의
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
	 * 고객문의
	 * 
	 * @return
	 */
	List<QuestionDTO> selectStudentQuestionList();
	
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

	StudentDTO selectOneStudent(int no);

	TeacherDTO selectOneTeacher(int no);

	List<TotalDTO> selectStudentList();

	
	ReportDetailDTO selectStudentReportList(int no);


}
