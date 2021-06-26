package com.tig.wdc.teacher.model.service;

import com.tig.wdc.model.dto.TeacherInfoDTO;

/**
 * @author 이해승
 * 강사정보 처리
 */
public interface TeacherInfoService {

	/**
	 * 강사 로그인 정보 확인
	 * @param loginInfo 
	 * @return
	 */
	public TeacherInfoDTO findteacherInfo(TeacherInfoDTO loginInfo);
}
