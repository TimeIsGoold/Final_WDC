package com.tig.wdc.teacher.model.dao;

import java.util.List;

import com.tig.wdc.model.dto.NoticeDTO;
import com.tig.wdc.model.dto.PageInfoDTO;

public interface BoardAndQnAMapper {

	int selectNoticeCount();

	List<NoticeDTO> selectNoticeList(PageInfoDTO pageInfo);

}
