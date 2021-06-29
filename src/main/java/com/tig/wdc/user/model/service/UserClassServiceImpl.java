package com.tig.wdc.user.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tig.wdc.user.model.dao.UserClassMapper;
import com.tig.wdc.user.model.dto.UserClassDTO;

@Service
public class UserClassServiceImpl implements UserClassService{

	@Autowired
	private UserClassMapper mapper;
	public UserClassServiceImpl(UserClassMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public List<UserClassDTO> selectNewClassList() {

		return mapper.selectNewClassList();
	}
}
