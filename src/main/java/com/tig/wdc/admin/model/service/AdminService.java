package com.tig.wdc.admin.model.service;

import java.util.List;

import com.tig.wdc.admin.model.dto.StudentDTO;

public interface AdminService {

	List<StudentDTO> selectAllStudentList();
}
