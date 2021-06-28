package com.tig.wdc.user.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tig.wdc.admin.model.dto.ClassDTO;
import com.tig.wdc.user.model.dao.UserCategoryMapper;

@Service
public class UserCategoryServiceImpl implements UserCategoryService {
	
	@Autowired
	private UserCategoryMapper mapper;
	public UserCategoryServiceImpl(UserCategoryMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public List<ClassDTO> selectClassCategory() {

		
		return mapper.selectClassCategory();
	}

}
