package com.tig.wdc;

import org.springframework.stereotype.Service;

import com.tig.wdc.teacher.model.dao.TeacherMapper;

@Service("test")
public class TestServiceImpl implements TestService {

	private TeacherMapper mapper;
	
	
	public TestServiceImpl(TeacherMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public int selectTest() {
		
		return mapper.selectTest();
	}

}
