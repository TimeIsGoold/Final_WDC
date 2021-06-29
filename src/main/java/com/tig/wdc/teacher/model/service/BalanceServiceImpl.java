package com.tig.wdc.teacher.model.service;

import java.util.List;

import com.tig.wdc.model.dto.BalanceDTO;
import com.tig.wdc.model.dto.PageInfoDTO;
import com.tig.wdc.teacher.model.dao.TeacherBalanceMapper;

public class BalanceServiceImpl implements BalanceService {

	private TeacherBalanceMapper mapper;
	
	@Override
	public int selectBalanceCount() {
		
		return mapper.selectBalanceCount();
	}

	@Override
	public List<BalanceDTO> selectBalanceList(PageInfoDTO pageInfo) {

		return mapper.selectBalanceList(pageInfo);
	}

}
