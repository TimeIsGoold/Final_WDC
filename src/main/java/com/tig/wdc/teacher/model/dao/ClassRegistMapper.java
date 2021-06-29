package com.tig.wdc.teacher.model.dao;

import com.tig.wdc.model.dto.AttachMentDTO;
import com.tig.wdc.user.model.dto.ClassDTO;

/**
 * @author 이해승
 * 클래스등록용 Mapper
 */
public interface ClassRegistMapper {

	int insertClassInfo(ClassDTO classInfo);

	int insertTitlePicture(AttachMentDTO titlePicture);

}
