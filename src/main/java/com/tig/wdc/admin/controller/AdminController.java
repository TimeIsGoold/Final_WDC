package com.tig.wdc.admin.controller;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tig.wdc.admin.commons.DateSortDesc;
import com.tig.wdc.admin.model.dto.TotalDTO;
import com.tig.wdc.admin.model.service.AdminService;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

	private final AdminService adminService;

	@Autowired
	public AdminController(AdminService adminService) {

		this.adminService = adminService;

	}

	/**
	 * @author 송아현
	 * 로그인
	 * 
	 * @return
	 */
	@GetMapping("login")
	public String adminLogin() {
		return "admin/adminLogin";
	}

	/**
	 * @author 김현빈
	 * 회원관리
	 * 
	 * @param model
	 * @return
	 */
	@GetMapping("memberManagement")
	public String selectTotalUsertList(Model model) {

		List<TotalDTO> realtotalList = adminService.selectTotalUsertList();

		Collections.sort(realtotalList, new DateSortDesc());

		model.addAttribute("totalList", realtotalList);

		return "admin/adminMemberManagement";
	}

	/**
	 * @author 김현빈
	 * 클래스 관리
	 * 
	 * @param model
	 * @return
	 */
	@GetMapping("classManagement")
	public String selectClassList(Model model) {

		model.addAttribute("classList", adminService.selectAllClassList());

		return "admin/adminClassManagement";
	}

	/**
	 * @author 김현빈
	 * 신고관리
	 * 
	 * @param model
	 * @return
	 */
	@GetMapping("reportManagement")
	public String reportManagement(Model model) {

		model.addAttribute("reportList", adminService.selectAllReportList());

		return "admin/adminMemberReportManagement";
	}

	/**
	 * @author 송아현
	 * 문의관리
	 * 
	 * @param model
	 * @return
	 */
	@GetMapping("questionManagement")
	public String selectQustionList(@RequestParam("mt")String type, Model model) {

		if(type.equals("to")) {
			model.addAttribute("questionList", adminService.selectAllQuestionList());
		} else if(type.equals("tc")) {
			model.addAttribute("questionList", adminService.selectTeacherQuestionList());			
		} else if(type.equals("st")) {			
			model.addAttribute("questionList", adminService.selectStudentQuestionList());			
		}

		return "admin/adminQuestionManagement";
	}
	
	
	/**
	 * @author 송아현
	 * @param type
	 * @param no
	 * @param model
	 * @return
	 */
	/*
	 * @GetMapping("questionInfoDetail") public String
	 * questionInfoDetail(@RequestParam("mt")String type, @RequestParam("id")String
	 * id, Model model) {
	 * 
	 * String path = "";
	 * 
	 * if(type.equals("tc")) {
	 * 
	 * model.addAttribute("", adminService.selectDetail());
	 * 
	 * path = ""; } else if(type.equals("st")) {
	 * model.addAttribute("", adminService.selectDetail());
	 * 
	 * path = ""; } return path; }
	 */

	/**
	 * @author 송아현
	 * 쿠폰 관리
	 * 
	 * @param model
	 * @return
	 */
	@GetMapping("couponManagement")
	public String couponManagement(Model model) {

		model.addAttribute("couponList", adminService.selectAllCouponList());

		return "admin/adminCouponManagement";
	}

	/**
	 * @author 송아현
	 * 공지 관리
	 * 
	 * @param model
	 * @return
	 */
	@GetMapping("noticeManagement")
	public String noticeManagement(Model model) {

		model.addAttribute("noticeList", adminService.selectAllNoticeList());

		return "admin/adminNoticeManagement";
	}
	
	/**
	 * @author 송아현
	 * 정산 관리
	 * 
	 * @param model
	 * @return
	 */
	 @GetMapping("calculateManagement") 
	 public String calculateManagement(@RequestParam("YN")String type, Model model) {
	  
		 if(type.equals("N")) {
			 model.addAttribute("calculateList", adminService.selectNoCalculateList());
		 } else if(type.equals("Y")) {
			 model.addAttribute("calculateList", adminService.selectYesCalculateList());
		 }
	  
		 return "admin/adminCalculateManagement"; 
	 }
	 

	/**
	 * 회원 상세 - 현빈
	 * 
	 * @param model
	 * @return
	 */
	@GetMapping("memberInfoDetail")
	public String memberInfoDetail(@RequestParam("memberType")String type, @RequestParam("memberNo")int no, Model model) {

		String path = "";
		
		if(type.equals("T")) {
			
			model.addAttribute("memberInfo", adminService.selectOneTeacher(no));
			
			path = "admin/MemberManager-Teacher";
		} else {
			model.addAttribute("memberInfo", adminService.selectOneStudent(no));
			
			path = "admin/MemberManager-Student";
		}
		return path;
	}
	
	/**
	 * @author 김현빈
	 * <pre>
	 * 	회원 관리 카테고리 별로 셀렉해오는 메소드
	 * </pre>
	 * @return
	 */
	@GetMapping("selectMemberBycategory")
	public String selectMemberBycategory(@RequestParam("ut")String type, Model model) {
		System.out.println("type : " + type);
		if(type.equals("tc")) {
			model.addAttribute("totalList", adminService.selectTeacherList());
			
		} else if (type.equals("st")) {
			model.addAttribute("totalList", adminService.selectStudentList());
		}
		
		return "admin/adminMemberManagement";

	}
	
	/**
	 * @author 김현빈
	 * <pre>
	 *  신고관리 디테일
	 * </pre>
	 * @return
	 */
	@GetMapping("reportDetail")
	public String selectReportDetail(@RequestParam("no")int no,@RequestParam("type")String type,Model model) {
		
		
//		if(type.equals("수강생")) {
			// 수강생
			System.out.println("타임이 뭔데  ? : " + type);
			System.out.println("맞쥬? 맞쥬? 내말 맞주?"+ no);
			model.addAttribute("reportDetail", adminService.selectStudentReportList(no));
//		}
			
//		} else {
//			// 학생
//			model.addAttribute("reportDetail", adminService.selectTeacherReportList(no));
//		}
		return "admin/reportPage";
	}
	
	

}
