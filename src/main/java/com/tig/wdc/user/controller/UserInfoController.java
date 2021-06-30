package com.tig.wdc.user.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tig.wdc.teacher.model.service.TeacherInfoService;
import com.tig.wdc.user.model.dto.UserCouponDTO;
import com.tig.wdc.user.model.dto.UserClassDTO;
import com.tig.wdc.user.model.dto.UserInfoDTO;
import com.tig.wdc.user.model.service.UserClassService;
import com.tig.wdc.user.model.service.UserInfoService;

/**
 * @author 민연준
 * 유저 회원가입, 로그인, 아이디찾기, 비밀번호 찾기, 강사정보수정용, 참여진행/완료/예정 클래스조회용 컨트롤러
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

		int userNo= (Integer) session.getAttribute("userNo");

		
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
	
	/**
	 * 쿠폰 목록 조회용 메소드
	 * @param model
	 * @param session
	 * @return
	 */
	@GetMapping("coupon")
	public String couponList(Model model, HttpSession session) {
		
		int userNo= (Integer) session.getAttribute("userNo");
		List<UserCouponDTO> couponList = new ArrayList<UserCouponDTO>();
		
		couponList = infoService.selectCouponList(userNo);
		model.addAttribute("couponList",couponList);
		
		return "user/mypage/coupon";
	}
	
	@GetMapping("scheduledClassList")
	public String scheduledClassList(Model model, HttpSession session) {
		
		int userNo= (Integer) session.getAttribute("userNo");
		
		List<UserClassDTO> scheduledClassList = new ArrayList<UserClassDTO>();
		
		scheduledClassList = infoService.selectScheduledClassList(userNo);
		
		model.addAttribute("scheduledClassList",scheduledClassList);
		
		return "user/mypage/scheduledClass";

	}
	
}













