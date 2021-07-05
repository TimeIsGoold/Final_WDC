package com.tig.wdc.user.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tig.wdc.model.dto.CurriculumDTO;
import com.tig.wdc.user.model.dto.ClassApplyDTO;
import com.tig.wdc.user.model.dto.ClassPieceDTO;
import com.tig.wdc.user.model.dto.PaymentDTO;
import com.tig.wdc.user.model.dto.ScheduleDTO;
import com.tig.wdc.user.model.dto.UserClassDTO;
import com.tig.wdc.user.model.dto.UserCouponDTO;
import com.tig.wdc.user.model.dto.UserInfoDTO;
import com.tig.wdc.user.model.dto.UserInquiryDTO;
import com.tig.wdc.user.model.dto.UserReviewDTO;
import com.tig.wdc.user.model.service.UserClassService;

/**
 * @author SORA
 * 클래스 상세보기 컨트롤러 / 신청 / 결제 / 신고 용 컨트롤러
 */
@Controller
@RequestMapping("/user/*")
public class UserClassDetailController {

	private final UserClassService classService;
	
	@Autowired
	public UserClassDetailController(UserClassService classService) {
		this.classService = classService;
	}
	
	/**
	 * 클래스 상세보기 정보 select
	 * @param model
	 * @return
	 */
	@GetMapping("classDetail/{clsNo}")
	public String ClassDetail(HttpSession session, @PathVariable("clsNo") int clsNo, Model model) {
		
		//클래스 정보 select
		UserClassDTO classDetail = new UserClassDTO();
		classDetail = classService.selectClassDtail(clsNo);
		model.addAttribute("classDetail",classDetail);
		
		//대표사진 3장 select
		List<UserClassDTO> classPic = new ArrayList<UserClassDTO>();
		classPic = classService.selectClassPic(clsNo);
		model.addAttribute("classPic",classPic);
		
		//평점 select
		UserClassDTO classStar = new UserClassDTO();
		classStar = classService.selectClassStar(clsNo);
		model.addAttribute("classStar",classStar);
		
		//완성작 select
		List<ClassPieceDTO> classPiece = new ArrayList<ClassPieceDTO>();
		classPiece = classService.selectClassPiece(clsNo);
		model.addAttribute("classPiece",classPiece);
		
		//커리큘럼 select
		List<CurriculumDTO> curriculum = new ArrayList<CurriculumDTO>();
		curriculum = classService.selectCurriculum(clsNo);
		model.addAttribute("curriculum",curriculum);
		
		//리뷰 select
		List<UserReviewDTO> review = new ArrayList<UserReviewDTO>();
		review = classService.selectReview(clsNo);
		model.addAttribute("review",review);
				
		//문의 select
		List<UserInquiryDTO> qna = new ArrayList<UserInquiryDTO>();
		qna = classService.selectQnA(clsNo);
		model.addAttribute("qna",qna);
		
		//클래스 스케줄 select
		List<ScheduleDTO> schedule = new ArrayList<ScheduleDTO>();
		schedule = classService.selectSchedule(clsNo);
		model.addAttribute("schedule",schedule);

		return "user/classList/class_detail";
	}
	
	/**
	 * 결제페이지 이동용 메소드
	 * @author 연준
	 * @param session
	 * @return
	 */
	@PostMapping("payment")
	public String payment(HttpSession session, ScheduleDTO scheduleDTO, ClassApplyDTO classApplyDTO, Model model, UserClassDTO userClassDTO) {
		int userNo= (Integer) session.getAttribute("userNo");
		// 유저 넘버로 이름과 전화번호 조회
		UserInfoDTO userInfo = new UserInfoDTO();
		userInfo = classService.selectUserInfo(userNo);
		model.addAttribute("userInfo", userInfo);
		
		// 유저 넘버로 보유 쿠폰 조회
		List<UserCouponDTO> couponList = new ArrayList<UserCouponDTO>();
		userClassDTO.setUserNo(userNo);
		couponList = classService.selectCouponList(userClassDTO);
		model.addAttribute("couponList",couponList);
		
		// 스케줄 넘버 조회
		ScheduleDTO paymentScheduleDTO = new ScheduleDTO();
		paymentScheduleDTO = classService.selectscheduleNo(scheduleDTO.getStringScheduleDate());
		model.addAttribute("pasymentScheduleDTO", paymentScheduleDTO);

		
		
		model.addAttribute("classApplyDTO",classApplyDTO);
		
		// stringScheduleDate 용
		model.addAttribute("scheduleDTO", scheduleDTO);
		
		return "user/payment/payment";
	}
	
	
	/**
	 * 결제 완료 시 이동 페이지 및 결제 디비 인서트
	 * @return
	 */
	@PostMapping("paymentSuccess")
	public String paymentSuccess(HttpServletRequest request, HttpSession session) {
		int userNo= (Integer) session.getAttribute("userNo");
		// 0 .쿠폰 no 가 0 이 아니라면 사용으로 업데이트
		int cpnNo = Integer.parseInt(request.getParameter("cpnNo"));
		
		if(cpnNo != 0) {
			int updateResult = classService.updateCpnUseYn(cpnNo);
		}
		
		// 1. 클래스 어플라이 인서트
		ClassApplyDTO paymentClassApplyDTO = new ClassApplyDTO();
		
		int scheduleNo = Integer.parseInt(request.getParameter("scheduleNo"));
		int ppl = Integer.parseInt(request.getParameter("ppl"));
		
		paymentClassApplyDTO.setUserNo(userNo);
		paymentClassApplyDTO.setScheduleNo(scheduleNo);
		paymentClassApplyDTO.setPpl(ppl);
		
		int classApplyInsertResult = classService.insertClassApply(paymentClassApplyDTO);
		
		
		// 2. 페이먼트 인서트
		PaymentDTO insertPaymentDTO = new PaymentDTO();
		int payPrice = Integer.parseInt(request.getParameter("payPrice"));
		
		insertPaymentDTO.setPayPrice(payPrice);
		insertPaymentDTO.setCpnNo(cpnNo);
		
		int paymentInsertResult = classService.insertPayment(insertPaymentDTO);
		
		
		// 클래스 어플라이랑 페이먼트 둘다 인서트 잘 됐다면 이동 -> ajax 라 필요 없음
		if(classApplyInsertResult + paymentInsertResult == 2) {
			String returnPage = "redirect:/user/mypage/scheduledClassList";

			return returnPage;
		}
		
		return "user/mypage/mypage"; 
	}
	
	@GetMapping("paymentSuccessToBookCheckPage")
	public String paymentSuccessToBookCheckPage(HttpSession session) {
		
		String returnPage = "redirect:/user/mypage/scheduledClassList";

		
		return returnPage;
	}
}
