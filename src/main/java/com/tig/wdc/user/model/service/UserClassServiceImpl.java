package com.tig.wdc.user.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tig.wdc.model.dto.CurriculumDTO;
import com.tig.wdc.user.model.dao.UserClassMapper;
import com.tig.wdc.user.model.dto.ClassPieceDTO;
import com.tig.wdc.user.model.dto.ReviewAnswerDTO;
import com.tig.wdc.user.model.dto.UserClassDTO;
import com.tig.wdc.user.model.dto.UserReviewDTO;

/**
 * @author SORA
 *
 */
@Service
public class UserClassServiceImpl implements UserClassService{

	@Autowired
	private UserClassMapper mapper;
	public UserClassServiceImpl(UserClassMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public List<UserClassDTO> selectNewClassList() {

		return mapper.selectNewClassList();
	}

	@Override
	public List<UserClassDTO> selectTopClassList() {
		
		return mapper.selectTopClassList();
	}

	@Override
	public List<UserClassDTO> selectCheerClassList() {

		return mapper.selectCheerClassList();
	}

	@Override
	public UserClassDTO selectClassDtail(int clsNo) {

		return mapper.selectClassDetail(clsNo);
	}

	@Override
	public List<ClassPieceDTO> selectClassPiece(int clsNo) {
		return mapper.selectClassPiece(clsNo);
	}

	@Override
	public List<CurriculumDTO> selectCurriculum(int clsNo) {
		return mapper.selectCurriculum(clsNo);
	}

	@Override
	public List<UserClassDTO> selectClassPic(int clsNo) {
		return mapper.selectClassPic(clsNo);
	}

	@Override
	public List<UserReviewDTO> selectReview(int clsNo) {
		return mapper.selectReview(clsNo);
	}

	@Override
	public UserClassDTO selectClassStar(int clsNo) {
		return mapper.selectClassStar(clsNo);
	}

}
