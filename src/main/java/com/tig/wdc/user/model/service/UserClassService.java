package com.tig.wdc.user.model.service;

import java.util.List;

import com.tig.wdc.user.model.dto.UserClassDTO;

/**
 * @author SORA
 *
 */
public interface UserClassService {

	List<UserClassDTO> selectNewClassList();

	List<UserClassDTO> selectTopClassList();
	
	List<UserClassDTO> selectCheerClassList();

	UserClassDTO selectClassDtail(int clsNo);


}
