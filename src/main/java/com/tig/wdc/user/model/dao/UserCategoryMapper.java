package com.tig.wdc.user.model.dao;

import java.util.List;

import com.tig.wdc.user.model.dto.UserClassDTO;



public interface UserCategoryMapper {

	public List<UserClassDTO> selectClassCategory();
	
	public List<UserClassDTO> selectSportsClassCategory();

}
