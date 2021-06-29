package com.tig.wdc.teacher.Controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tig.wdc.common.PageNation;
import com.tig.wdc.model.dto.PageInfoDTO;
import com.tig.wdc.teacher.model.service.BalanceService;

/**
 * @author 강현우
 * 강사  마이페이지용 컨트롤러
 */
@Controller
@RequestMapping("/teacher/*")
public class TeacherMyPageController {
	
	private BalanceService balanceService;
	
	@Autowired
	public TeacherMyPageController(BalanceService balanceService) {
		this.balanceService = balanceService;
	}
	
	/* 클래스 관리 */
	@GetMapping("/teacherClassManagement")
	public String teacherClassManagement() {
		
		return "teacher/classManage/t_classManagement";
	}
	
	/* 정산관리 */
	@GetMapping("/teacherBalanceList")
	public String teacherBalanceList(HttpSession session, Model model, @RequestParam(defaultValue = "1") int currentPage) {
		
		int teacherNo = (Integer) session.getAttribute("teacherNo");
		
		/* 페이징 처리 */
		PageInfoDTO pageInfo = PageNation.getPageInfo(currentPage, balanceService.selectBalanceCount(), 5, 5);
		model.addAttribute("pageInfo", pageInfo);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("teacherNo", teacherNo);
		map.put("pageInfo", pageInfo);
		
		/* 정산내역 조회 */
		model.addAttribute("balanceList", balanceService.selectBalanceList(map));
		
		
		return "teacher/balanace/t_balanceList";
	}
	
	/* 문의하기 */
	@GetMapping("/teaccherInquiry")
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
