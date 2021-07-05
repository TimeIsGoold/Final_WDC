package com.tig.wdc.teacher.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.tig.wdc.admin.model.dto.QuestionDTO;
import com.tig.wdc.model.dto.NoticeDTO;
import com.tig.wdc.model.dto.PageInfoDTO;
import com.tig.wdc.teacher.model.dao.BoardAndQnAMapper;
import com.tig.wdc.teacher.model.dao.TeacherInfoMapper;
import com.tig.wdc.user.model.dto.ClassDTO;
import com.tig.wdc.user.model.dto.UserInquiryDTO;

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

	@Override
	public int selectScheduleCount(int clsNo) {
		return mapper.selectScheduleCount(clsNo);
	}

	@Override
	public int selectAdminQnACount(int teacherNo) {
		return mapper.selectAdminQnACount(teacherNo);
	}

	@Override
	public List<UserInquiryDTO> selectAdminQnAList(HashMap<String, Object> searchCondition) {
		return mapper.selectAdminQnAList(searchCondition);
	}

	@Override
	public UserInquiryDTO selectQnADetail(Map<String, String> serachInfo) {
		return mapper.selectQnADetail(serachInfo);
	}

	@Override
	public int insertAdminQuestion(QuestionDTO content) {
		return mapper.insertAdminQuestion(content);
	}

	@Override
	public int insertAdminQuestionHistory(QuestionDTO content) {
		return mapper.insertAdminQuestionHistory(content);
	}



}
