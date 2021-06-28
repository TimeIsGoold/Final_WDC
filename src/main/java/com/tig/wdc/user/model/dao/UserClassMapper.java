package com.tig.wdc.user.model.dao;

import java.util.List;

import com.tig.wdc.user.model.dto.UserClassDTO;

public interface UserClassMapper {

	public List<UserClassDTO> selectNewClassList();

}
