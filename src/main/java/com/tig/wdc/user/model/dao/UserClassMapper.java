package com.tig.wdc.user.model.dao;

import java.util.List;
import java.util.Map;

import com.tig.wdc.model.dto.CurriculumDTO;
import com.tig.wdc.user.model.dto.ClassApplyDTO;
import com.tig.wdc.user.model.dto.ClassPieceDTO;
import com.tig.wdc.user.model.dto.PaymentDTO;
import com.tig.wdc.user.model.dto.ReviewAnswerDTO;
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

	public List<ScheduleDTO> selectSchedule(int clsNo);

	public UserInfoDTO selectUserInfo(int userNo);

	public List<UserCouponDTO> selectCouponList(UserClassDTO userClassDTO);

	public List<UserInquiryDTO> selectQnA(int clsNo);

	public ScheduleDTO selectscheduleNo(ScheduleDTO scheduleDTO);

	public int insertClassApply(ClassApplyDTO paymentClassApplyDTO);

	public int insertPayment(PaymentDTO insertPaymentDTO);

	public int updateCpnUseYn(int cpnNo);

	public int insertReport(UserReportDTO userReportDTO);

	public int insertReportHistory(UserReportDTO userReportDTO);

	public List<ScheduleDTO> selectTime(ScheduleDTO scheduleDTO);

	public int inserRefund(UserRefundDTO userRefundDTO);

	public int updatePaymentStatus(int payNo);

	public int selectCheerHistory(UserClassDTO cheerUpHisInsertDTO);

	public int insertCheerHistory(UserClassDTO cheerUpHisInsertDTO);

	public ScheduleDTO selectPeople(ScheduleDTO scheduleDTO);

	public int insertInquiry(UserInquiryDTO userInquiryDTO);
	
	public List<UserClassDTO> selectMyCheerClassList(int userNo);

	public UserRefundDTO selectMaxStep(int scheduleNo);




}
