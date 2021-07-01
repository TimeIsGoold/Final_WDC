package com.tig.wdc.teacher.model.service;

import java.util.List;

import com.tig.wdc.model.dto.NoticeDTO;
import com.tig.wdc.model.dto.PageInfoDTO;
import com.tig.wdc.user.model.dto.ClassDTO;

/**
 * 공지사항(상세), 관리자 문의(작성,내역) 등 게시판 처리용
 * @author 이해승
 *
 */
public interface BoardAndQnAService {

	/**
	 * 공지사항 전체수 조회
	 * @return 공지사항 전체 수
	 */
	public int selectNoticeCount();

	/**
	 * @param pageInfo : 공지사항 페이징 처리 후 조회
	 * @return : 페이징 처리 된 공지사항
	 */
	public List<NoticeDTO> selectNoticeList(PageInfoDTO pageInfo);

	/**
	 * @param teacherNo 강사번호
	 * @return 강사가 보유한 강의 전체목록
	 */
	public int selectClassCount(int teacherNo);

	/**
	 * @param classInfo 강사번호, 페이지번호
	 * @return 클래스 리스트
	 */
	public List<ClassDTO> selectClassList(ClassDTO classInfo);
}
