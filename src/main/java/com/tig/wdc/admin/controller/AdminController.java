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

	@GetMapping("memberManagement")
	public String selectStudentList(Model model) {
		
		model.addAttribute("studentList", adminService.selectAllStudentList());
		
		
		
		return "admin/adminMemberManagement";
	}
	
	@GetMapping("classManagement")
	public String selectClassList(Model model) {
		
		model.addAttribute("classList", adminService.selectAllClassList());
		
		return "admin/adminClassManagement";
	}
	
//	@GetMapping("reportManagement")
//	public String  selectReportList(Model model) {
//		
//		model.addAttribute("reportList", adminService.selectAllReportList());
//		
//		return "admin/adminMemberReportManagement";
//	}
}
