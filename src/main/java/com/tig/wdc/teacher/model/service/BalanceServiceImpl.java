package com.tig.wdc.teacher.model.service;

import java.util.List;
import java.util.Map;

import com.tig.wdc.model.dto.BalanceDTO;
import com.tig.wdc.teacher.model.dao.TeacherBalanceMapper;

public class BalanceServiceImpl implements BalanceService {

	private TeacherBalanceMapper mapper;
	
	@Override
	public int selectBalanceCount() {
		
		return mapper.selectBalanceCount();
	}

	@Override
	public List<BalanceDTO> selectBalanceList(Map<String, Object> map) {

		return mapper.selectBalanceList(map);
	}

}
