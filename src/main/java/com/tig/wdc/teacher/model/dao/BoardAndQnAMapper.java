package com.tig.wdc.teacher.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.tig.wdc.admin.model.dto.QuestionDTO;
import com.tig.wdc.model.dto.NoticeDTO;
import com.tig.wdc.model.dto.PageInfoDTO;
import com.tig.wdc.user.model.dto.ClassDTO;
import com.tig.wdc.user.model.dto.InquiryAnswerDTO;
import com.tig.wdc.user.model.dto.UserInquiryDTO;
import com.tig.wdc.user.model.dto.UserReportDTO;

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

	List<UserInquiryDTO> selectinquiryList(HashMap<String, Object> classInfo);

	int selectUserInquiryCount(String clsNo);

	UserInquiryDTO selectOneInquiry(HashMap<String, Object> inquiryInfo);

	int insertInquiryAnswer(InquiryAnswerDTO answer);

	int insertReportUser(UserReportDTO reportInfo);

	int insertReportHistory(UserReportDTO reportInfo);

}
