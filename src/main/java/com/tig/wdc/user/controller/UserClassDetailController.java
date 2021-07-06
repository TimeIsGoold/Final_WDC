package com.tig.wdc.user.controller;

import java.io.File;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.tig.wdc.model.dto.CurriculumDTO;
import com.tig.wdc.user.model.dao.UserInfoMapper;
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
import com.tig.wdc.user.model.service.UserClassService;

/**
 * @author SORA 
 * 클래스 상세보기 / 신청 / 결제 / 신고/ 환불 / 수료증 조회  / 응원 용 컨트롤러
 */
@Controller
@RequestMapping("/user/*")
public class UserClassDetailController {

	private final UserClassService classService;
	private final UserInfoMapper infoService;

	@Autowired
	public UserClassDetailController(UserClassService classService,UserInfoMapper infoService) {
		this.classService = classService;
		this.infoService = infoService;
	}

	/**
	 * 클래스 상세보기 정보 select
	 * 
	 * @param model
	 * @return
	 */
	@GetMapping("classDetail/{clsNo}")
	public String ClassDetail(HttpSession session, @PathVariable("clsNo") int clsNo, Model model) {

		// 클래스 정보 select
		UserClassDTO classDetail = new UserClassDTO();
		classDetail = classService.selectClassDtail(clsNo);
		model.addAttribute("classDetail", classDetail);

		// 대표사진 3장 select
		List<UserClassDTO> classPic = new ArrayList<UserClassDTO>();
		classPic = classService.selectClassPic(clsNo);
		model.addAttribute("classPic", classPic);

		// 평점 select
		UserClassDTO classStar = new UserClassDTO();
		classStar = classService.selectClassStar(clsNo);
		model.addAttribute("classStar", classStar);

		// 완성작 select
		List<ClassPieceDTO> classPiece = new ArrayList<ClassPieceDTO>();
		classPiece = classService.selectClassPiece(clsNo);
		model.addAttribute("classPiece", classPiece);

		// 커리큘럼 select
		List<CurriculumDTO> curriculum = new ArrayList<CurriculumDTO>();
		curriculum = classService.selectCurriculum(clsNo);
		model.addAttribute("curriculum", curriculum);

		// 리뷰 select
		List<UserReviewDTO> review = new ArrayList<UserReviewDTO>();
		review = classService.selectReview(clsNo);
		model.addAttribute("review", review);

		// 문의 select
		List<UserInquiryDTO> qna = new ArrayList<UserInquiryDTO>();
		qna = classService.selectQnA(clsNo);
		model.addAttribute("qna", qna);

		// 클래스 스케줄 select
		List<ScheduleDTO> schedule = new ArrayList<ScheduleDTO>();
		schedule = classService.selectSchedule(clsNo);
		model.addAttribute("schedule", schedule);

		return "user/classList/class_detail";
	}

//	@RequestMapping(value="${pageContext.servletContext.contextPath}/user/dateTimePicker/${ requestScope.classDetail.clsNo }")
//    @ResponseBody
//	public String DateTimePicker(HttpSession session, @PathVariable("clsNo") int clsNo, Model model, HttpServletRequest request, @RequestParam("date") String date) {
//		
//		String checkedDate = request.getParameter("date");
//		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ : " + checkedDate);
//		
//		return date;
//		
//	}

	@PostMapping(value="classDetail/dateTimePicker",produces = "application/json; charset=utf-8" )
	@ResponseBody
	public String DateTimePicker(HttpSession session, Model model,
			@RequestParam("date") Date date, @RequestParam("clsNo") int clsNo, HttpServletRequest request) {
		
		ScheduleDTO scheduleDTO = new ScheduleDTO();
		scheduleDTO.setClsNo(clsNo);
		scheduleDTO.setScheduleDate(date);
		
		// 클래스 날짜에 맞는 시간 select
		List<ScheduleDTO> time = new ArrayList<ScheduleDTO>();
		time = classService.selectTime(scheduleDTO);
		//model.addAttribute("time", time);

		System.out.println("출력????????????????" + time);
		Gson gson = new Gson();
		
		return gson.toJson(time);
	}

