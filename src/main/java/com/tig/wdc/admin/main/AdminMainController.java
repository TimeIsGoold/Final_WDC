package com.tig.wdc.admin.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/*")
public class AdminMainController {

	// admin main controller에서 adminController로 연결해주는 핸들러 메소드
	@GetMapping("adminPage")
	public String adminPage() {
		
		return "/admin";
	}
//	
//	@GetMapping("classManagement")
//	public String classManagement() {
//		
//		return "/admin/adminClassManagement";
//	}
//	
//	@GetMapping("reportManagement")
//	public String reportManagement() {
//		
//		return "admin/adminMemberReportManagement";
//	}
//	

//	
//	@GetMapping("couponManagement")
//	public String couponManagement() {
//		
//		return "admin/adminCouponManagement";
//	}
//	
//	@GetMapping("noticeManagement")
//	public String noticeManagement() {
//		
//		return "admin/adminNoticeManagement";
//	}
//	
//	@GetMapping("calculateManagement")
//	public String calculateManagement() {
//		
//		return "admin/adminCalculateManagement";
//	}
	
}