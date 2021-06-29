package com.tig.wdc.teacher.model.service;

import com.tig.wdc.model.dto.AttachMentDTO;
import com.tig.wdc.user.model.dto.ClassDTO;

/**
 * @author 이해승
 * 클래스등록 인터페이스
 */
public interface ClassRegistService {

	//클래스정보 insert
	int insertClassInfo(ClassDTO classInfo);
	
	//클래스 대표사진 insert
	int insertTitlePicture(AttachMentDTO titlePicture);

	
}
