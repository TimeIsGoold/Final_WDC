package com.tig.wdc.user.model.service;

import java.util.List;

import com.tig.wdc.user.model.dto.UserClassDTO;


public interface UserCategoryService {

	public List<UserClassDTO> selectClassCategory();
	
	public List<UserClassDTO> selectClassSportsCategory();
}
