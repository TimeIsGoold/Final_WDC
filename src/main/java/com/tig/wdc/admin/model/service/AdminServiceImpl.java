package com.tig.wdc.admin.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tig.wdc.admin.model.dao.AdminMapper;
import com.tig.wdc.admin.model.dto.ClassDTO;
import com.tig.wdc.admin.model.dto.QuestionDTO;
import com.tig.wdc.admin.model.dto.ReportDTO;
import com.tig.wdc.admin.model.dto.StudentDTO;

@Service
public class AdminServiceImpl implements AdminService {
	
	private AdminMapper mapper;
	
	@Autowired
	public AdminServiceImpl(AdminMapper mapper) {
		
		this.mapper = mapper;
		
	}
	
	@Override
	public List<StudentDTO> selectAllStudentList() {
		
		return mapper.selectAllStudentList();
	}

	@Override
	public List<ClassDTO> selectAllClassList() {
		
		return mapper.selectAllClassList();
	}

//	@Override
//	public List<ReportDTO> selectAllReportList() {
//		
//		return mapper;
//	}
	
	@Override
	public List<QuestionDTO> selectAllQuestionList() {
		
		return mapper.selectAllQuestionList();
	}

}
