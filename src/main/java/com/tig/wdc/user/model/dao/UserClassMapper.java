package com.tig.wdc.user.model.dao;

import java.util.List;

import com.tig.wdc.user.model.dto.UserClassDTO;

/**
 * @author SORA
 * 클래스 정보 조회 매퍼
 */
public interface UserClassMapper {

	public List<UserClassDTO> selectNewClassList();

}
