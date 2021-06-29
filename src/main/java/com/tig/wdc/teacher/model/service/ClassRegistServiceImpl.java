package com.tig.wdc.teacher.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tig.wdc.model.dto.AttachMentDTO;
import com.tig.wdc.teacher.model.dao.ClassRegistMapper;
import com.tig.wdc.user.model.dto.ClassDTO;

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

}
