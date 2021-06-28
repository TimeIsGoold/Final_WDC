package com.tig.wdc.user.model.service;

import com.tig.wdc.user.model.dto.UserInfoDTO;

public interface UserInfoService {

	public UserInfoDTO selectUser(int userNo);
}
