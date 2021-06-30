package com.tig.wdc.user.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tig.wdc.user.model.dao.UserInfoMapper;
import com.tig.wdc.user.model.dto.UserClassDTO;
import com.tig.wdc.user.model.dto.UserCouponDTO;
import com.tig.wdc.user.model.dto.UserInfoDTO;

@Service
public class UserInfoServiceImpl implements UserInfoService {

	@Autowired
	private UserInfoMapper mapper;
	public UserInfoServiceImpl(UserInfoMapper mapper) {
		this.mapper = mapper;
	}

	
	@Override
	public UserInfoDTO selectUser(int userNo) {
		return mapper.selectUser(userNo);
	}


	@Override
	public UserInfoDTO findUserInfo(UserInfoDTO userInfoDTO) {
		return mapper.findfindUserInfo(userInfoDTO);
	}


	@Override
	public List<UserCouponDTO> selectCouponList(int userNo) {
		return mapper.selectCouponList(userNo);
	}


	@Override
	public List<UserClassDTO> selectScheduledClassList(int userNo) {
		return mapper.selectScheduledClassList(userNo);
	}

}
