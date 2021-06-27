package com.tig.wdc.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tig.wdc.admin.model.service.AdminService;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	private final AdminService adminService;
	
	@Autowired
	public AdminController(AdminService adminService) {
		
		this.adminService = adminService;
		
	}

	// 로그인
	@GetMapping("login")
	public String adminLogin() {
		return "admin/adminLogin";
	}
	
	// 회원관리
	@GetMapping("memberManagement")
	public String selectStudentList(Model model) {
		
		model.addAttribute("studentList", adminService.selectAllStudentList());
				
		return "admin/adminMemberManagement";
	}
	
	// 클래스 관리
	@GetMapping("classManagement")
	public String selectClassList(Model model) {
		
		model.addAttribute("classList", adminService.selectAllClassList());
		
		return "admin/adminClassManagement";
	}
	
	
	// 신고관리
	@GetMapping("reportManagement")
	public String reportManagement() {
		
		return "admin/adminReportManagement";
	}
	
	// 문의게시판
	@GetMapping("questionManagement")
	public String selectQustionList(Model model) {
		
		model.addAttribute("questionList", adminService.selectAllQuestionList());
		
		return "admin/adminQuestionManagement";
	}
	
	// 쿠폰
	@GetMapping("couponManagement")
	public String couponManagement() {
		
		return "admin/adminCouponManagement";
	}
	
	// 공지사항
	@GetMapping("noticeManagement")
	public String noticeManagement() {
		
		return "admin/adminNoticeManagement";
	}
	
	// 정산
	@GetMapping("calculateManagement")
	public String calculateManagement() {
		
		return "admin/adminCalculateManagement";
	}

}
