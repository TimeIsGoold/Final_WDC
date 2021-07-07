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
	 * @return 강사정보
	 */
	public TeacherInfoDTO findteacherInfo(TeacherInfoDTO loginInfo);

	/**
	 * 등록된 클래수 수 조회
	 * @param teacherNo 강사번호
	 * @return 등록된 클래스 수
	 */
	public int selectRegisteredClassCount(int teacherNo);

	/**
	 * 강사 누적 정산료 조회
	 * @param teacherNo 강사번호
	 * @return 누적정산료
	 */
	public String selectSumClassCalculate(int teacherNo);

	/**
	 * 강사정보 조회용
	 * @param teacherNo 강사번호
	 * @return 강사정보
	 */
	public TeacherInfoDTO selectTeacherInfo(int teacherNo);

	/**
	 * 강사 프로필(소개, 사진) 정보 수정용
	 * @param profileInfo 소개글, 사진 정보
	 * @return 성공 : 1, 실패 0;
	 */
	public int updateTeacherProfile(TeacherInfoDTO profileInfo);

	/**
	 * 아이디 중복확인
	 * @param checkId : 확인할 아이디
	 * @return
	 */
	public String selectCheckDoubleId(String checkId);

	/**
	 * 강사회원가입
	 * @param registInfo
	 * @return
	 */
	public int registTeacher(TeacherInfoDTO registInfo);


}
