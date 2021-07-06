package com.tig.wdc.user.model.service;

import java.util.List;
import java.util.Map;

import com.tig.wdc.model.dto.CurriculumDTO;
import com.tig.wdc.user.model.dto.ClassApplyDTO;
import com.tig.wdc.user.model.dto.ClassPieceDTO;
import com.tig.wdc.user.model.dto.PaymentDTO;
import com.tig.wdc.user.model.dto.ScheduleDTO;
import com.tig.wdc.user.model.dto.UserClassDTO;
import com.tig.wdc.user.model.dto.UserCouponDTO;
import com.tig.wdc.user.model.dto.UserInfoDTO;
import com.tig.wdc.user.model.dto.UserInquiryDTO;
import com.tig.wdc.user.model.dto.UserReportDTO;
import com.tig.wdc.user.model.dto.UserReviewDTO;

/**
 * @author SORA
 *
 */
public interface UserClassService {

	List<UserClassDTO> selectNewClassList();

	List<UserClassDTO> selectTopClassList();
	
	List<UserClassDTO> selectCheerClassList();

	UserClassDTO selectClassDtail(int clsNo);

	List<ClassPieceDTO> selectClassPiece(int clsNo);

	List<CurriculumDTO> selectCurriculum(int clsNo);

	List<UserClassDTO> selectClassPic(int clsNo);

	List<UserReviewDTO> selectReview(int clsNo);

	UserClassDTO selectClassStar(int clsNo);

	List<ScheduleDTO> selectSchedule(int clsNo);

	UserInfoDTO selectUserInfo(int userNo);

	List<UserCouponDTO> selectCouponList(UserClassDTO userClassDTO);

	List<UserInquiryDTO> selectQnA(int clsNo);

	ScheduleDTO selectscheduleNo(String stringScheduleDate);

	int insertClassApply(ClassApplyDTO paymentClassApplyDTO);

	int insertPayment(PaymentDTO insertPaymentDTO);

	int updateCpnUseYn(int cpnNo);

	int insertReport(UserReportDTO userReportDTO);

	int insertReportHistory(UserReportDTO userReportDTO);

	List<ScheduleDTO> selectTime(ScheduleDTO scheduleDTO);



}
