package com.tig.wdc.teacher.model.dao;

import com.tig.wdc.model.dto.TeacherInfoDTO;

/**
 * @author 이해승
 *
 */
public interface TeacherInfoMapper {

	//로그인 정보 확인
	TeacherInfoDTO findTeacherInfo(TeacherInfoDTO loginInfo);

	//강사의 등록된 클래스 수
	int selectRegisteredClassCount(int teacherNo);

	//강사의 누적 정산료
	String selectSumClassCalculate(int teacherNo);

	//강사정보조회
	TeacherInfoDTO searchTeacherInfo(int teacherNo);

	//강사프로필 수정
	int updateTeacherProfile(TeacherInfoDTO profileInfo);
}
