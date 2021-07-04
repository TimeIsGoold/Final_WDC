package com.tig.wdc.user.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tig.wdc.model.dto.CurriculumDTO;
import com.tig.wdc.user.model.dao.UserClassMapper;
import com.tig.wdc.user.model.dao.UserInfoMapper;
import com.tig.wdc.user.model.dto.ClassApplyDTO;
import com.tig.wdc.user.model.dto.ClassPieceDTO;
import com.tig.wdc.user.model.dto.PaymentDTO;
import com.tig.wdc.user.model.dto.ReviewAnswerDTO;
import com.tig.wdc.user.model.dto.ScheduleDTO;
import com.tig.wdc.user.model.dto.UserClassDTO;
import com.tig.wdc.user.model.dto.UserCouponDTO;
import com.tig.wdc.user.model.dto.UserInfoDTO;
import com.tig.wdc.user.model.dto.UserInquiryDTO;
import com.tig.wdc.user.model.dto.UserReviewDTO;

/**
 * @author SORA
 *
 */
@Service
public class UserClassServiceImpl implements UserClassService{

	@Autowired
	private UserClassMapper mapper;
	private UserInfoMapper userInfoMapper;
	public UserClassServiceImpl(UserClassMapper mapper, UserInfoMapper userInfoMapper) {
		this.mapper = mapper;
		this.userInfoMapper = userInfoMapper;
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


	@Override
	public List<ScheduleDTO> selectSchedule(int clsNo) {
		return mapper.selectSchedule(clsNo);
	}

	@Override
	public List<UserInquiryDTO> selectQnA(int clsNo) {
		return mapper.selectQnA(clsNo);
	}

	/**
	 *@author 연준
	 */
	@Override
	public UserInfoDTO selectUserInfo(int userNo) {
		return userInfoMapper.selectUser(userNo);
	}

	/**
	 *@author 연준
	 */
	@Override
	public List<UserCouponDTO> selectCouponList(UserClassDTO userClassDTO) {
		return mapper.selectCouponList(userClassDTO);
	}

	@Override
	public ScheduleDTO selectscheduleNo(String stringScheduleDate) {
		return mapper.selectscheduleNo(stringScheduleDate);
	}

	@Override
	public int insertClassApply(ClassApplyDTO paymentClassApplyDTO) {
		return mapper.insertClassApply(paymentClassApplyDTO);
	}

	@Override
	public int insertPayment(PaymentDTO insertPaymentDTO) {
		return mapper.insertPayment(insertPaymentDTO);
	}

	@Override
	public int updateCpnUseYn(int cpnNo) {
		return mapper.updateCpnUseYn(cpnNo);
	}




}
