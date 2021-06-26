package com.tig.wdc.teacher.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.tig.wdc.model.dto.TeacherInfoDTO;
import com.tig.wdc.teacher.model.dao.TeacherInfoMapper;

/**
 * @author 이해승
 * 
 */
@Service
public class TeacherInfoServiceImpl implements TeacherInfoService {

	private TeacherInfoMapper mapper;
	
	@Autowired
	public TeacherInfoServiceImpl(TeacherInfoMapper mapper, BCryptPasswordEncoder passwordEncoder) {
		super();
		this.mapper = mapper;
	}

	@Override
	public TeacherInfoDTO findteacherInfo(TeacherInfoDTO loginInfo) {
		
		return mapper.findTeacherInfo(loginInfo);
	}

}