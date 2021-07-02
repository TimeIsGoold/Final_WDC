package com.tig.wdc.teacher.model.dao;

import java.util.List;

import com.tig.wdc.model.dto.NoticeDTO;
import com.tig.wdc.model.dto.PageInfoDTO;
import com.tig.wdc.user.model.dto.ClassDTO;

public interface BoardAndQnAMapper {

	int selectNoticeCount();

	List<NoticeDTO> selectNoticeList(PageInfoDTO pageInfo);

	int selectClassCount(int teacherNo);

	List<ClassDTO> selectClassList(ClassDTO classInfo);

}
