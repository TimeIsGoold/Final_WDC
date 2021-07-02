package com.tig.wdc.teacher.model.service;

import com.tig.wdc.model.dto.AttachMentDTO;
import com.tig.wdc.model.dto.ClassPieceDTO;
import com.tig.wdc.model.dto.CurriculumDTO;
import com.tig.wdc.model.dto.RegularClassInfoDTO;
import com.tig.wdc.user.model.dto.ClassDTO;
import com.tig.wdc.user.model.dto.ScheduleDTO;

/**
 * @author 이해승
 * 클래스등록 인터페이스
 */
public interface ClassRegistManageService {

	//클래스정보 insert
	int insertClassInfo(ClassDTO classInfo);
	
	//클래스 대표사진 insert
	int insertTitlePicture(AttachMentDTO titlePicture);

	//클래스 완성작 insert
	int insertCompletePiece(ClassPieceDTO classPiece);

	//클래스 커리큘럼 insert
	int insertCurriculum(CurriculumDTO curriculum);

	//클래스 스케쥴 
	int insertSchedule(ScheduleDTO schedule);

	//정규 클래스 정보
	RegularClassInfoDTO selectRegularScheduleinfo(int clsNo);

	//정규 클래스 신청한 정보
	RegularClassInfoDTO selectApplyUserInfo(int schedule_no);

	
}
