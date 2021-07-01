package com.tig.wdc.teacher.model.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tig.wdc.model.dto.AttachMentDTO;
import com.tig.wdc.model.dto.ClassPieceDTO;
import com.tig.wdc.model.dto.CurriculumDTO;
import com.tig.wdc.teacher.model.dao.ClassRegistMapper;
import com.tig.wdc.user.model.dto.ClassDTO;
import com.tig.wdc.user.model.dto.ScheduleDTO;

/**
 * @author 이해승
 * 클래스등록용 서비스
 */
@Service
public class ClassRegistServiceImpl implements ClassRegistService {
	
	private ClassRegistMapper mapper;
	
	@Autowired
	public ClassRegistServiceImpl(ClassRegistMapper mapper) {
		this.mapper = mapper;
	}

	/**
	 * 클래스 정보 insert
	 */
	@Override
	public int insertClassInfo(ClassDTO classInfo) {
		return mapper.insertClassInfo(classInfo);
	}

	/**
	 * 클래스 대표사진 insert
	 */
	@Override
	public int insertTitlePicture(AttachMentDTO titlePicture) {
		return mapper.insertTitlePicture(titlePicture);
	}

	/**
	 * 클래스 완성작 insert
	 */
	@Override
	public int insertCompletePiece(ClassPieceDTO classPiece) {
		return mapper.insertCompletePiece(classPiece);
	}

	/**
	 * 커리큘럼 insert
	 */
	@Override
	public int insertCurriculum(CurriculumDTO curriculum) {
		return  mapper.insertCurriculum(curriculum);
	}

	/**
	 * 스케쥴 insert
	 */
	@Override
	public int insertSchedule(ScheduleDTO schedule) {
		return mapper.insertSchedule(schedule);
	}
	
	

}
