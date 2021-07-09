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
import com.tig.wdc.user.model.dto.UserRefundDTO;
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

	ScheduleDTO selectscheduleNo(ScheduleDTO scheduleDTO);

	int insertClassApply(ClassApplyDTO paymentClassApplyDTO);

	int insertPayment(PaymentDTO insertPaymentDTO);

	int updateCpnUseYn(int cpnNo);

	int insertReport(UserReportDTO userReportDTO);

	int insertReportHistory(UserReportDTO userReportDTO);

	List<ScheduleDTO> selectTime(ScheduleDTO scheduleDTO);

	int inserRefund(UserRefundDTO userRefundDTO);

	int updatePaymentStatus(int payNo);

	int selectCheerHistory(UserClassDTO cheerUpHisInsertDTO);

	int insertCheerHistory(UserClassDTO cheerUpHisInsertDTO);

	ScheduleDTO selectPeople(ScheduleDTO scheduleDTO);

	int selectMaxUserSize(ScheduleDTO scheduleDTO);

	int insertInquiry(UserInquiryDTO userInquiryDTO);
	
	List<UserClassDTO> selectMyCheerClassList(int userNo);

	UserRefundDTO selectRefundAmount(int scheduleNo, int payPrice);

	ScheduleDTO selectRegularSchedule(int clsNo);
	
	ScheduleDTO selectApplyPeople(ScheduleDTO regularSchedule);
	
	int selectDoTodayCheer(int userNo);

	int selectUserCpnNo(int cpnNo);

	int insertAllUserCoupon(UserCouponDTO forInsertAllUserCouponDTO);

	int selectOneDayMax(int clsNo);

	int insertTuitionManagement(PaymentDTO insertPaymentDTO);

	int selectCheerCount(int clsNo);

	List<UserClassDTO> selectMyLikeClassList(int userNo);

	int updateUserWithdraw(int userNo);

}
