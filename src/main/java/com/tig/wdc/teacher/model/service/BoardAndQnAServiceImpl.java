package com.tig.wdc.teacher.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.tig.wdc.model.dto.NoticeDTO;
import com.tig.wdc.model.dto.PageInfoDTO;
import com.tig.wdc.teacher.model.dao.BoardAndQnAMapper;
import com.tig.wdc.teacher.model.dao.TeacherInfoMapper;
import com.tig.wdc.user.model.dto.ClassDTO;

@Service
public class BoardAndQnAServiceImpl implements BoardAndQnAService {

	private BoardAndQnAMapper mapper;
	
	@Autowired
	public BoardAndQnAServiceImpl(BoardAndQnAMapper mapper) {
		this.mapper = mapper;
	}
	
	@Override
	public int selectNoticeCount() {
		return mapper.selectNoticeCount();
	}

	@Override
	public List<NoticeDTO> selectNoticeList(PageInfoDTO pageInfo) {
		return mapper.selectNoticeList(pageInfo);
	}

	@Override
	public int selectClassCount(int teacherNo) {
		return mapper.selectClassCount(teacherNo);
	}

	@Override
	public List<ClassDTO> selectClassList(ClassDTO classInfo) {
		return mapper.selectClassList(classInfo);
	}

}
