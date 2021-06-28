package com.tig.wdc.user.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tig.wdc.user.model.dao.UserCategoryMapper;
import com.tig.wdc.user.model.dto.UserClassDTO;

@Service
public class UserCategoryServiceImpl implements UserCategoryService {
	
	@Autowired
	private UserCategoryMapper mapper;
	public UserCategoryServiceImpl(UserCategoryMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public List<UserClassDTO> selectClassCategory() {
		return mapper.selectClassCategory();
	}

	@Override
	public List<UserClassDTO> selectClassSportsCategory() {
		return mapper.selectSportsClassCategory();
	}

}