	/**
	 * 결제페이지 이동용 메소드
	 * 
	 * @author 연준
	 * @param session
	 * @return
	 */
	@PostMapping("payment")
	public String payment(HttpSession session, ScheduleDTO scheduleDTO, ClassApplyDTO classApplyDTO, Model model,
			UserClassDTO userClassDTO) {
		System.out.println("userClassDTO : " + userClassDTO.toString());
		System.out.println("scheduleDTO : " + scheduleDTO.toString());

		
		if (session == null) {
			return "user/login/login";
		}

		int userNo = (Integer) session.getAttribute("userNo");
		// 유저 넘버로 이름과 전화번호 조회
		UserInfoDTO userInfo = new UserInfoDTO();
		userInfo = classService.selectUserInfo(userNo);
		model.addAttribute("userInfo", userInfo);

		// 유저 넘버로 보유 쿠폰 조회
		List<UserCouponDTO> couponList = new ArrayList<UserCouponDTO>();
		userClassDTO.setUserNo(userNo);
		couponList = classService.selectCouponList(userClassDTO);
		model.addAttribute("couponList", couponList);

		// 스케줄 넘버 조회
		scheduleDTO.setClsNo(userClassDTO.getClsNo());
		scheduleDTO.setScheduleClsType(userClassDTO.getClsType());
		System.out.println("scheduleDTO2 : " + scheduleDTO);
		model.addAttribute("scheduleDTO", scheduleDTO);

		
		ScheduleDTO paymentScheduleDTO = new ScheduleDTO();
		paymentScheduleDTO = classService.selectscheduleNo(scheduleDTO);
		// paymentScheduleDTO 가 왜 null?
		
		System.out.println("paymentScheduleDTO : " + paymentScheduleDTO);
		System.out.println("scheduleDTO3 : " + scheduleDTO);
		//System.out.println("paymentScheduleDTO : " + paymentScheduleDTO);
		
		model.addAttribute("classApplyDTO", classApplyDTO);
		// stringScheduleDate 용
		model.addAttribute("paymentScheduleDTO", paymentScheduleDTO);

		return "user/payment/payment";
	}

