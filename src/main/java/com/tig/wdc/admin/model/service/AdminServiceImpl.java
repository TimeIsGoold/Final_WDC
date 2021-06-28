package com.tig.wdc.admin.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tig.wdc.admin.model.dao.AdminMapper;
import com.tig.wdc.admin.model.dto.ClassDTO;
import com.tig.wdc.admin.model.dto.QuestionDTO;
import com.tig.wdc.admin.model.dto.ReportDTO;
import com.tig.wdc.admin.model.dto.StudentDTO;
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
	public StudentDTO selectOneStudent() {
		// TODO Auto-generated method stub
		return null;
	}

}
