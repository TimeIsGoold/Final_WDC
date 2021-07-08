package com.tig.wdc.teacher.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.tig.wdc.admin.model.dto.QuestionDTO;
import com.tig.wdc.model.dto.NoticeDTO;
import com.tig.wdc.model.dto.PageInfoDTO;
import com.tig.wdc.user.model.dto.ClassDTO;
import com.tig.wdc.user.model.dto.UserInquiryDTO;

public interface BoardAndQnAMapper {

	int selectNoticeCount();

	List<NoticeDTO> selectNoticeList(PageInfoDTO pageInfo);

	int selectClassCount(int teacherNo);

	List<ClassDTO> selectClassList(ClassDTO classInfo);

	int selectScheduleCount(int clsNo);

	int selectAdminQnACount(int teacherNo);

	List<UserInquiryDTO> selectAdminQnAList(HashMap<String, Object> searchCondition);

	UserInquiryDTO selectQnADetail(Map<String, String> serachInfo);

	int insertAdminQuestion(QuestionDTO content);

	int insertAdminQuestionHistory(QuestionDTO content);

	NoticeDTO selectNoticeDetail(int noticeNo);

	List<UserInquiryDTO> selectinquiryList(String clsNo);

}
