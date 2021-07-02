package com.tig.wdc.user.model.dao;

import java.util.List;

import com.tig.wdc.model.dto.CurriculumDTO;
import com.tig.wdc.user.model.dto.ClassPieceDTO;
import com.tig.wdc.user.model.dto.ReviewAnswerDTO;
import com.tig.wdc.user.model.dto.UserClassDTO;
import com.tig.wdc.user.model.dto.UserReviewDTO;

/**
 * @author SORA
 * 클래스 정보 조회 매퍼
 */
public interface UserClassMapper {

	public List<UserClassDTO> selectNewClassList();

	public List<UserClassDTO> selectTopClassList();

	public List<UserClassDTO> selectCheerClassList();

	public UserClassDTO selectClassDetail(int clsNo);

	public List<ClassPieceDTO> selectClassPiece(int clsNo);

	public List<CurriculumDTO> Curriculum(int clsNo);

	public List<CurriculumDTO> selectCurriculum(int clsNo);

	public List<UserClassDTO> selectClassPic(int clsNo);

	public List<UserReviewDTO> selectReview(int clsNo);

	public UserClassDTO selectClassStar(int clsNo);


}
