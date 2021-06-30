package com.tig.wdc.teacher.model.dao;

import java.util.List;

import com.tig.wdc.model.dto.AttachMentDTO;
import com.tig.wdc.model.dto.ClassPieceDTO;
import com.tig.wdc.model.dto.CurriculumDTO;
import com.tig.wdc.user.model.dto.ClassDTO;

/**
 * @author 이해승
 * 클래스등록용 Mapper
 */
public interface ClassRegistMapper {

	int insertClassInfo(ClassDTO classInfo);

	int insertTitlePicture(AttachMentDTO titlePicture);

	int insertCompletePiece(ClassPieceDTO classPiece);

	int insertCurriculum(List<CurriculumDTO> curriList);

}
