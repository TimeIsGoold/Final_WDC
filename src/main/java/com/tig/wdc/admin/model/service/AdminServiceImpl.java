package com.tig.wdc.admin.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tig.wdc.admin.model.dao.AdminMapper;
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

}
