package com.tig.wdc.admin.model.dao;

import java.util.List;

import com.tig.wdc.admin.model.dto.ClassDTO;
import com.tig.wdc.admin.model.dto.StudentDTO;

public interface AdminMapper {

	List<StudentDTO> selectAllStudentList();
	
	List<ClassDTO> selectAllClassList();
}
