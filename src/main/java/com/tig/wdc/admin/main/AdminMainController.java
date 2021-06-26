package com.tig.wdc.admin.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminMainController {

	@GetMapping("memberManagement")
	public String memberManagement() {
		
		return "/admin/adminMemberManagement";
	}
	
	@GetMapping("classManagement")
	public String classManagement() {
		
		return "admin/adminClassManagement";
	}
	
	@GetMapping("reportManagement")
	public String reportManagement() {
		
		return "admin/adminMemberReportManagement";
	}
	
	@GetMapping("questionManagement")
	public String questionManagement() {
		
		return "admin/adminQuestionManagement";
	}
	
	@GetMapping("couponManagement")
	public String couponManagement() {
		
		return "admin/adminCouponManagement";
	}
	
	@GetMapping("noticeManagement")
	public String noticeManagement() {
		
		return "admin/adminNoticeManagement";
	}
	
	@GetMapping("calculateManagement")
	public String calculateManagement() {
		
		return "admin/adminCalculateManagement";
	}
	
}