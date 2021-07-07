package com.tig.wdc.user.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tig.wdc.teacher.model.service.TeacherInfoService;
import com.tig.wdc.user.model.dto.UserCouponDTO;
import com.tig.wdc.user.model.dto.UserClassDTO;
import com.tig.wdc.user.model.dto.UserInfoDTO;
import com.tig.wdc.user.model.dto.UserReviewDTO;
import com.tig.wdc.user.model.service.UserClassService;
import com.tig.wdc.user.model.service.UserInfoService;

/**
 * @author 민연준
 * 유저 회원가입, 로그인, 아이디찾기, 비밀번호 찾기, 강사정보수정용, 참여진행/완료/예정 클래스조회 / 찜 및 응원 클래스 조회용 컨트롤러
 */
@Controller
@RequestMapping("/user/mypage/*")
@SessionAttributes("userNo")
public class UserInfoController {
	
	private final UserInfoService infoService;
	private final UserClassService classService;
	
	@Autowired
	public UserInfoController(UserInfoService infoService, UserClassService classService) {
		this.infoService = infoService;
		this.classService = classService;
	}

	
	/**
	 * 마이페이지 이동용 메소드
	 * @param model
	 * @param session
	 * @return
	 */
	@GetMapping("mypageMain")
	public String userMypage(Model model, HttpSession session) {
		
		UserInfoDTO userInfoDTO = new UserInfoDTO();
		int userNo= (Integer) session.getAttribute("userNo");
		
		userInfoDTO = infoService.selectUser(userNo);
		
		model.addAttribute("userInfoDTO",userInfoDTO);
		
		if(session == null) {
			return "user/login/login";
		}
		
		return "user/mypage/mypage";
	}

	/**
	 * 로그인용 메소드
	 * @author 연준
	 * @param model
	 * @param userInfoDTO
	 * @param rttr
	 * @return
	 */
	@PostMapping("login")
	public String userLogin(Model model, @ModelAttribute UserInfoDTO loginInfo, RedirectAttributes rttr) {
		UserInfoDTO userInfoDTO = infoService.findUserInfo(loginInfo);
		System.out.println("loginInfo : " + loginInfo);
		System.out.println("userInfoDTO : " + userInfoDTO);
		
		//로그인 입력 정보와 회원정보 불일치 시 다시 로그인페이지로 이동
		String returnPage = "redirect:/user/login";
		
		if(userInfoDTO == null) {
			
			rttr.addFlashAttribute("message", "등록된 아이디가 없습니다.");
//        암호화 후 적용
//		} else if(!passwordEncoder.matches(loginInfo.getTeacherPwd(), teacherInfo.getTeacherPwd())) {
		} else if(!loginInfo.getUserPwd().equals(userInfoDTO.getUserPwd())) {
			
			rttr.addFlashAttribute("message", "비밀번호가 일치하지 않습니다.");
		} else if("Y".equals(userInfoDTO.getQuitYn())) {
			
			rttr.addFlashAttribute("message", "탈퇴된 아이디입니다.");
		} else if("Y".equals(userInfoDTO.getBlockYn())) {
			
			rttr.addFlashAttribute("message", "차단된 아이디입니다. 관리자에게 문의하세요");
		} else {
			
			//로그인 입력 정보와 회원정보 일치 시 메인페이지 핸들러로 이동
			model.addAttribute("userNo",userInfoDTO.getUserNo());
			
			returnPage = "redirect:userLoginSuccessMain";
		}
		return returnPage;
	}
	
	/**
	 * 로그인 성공 시 메인 페이지 이동용 메소드
	 * @param model
	 * @param session
	 * @return
	 */
	@GetMapping("userLoginSuccessMain")
	public String main(Model model, HttpSession session) {

		
		List<UserClassDTO> newClassList = new ArrayList<UserClassDTO>();
		newClassList = classService.selectNewClassList();
		model.addAttribute("newClassList",newClassList);
		
		List<UserClassDTO> topClassList = new ArrayList<UserClassDTO>();
		topClassList = classService.selectTopClassList();
		model.addAttribute("topClassList",topClassList);
		
		List<UserClassDTO> cheerClassList = new ArrayList<UserClassDTO>();
		cheerClassList = classService.selectCheerClassList();
		model.addAttribute("cheerClassList",cheerClassList);
		
		return "user/main/main";
	}
	
