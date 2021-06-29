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

	List<QuestionDTO> selectAllQuestionList();

	StudentDTO selectOneStudent(int no);

	TeacherDTO selectOneTeacher(int no);

	List<TotalDTO> selectTeacherList();

	List<TotalDTO> selectStudentList();
	
	List<CouponDTO> selectAllCouponList();

	List<NoticeDTO> selectAllNoticeList();

	List<CalculateDTO> selectAllCalculateList();

	ReportDetailDTO selectStudentReportList(int no);

}
