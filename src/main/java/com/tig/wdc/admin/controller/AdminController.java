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
	 * 로그인 - 아현
	 * 
	 * @return
	 */
	@GetMapping("login")
	public String adminLogin() {
		return "admin/adminLogin";
	}

	/**
	 * 회원관리 - 현빈
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
	 * 클래스 관리 - 현빈
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
	 * 신고관리 - 현빈
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
	 * 문의관리 - 아현
	 * 
	 * @param model
	 * @return
	 */
	@GetMapping("questionManagement")
	public String selectQustionList(Model model) {

		model.addAttribute("questionList", adminService.selectAllQuestionList());

		return "admin/adminQuestionManagement";
	}

	/**
	 * 쿠폰 관리 - 아현
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
	 * 공지 관리 - 아현
	 * 
	 * @param model
	 * @return
	 */
	@GetMapping("noticeManagement")
	public String noticeManagement(Model model) {

		model.addAttribute("noticeList", adminService.selectAllNoticeList());

		return "admin/adminNoticeManagement";
	}

	
	// 정산
	@GetMapping("calculateManagement")
	public String calculateManagement() {
		
		return "admin/adminCalculateManagement";
	}
	
	/**
	 * 정산 관리 - 아현
	 * 
	 * @param model
	 * @return
	 */
	 @GetMapping("calculateManagement") 
	 public String calculateManagement(Model model) {
	  
		 model.addAttribute("calculateList", adminService.selectAllCalculateList());
	  
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
		TotalDTO total = new TotalDTO();
		total.setUserType(type);
		total.setUserNo(no);
		String path = "";
		
		if(type.equals("T")) {
			
			model.addAttribute("memberInfo", adminService.selectOneTeacher(no));
			
			path = "admin/MemberManager-Teacher";
		} else {
			model.addAttribute("memberInfo", adminService.selectOneStudent(total));
			
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

}
