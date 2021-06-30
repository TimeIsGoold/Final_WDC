package com.tig.wdc.admin.model.service;

import java.util.List;

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

	@Override
	public List<QuestionDTO> selectAllQuestionList() {

		return mapper.selectAllQuestionList();
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
	@Override
	public List<CouponDTO> selectAllCouponList() {

		return mapper.selectAllCouponList();
	}

	@Override
	public List<NoticeDTO> selectAllNoticeList() {

		return mapper.selectAllNoticeList();
	}

	 @Override 
	 public List<CalculateDTO> selectAllCalculateList() {
	 
		 return mapper.selectAllCalculateList(); 
	}

	@Override
	public ReportDetailDTO selectStudentReportList(ReportDetailDTO rd) {
		
		
		System.out.println(rd);
		
		System.out.println(mapper.selectStudentReportList(rd));
		
		return mapper.selectStudentReportList(rd);
	}

//	@Override
//	public ReportDetailDTO selectTeacherReportList(int no) {
//		
//		return mapper.selectTeacherReportList(no);
//	}

	 

}
