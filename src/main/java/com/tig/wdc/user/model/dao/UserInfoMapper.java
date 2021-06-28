package com.tig.wdc.user.model.dao;

import com.tig.wdc.user.model.dto.UserInfoDTO;

public interface UserInfoMapper {
	
	UserInfoDTO selectUser(int userNo);

}