	/**
	 * 결제 완료 시 이동 페이지 및 결제 디비 인서트
	 * 
	 * @return
	 */
	@PostMapping("paymentSuccess")
	public String paymentSuccess(HttpServletRequest request, HttpSession session) {
		int userNo = (Integer) session.getAttribute("userNo");
		// 0 .쿠폰 no 가 0 이 아니라면 사용으로 업데이트
		int cpnNo = Integer.parseInt(request.getParameter("cpnNo"));

		if (cpnNo != 0) {
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
		if (classApplyInsertResult + paymentInsertResult == 2) {
			String returnPage = "redirect:/user/mypage/scheduledClassList";

			return returnPage;
		}

		return "user/mypage/mypage";
	}

	/**
	 * 결제 완료후 참여 예정 페이지로 이동 메소드
	 * 
	 * @param session
	 * @return
	 */
	@GetMapping("paymentSuccessToBookCheckPage")
	public String paymentSuccessToBookCheckPage(HttpSession session) {

		String returnPage = "redirect:/user/mypage/scheduledClassList";

		return returnPage;
	}

	/**
	 * 신고 작성 페이지 이동용 메소드
	 * 
	 * @param session
	 * @return
	 */
	@GetMapping("userReport")
	public String userReport(HttpSession session, UserClassDTO userClassDTO, Model model) {

		int userNo = (Integer) session.getAttribute("userNo");
		userClassDTO.setUserNo(userNo);

		model.addAttribute("userClassDTO", userClassDTO);

		return "user/serviceCenter/report_write";
	}
	
	/**@author 연준
	 * 신고 인서트 후 페이지 이동
	 * @return
	 */
	@PostMapping("reportInsert")
	public String reportInsert(@RequestParam MultipartFile singleFile, Model model, HttpSession session,
			UserReportDTO userReportDTO, HttpServletRequest request) {
		int userNo = (Integer) session.getAttribute("userNo");

		/* 사진 추가할 경로 */
		// 루트 경로
		String root = request.getServletContext().getRealPath("resources");

		// 파일저장할 경로(없을 경우 생성)
		String filePath = root + "\\upload";
		File mkdir = new File(filePath);
		if (!mkdir.exists()) {
			mkdir.mkdirs();
		}

		/* 파일명 변경 처리 */
		String originFileName = singleFile.getOriginalFilename();
		String ext = originFileName.substring(originFileName.lastIndexOf("."));
		String saveName = /* UUID.randomUUID().toString() */originFileName.replace("-", "")/* + ext */;

		/* 파일을 저장한다. */
		try {
			singleFile.transferTo(new File(filePath + "\\" + saveName));

			userReportDTO.setReportFromNo(userNo);
			userReportDTO.setReportPic(saveName);
			// 신고 사진/내용 인서트
			int insertResult = classService.insertReport(userReportDTO);
			// 신고 이력 인서트
			int historyInsertResult = classService.insertReportHistory(userReportDTO);

			if (insertResult == 1) {
				return "redirect:serviceCenter/report";
			}
		} catch (Exception e) {
			e.printStackTrace();

			/* 실패시 파일 삭제 */
			new File(filePath + "\\" + saveName).delete();
			model.addAttribute("message", "파일 업로드 실패!!!!");
		}
		return "redirect:serviceCenter/main";
	}

	/**
	 * 결제 취소 페이지  이동용 메소드
	 * @param session
	 * @param userClassDTO
	 * @param model
	 * @return
	 */
	@PostMapping("userRefund")
	public String userRefund(HttpSession session, UserClassDTO userClassDTO, Model model) {

		int userNo = (Integer) session.getAttribute("userNo");
		userClassDTO.setUserNo(userNo);

		// 유저넘버로 유저 정보 조회
		UserInfoDTO userDTO = new UserInfoDTO();
		userDTO = infoService.selectUser(userNo);
		
		model.addAttribute("userClassDTO",userClassDTO);
		model.addAttribute("userDTO",userDTO);
		
		return "user/payment/refund"; 
	}
	
	/**
	 * 환불용 인서트 메소드
	 * @param userClassDTO
	 * @param userRefundDTO
	 * @param session
	 * @param model
	 * @return
	 */
	@PostMapping("refundInsert")
	public String refundInsert(UserClassDTO userClassDTO, UserRefundDTO userRefundDTO, HttpSession session, Model model) {
		
		// 1. 예금주 조회
		int userNo= (Integer) session.getAttribute("userNo");
		UserInfoDTO userInfoDTO = new UserInfoDTO();
		userInfoDTO = classService.selectUserInfo(userNo);
		userRefundDTO.setAccountHolder(userInfoDTO.getUserName());
		
		int payNo = userClassDTO.getPayNo();
		// 2. 페이넘 받기		
		userRefundDTO.setPayNo(payNo);
		
		// payment cancel 테이블 인서트
		int result = classService.inserRefund(userRefundDTO);
		
		// payment -> 취소로 업데이트
		int paymentResult = classService.updatePaymentStatus(payNo);
		
		if(result + paymentResult == 2) {
			System.out.println("클래스 취소 성공");
			return "redirect:/user/mypage/complateClassList";
		}
		// 실패시 
		return "user/main/main";
	}
	
	/**
	 * 수료증 조회 메소드
	 * @param userClassDTO
	 * @param session
	 * @param model
	 * @return
	 */
	@PostMapping("certificate/user")
	public String selectCertificate(UserClassDTO userClassDTO, HttpSession session, Model model) {
		
		int userNo= (Integer) session.getAttribute("userNo");
		UserInfoDTO userInfoDTO = new UserInfoDTO();
		userInfoDTO = classService.selectUserInfo(userNo);
		System.out.println("userInfoDTO : " + userInfoDTO);
		System.out.println("userClassDTO : " + userClassDTO);
		
		
		long randomNum = ((long)((Math.random()*100000000) + 100000000) * (long)((Math.random()*1000) + 100));
		
		model.addAttribute("randomNum",randomNum);
		model.addAttribute("userClassDTO", userClassDTO);
		model.addAttribute("userInfoDTO", userInfoDTO);
		
		return "user/mypage/certificate";

	}
	
	/**
	 * 응원하기 메소드
	 * @param request
	 * @param session
	 * @return
	 */
	@PostMapping("cheerUp")
	@ResponseBody
	public String cheerUp(HttpServletRequest request, HttpSession session) {
		
		int userNo= (Integer) session.getAttribute("userNo");
		int clsNo = Integer.parseInt(request.getParameter("clsNo"));
		UserClassDTO cheerUpHisInsertDTO = new UserClassDTO();
		cheerUpHisInsertDTO.setUserNo(userNo);
		cheerUpHisInsertDTO.setClsNo(clsNo);
		
		//1. 해당 클래스 응원했는지 조회
		int cheerHistory = classService.selectCheerHistory(cheerUpHisInsertDTO);
		System.out.println("cheerHistory : " + cheerHistory);
		
		int cheerUpResult = 0;
		// 해당 클래스 응원 카운트가 0이면
		if(cheerHistory == 0) {
			cheerUpResult = classService.insertCheerHistory(cheerUpHisInsertDTO);
		}else if(cheerHistory == 1) {
		}else if( session.getAttribute("userNo").equals("null")) {
			cheerUpResult = 2;
		}
		
		String result = Integer.toString(cheerUpResult); 
		return result; 

	}
}
