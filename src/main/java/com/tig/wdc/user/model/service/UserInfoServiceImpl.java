package com.tig.wdc.user.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tig.wdc.user.model.dao.UserInfoMapper;
import com.tig.wdc.user.model.dto.UserInfoDTO;

@Service
public class UserInfoServiceImpl implements UserInfoService {

	@Autowired
	private UserInfoMapper mapper;
	public UserInfoServiceImpl(UserInfoMapper mapper) {
		this.mapper = mapper;
	}
	//	private TeacherInfoMapper mapper;

	
	@Override
	public UserInfoDTO selectUser(int userNo) {
		
		
		return mapper.selectUser(userNo);
	}

}