	@GetMapping("logout")
	public String logout(Model model, HttpSession session) {
		session.invalidate();
		System.out.println("로그아웃 으로 넘어옴");
		
		return "user/login/login";
	}
	
	/**
	 * 쿠폰 목록 조회용 메소드
	 * @param model
	 * @param session
	 * @return
	 */
	@GetMapping("coupon")
	public String couponList(Model model, HttpSession session) {
		
		// 유저의 사용가능 쿠폰 리스트 조회
		int userNo= (Integer) session.getAttribute("userNo");
		List<UserCouponDTO> couponList = new ArrayList<UserCouponDTO>();
		
		couponList = infoService.selectCouponList(userNo);
		
		// 전체 쿠폰 리스트중 사용가능 쿠폰 리스트 조회
		List<UserCouponDTO> allUserCouponList = new ArrayList<UserCouponDTO>();
		allUserCouponList = infoService.selectAllUserCouponList();
		
		for(int i = 0; i < allUserCouponList.size(); i++) {
			// 해당 리스트의 쿠폰 번호 빼와서  카운트 조회
			UserCouponDTO alluserCouponDTO = new UserCouponDTO();
			alluserCouponDTO.setCpnNo(allUserCouponList.get(i).getCpnNo());
			alluserCouponDTO.setUserNo(userNo);
		
			// 해당 유저가 전체 쿠폰 넘버의 사용이력이 이력 테이블에 있는지 조회
			int allUserCouponCount = infoService.selectUseAllUserCoupon(alluserCouponDTO);
			System.out.println("쿠폰 넘버 : " + allUserCouponList.get(i).getCpnNo());
			
			// 사용하지 않았다면(카운트가 0이라면) 쿠폰 리스트에 해당 쿠폰 추가
			if(allUserCouponCount <= 0) {
				couponList.add(allUserCouponList.get(i));
			}else {
				System.out.println("넘어가");
			}

			
		}
		
		
		
		model.addAttribute("couponList",couponList);
		
		return "user/mypage/coupon";
	}
	
	/**
	 * 참여 예정 클래스 목록 조회용
	 * @param model
	 * @param session
	 * @return
	 */
	@GetMapping("scheduledClassList")
	public String scheduledClassList(Model model, HttpSession session) {
		
		int userNo= (Integer) session.getAttribute("userNo");
		
		List<UserClassDTO> scheduledOneDayClassList = new ArrayList<UserClassDTO>();
		List<UserClassDTO> scheduledRegularClassList = new ArrayList<UserClassDTO>();
		
		// 1. 원데이용
		scheduledOneDayClassList = infoService.selectScheduledOneDayClassList(userNo);
		// 2. 정규용
		scheduledRegularClassList = infoService.selectScheduledRegularClassList(userNo);
		
		model.addAttribute("scheduledOneDayClassList",scheduledOneDayClassList);
		model.addAttribute("scheduledRegularClassList",scheduledRegularClassList);
		
		return "user/mypage/scheduledClass";

	}
	
	/**
	 * 참여 진행중 클래스 목록 조회용 메소드
	 * @param model
	 * @param session
	 * @return
	 */
	@GetMapping("participatingClassList")
	public String participatingClassList(Model model, HttpSession session) {
		
		int userNo= (Integer) session.getAttribute("userNo");
		
		List<UserClassDTO> participatingOneDayClassList = new ArrayList<UserClassDTO>();
		List<UserClassDTO> participatingRegularClassList = new ArrayList<UserClassDTO>();
		
		// 1. 원데이용
		participatingOneDayClassList = infoService.selectparticipatingOneDayClassList(userNo);
		// 2. 정규용
		participatingRegularClassList = infoService.selectparticipatingRegularClassList(userNo);
		
		model.addAttribute("participatingOneDayClassList",participatingOneDayClassList);
		model.addAttribute("participatingRegularClassList",participatingRegularClassList);
		
		return "user/mypage/participatingClass";
	}
	
