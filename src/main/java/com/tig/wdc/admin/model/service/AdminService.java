package com.tig.wdc.admin.model.service;

import java.util.List;

import com.tig.wdc.admin.model.dto.ClassDTO;
import com.tig.wdc.admin.model.dto.QuestionDTO;
import com.tig.wdc.admin.model.dto.ReportDTO;
import com.tig.wdc.admin.model.dto.StudentDTO;

public interface AdminService {

	List<StudentDTO> selectAllStudentList();

	List<ClassDTO> selectAllClassList();
	
//	List<ReportDTO> selectAllReportList();

//	List<QuestionDTO> selectAllQuestionList();


}
