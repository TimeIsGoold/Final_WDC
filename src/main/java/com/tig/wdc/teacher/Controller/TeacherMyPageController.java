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
import com.tig.wdc.teacher.model.service.BoardAndQnAService;
import com.tig.wdc.user.model.dto.ClassDTO;

/**
 * @author 강현우, 이해승
 * 강사  마이페이지용 컨트롤러
 */
@Controller
@RequestMapping("/teacher/*")
public class TeacherMyPageController {
	
	private BalanceService myPageService;
	private BoardAndQnAService boardService;
	private PageInfoDTO pageInfo;
	private ClassDTO classInfo;
	
	@Autowired
	public TeacherMyPageController(BalanceService myPageService, BoardAndQnAService boardService, PageInfoDTO pageInfo, ClassDTO classInfo) {
		this.myPageService = myPageService;
		this.boardService = boardService;
	    this.pageInfo = pageInfo;
	    this.classInfo = classInfo;
	}
	
	/**
	 * 강사가 보유한 클래스 리스트 조회(이해승)
	 * @return 클래스 리스트
	 */
	@GetMapping("/teacherClassManagement")
	public String teacherClassManagement(HttpSession session, Model model, @RequestParam(defaultValue = "1",value="currentPage") int currentPage ) {
		
		int teacherNo = (Integer) session.getAttribute("teacherNo");
		System.out.println("여기는 클래스 번호에요 : " + currentPage);
		pageInfo = PageNation.getPageInfo(currentPage, boardService.selectClassCount(teacherNo), 5, 5);
		System.out.println("페이지 인포에요 : " + pageInfo);
		classInfo.setTeNo(teacherNo);
		classInfo.setPageInfo(pageInfo);
		
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("classList",boardService.selectClassList(classInfo));
	
		return "teacher/classManage/t_classManagement";
	}
	
	/* 정산관리 */
	@GetMapping("/teacherBalanceList")
	public String teacherBalanceList(HttpSession session, Model model, @RequestParam(defaultValue = "1") int currentPage) {
		
		int teacherNo = (Integer) session.getAttribute("teacherNo");
		
		/* 페이징 처리 */
		PageInfoDTO pageInfo = PageNation.getPageInfo(currentPage, myPageService.selectBalanceCount(), 5, 5);
		model.addAttribute("pageInfo", pageInfo);
		
		/* 문의사항 목록 검색 */
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("teacherNo", teacherNo);
		map.put("pageInfo", pageInfo);
		
		/* 정산내역 조회 */
		model.addAttribute("balanceList", myPageService.selectBalanceList(map));
		
		
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