	/**
	 * 참여 완료 and 취소(환불) 클래스 조회용 메소드
	 * @param model
	 * @param session
	 * @return
	 */
	@GetMapping("complateClassList")
	public String complateClassList(Model model, HttpSession session) {
		
		int userNo= (Integer) session.getAttribute("userNo");
		
		List<UserClassDTO> complateClassList = new ArrayList<UserClassDTO>();
		List<UserClassDTO> refundClassList = new ArrayList<>();
		
		complateClassList = infoService.selectComplateClassList(userNo);
		refundClassList = infoService.selectRefundClassList(userNo);
		System.out.println("refundClassList : " + refundClassList);
		
		model.addAttribute("complateClassList",complateClassList);
		model.addAttribute("refundClassList",refundClassList);
		
		return "user/mypage/complateClass";

	}
	
	/**
	 * 진행/ 예정 
	 * 예약 상세 조회용 메소드
	 * @param model
	 * @param session
	 * @return
	 */
	@GetMapping("userApplyClassDetail/{aplNo}")
	public String userApplyClassDetail(Model model, HttpSession session, UserClassDTO userClassDTO, @PathVariable("aplNo") int aplNo, HttpServletRequest request) {
		
		int userNo= (Integer) session.getAttribute("userNo");
		userClassDTO.setUserNo(userNo);
		userClassDTO.setAplNo(aplNo);

		UserClassDTO scheduleDetailUserClassDTO = new UserClassDTO();
		scheduleDetailUserClassDTO = infoService.selectScheduleDetail(userClassDTO);
		
		model.addAttribute("scheduleDetailUserClassDTO",scheduleDetailUserClassDTO);
		
		return "user/mypage/scheduledClass_detail";

	}
	
	/**
	 * 완료 클래스 예약 상세 조회 메소드
	 * @param model
	 * @param session
	 * @param userClassDTO
	 * @param aplNo
	 * @return
	 */
	@GetMapping("userApplyComplateDetail/{aplNo}/{payStatus}")
	public String userApplyComplateDetail(Model model, HttpSession session, UserClassDTO userClassDTO, @PathVariable("aplNo") int aplNo,@PathVariable("payStatus") String payStatus) {
		
		int userNo= (Integer) session.getAttribute("userNo");
		userClassDTO.setUserNo(userNo);
		userClassDTO.setAplNo(aplNo);
		userClassDTO.setPayStatus(payStatus);
		
		System.out.println("userClassDTO : " + userClassDTO);
		
		UserClassDTO scheduleDetailUserClassDTO = new UserClassDTO();
		scheduleDetailUserClassDTO = infoService.selectScheduleDetail(userClassDTO);
		
		model.addAttribute("complateDetailUserClassDTO",scheduleDetailUserClassDTO);
		
		int reviewYn = infoService.selectReviewYn(aplNo);
		model.addAttribute("reviewYn",reviewYn);
		
		return "user/mypage/complateClass_detail";
	}
	
	/**
	 * 리뷰 인서트 메소드
	 * @param model
	 * @param session
	 * @param aplNo
	 * @param userReviewDTO
	 * @return
	 */
	@PostMapping("ComplateClassReview/{aplNo}")
	public String writeReview(Model model, HttpSession session, @PathVariable("aplNo") int aplNo, UserReviewDTO userReviewDTO) {
		
		//리뷰 insert
		int userNo= (Integer) session.getAttribute("userNo");
		
		userReviewDTO.setUserNo(userNo);
		userReviewDTO.setAplNo(aplNo);
		
		int reviewWrite = infoService.insertReview(userReviewDTO);
		
		return "redirect:/user/mypage/complateClassList";
	}
	

	
	/**
	 * 내가 찜 목록 클래스 조회
	 * @param model
	 * @param session
	 * @return
	 */
	@GetMapping("likeClassList")
	public String likeClass(Model model, HttpSession session) {
		
		int userNo= (Integer) session.getAttribute("userNo");

		
		return "user/classList/likeClassList";
	}
	
	/**
	 * 응원한 목록 클래스 조회
	 * @param model
	 * @param session
	 * @return
	 */
	@GetMapping("cheerClassList")
	public String cheerClass(Model model, HttpSession session) {
		
		int userNo= (Integer) session.getAttribute("userNo");
		
		UserClassDTO userClassDTO  = new UserClassDTO();
		
		List<UserClassDTO> cheerClassDTOList = classService.selectMyCheerClassList(userNo);

		model.addAttribute("cheerClassDTOList",cheerClassDTOList);
		
		return "user/classList/cheerClassList";

	}
	
	
	
}

