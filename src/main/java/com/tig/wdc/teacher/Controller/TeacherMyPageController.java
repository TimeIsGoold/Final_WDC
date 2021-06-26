package com.tig.wdc.teacher.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author 강현우
 * 강사  마이페이지용 컨트롤러
 */
@Controller
@RequestMapping("/teacher/*")
public class TeacherMyPageController {
	
	/* 클래스 관리 */
	@GetMapping("/teacherClassManagement")
	public String teacherClassManagement() {
		
		return "teacher/classManage/t_classManagement";
	}
	
	/* 정산관리 */
	@GetMapping("/teacherBalanceList")
	public String teacherBalanceList() {
		
		return "teacher/balanace/t_balanceList";
	}
	
	/* 문의하기 */
	@GetMapping("/teacherinquiry")
	public String teacherInquiry() {
		
		return "teacher/reportInquiry/t_inquiry";
	}
	
	/* 문의목록 */
	@GetMapping("/teacherInquiryList")
	public String teacherInquiryList() {
		
		return "teacher/reportInquiry/t_inquiryList";
	}
	
	/* 자주 묻는 질문 */
	@GetMapping("/teacherFAQ")
	public String teacherFAQ() {
		
		return "teacher/reportInquiry/t_FAQ";
	}
	
}
