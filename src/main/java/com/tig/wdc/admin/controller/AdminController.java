package com.tig.wdc.admin.controller;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tig.wdc.admin.commons.DateSortDesc;
import com.tig.wdc.admin.model.dto.BlackListDTO;
import com.tig.wdc.admin.model.dto.ReportDetailDTO;
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

		System.out.println(adminService.selectAllClassList());
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
	 * 문의 상세
	 * @param type
	 * @param id
	 * @param model
	 * @return
	 */
	@GetMapping("questionDetail") 
	public String questionInfoDetail(@RequestParam("mt")String type, @RequestParam("no")int no, Model model) {
		
		if(type.equals("TEACHER")) {
			model.addAttribute("questionDetail", adminService.selectTeacherQuestionInfoDetail(no));			
		} else if(type.equals("USER")) {
			model.addAttribute("questionDetail", adminService.selectStudentQuestionInfoDetail(no));			
		}
		
		return "admin/questionDetail"; 
	}
	 
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
	 * 쿠폰 상세
	 * 
	 * @param no
	 * @param model
	 * @return
	 */
	@GetMapping("couponDetail")
	public String couponInfoDetail(@RequestParam("no")int no, Model model) {
		
		model.addAttribute("couponDetail", adminService.selectCouponInfoDetail(no));
		
		return "admin/couponDetail";
	}
	
	/**
	 * @author 송아현
	 * 쿠폰 발급
	 * 
	 * @return
	 */
	@GetMapping("couponIssue")
	public String couponIssue() {
		return "admin/couponIssue";
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
	 * 공지 상세
	 * 
	 * @param no
	 * @param model
	 * @return
	 */
	@GetMapping("noticeDetail")
	public String noticeInfoDetail(@RequestParam("no")int no, Model model) {
		
		model.addAttribute("noticeDetail", adminService.selectNoticeInfoDetail(no));
		
		return "admin/noticeDetail";
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
	public String selectReportDetail(@RequestParam("no")int no ,@RequestParam("type")String type, @RequestParam(value="chkCnt", defaultValue="0")int chkCnt, Model model) {
		ReportDetailDTO rd = new ReportDetailDTO();
		rd.setReportNo(no);
		if(type.equals("수강생") || type.equals("T")) {
			// 수강생
			rd.setType("U");
		} else {
			rd.setType("T");
		}
			model.addAttribute("reportDetail", adminService.selectStudentReportList(rd));
			if(chkCnt == 1) {
			model.addAttribute("message", "해당 유저는 누적 신고 3회로  블랙리스트가 되었습니다.");
			}
		return "admin/reportPage";
	}

	@GetMapping("procsAcceptStatus")
	public String procsAcceptStatus(@RequestParam("rn")int no, @RequestParam("type")String type, @RequestParam("un")int userNo, Model model) {
		
		Map<String, Object> blackMap = new HashMap<>();
		blackMap.put("type", type);
		blackMap.put("userNo", userNo);
		adminService.updateReportStatus(no);
		int i = adminService.selectReportCnt(userNo);
		int chkCnt = 0;
		if(i > 2) {
			adminService.insertBlackList(blackMap);
			adminService.updateBlackListOnUSerTable(blackMap);
			chkCnt= 1;
			return "redirect:reportDetail?no="+no+"&type="+ type + "&chkCnt="+chkCnt;
		} else {
			return "redirect:reportDetail?no="+no+"&type="+ type;
		}
	}
	
	@GetMapping("procsDenyStatus")
	public String procsDenyStatus(@RequestParam("rn")int no, @RequestParam("type")String type, Model model) {
		adminService.updateReportStatus2(no);
		return "redirect:reportDetail?no="+no+"&type="+ type;
	}
	
	@GetMapping("blackListMenagement")
	public String blackListMenagement(@RequestParam("ut")String type, Model model) {
		if(type.equals("to")) {
			model.addAttribute("allBlackList", adminService.selectAllBlackList());
		} else if(type.equals("tc")) {
			model.addAttribute("allBlackList", adminService.selectBlockedTeacherList());
		} else if(type.equals("st")) {
			model.addAttribute("allBlackList", adminService.selectBlockedStudentList());
		}
		return "admin/BlackListManagement";
	}
	
	@GetMapping("selectClassBycategory")
	public String selectClassBycategory(@RequestParam("ct")String type, Model model) {
		Map<String, String> map = new HashMap<>();
		map.put("type", type);
		model.addAttribute("classList", adminService.selectClassBycategory(map));
		return "admin/adminClassManagement";
	}
	
	@PostMapping("blackListInsert")
	public String blackListInsert(@ModelAttribute BlackListDTO black, Model model) {
		Map<String, Object> blackMap = new HashMap<>();
		blackMap.put("blackMap", black);
		adminService.insertBlackList(blackMap);
		adminService.updateBlackListOnUSerTable(blackMap);
		return "redirect:blackListMenagement?&ut=to";
	}
	
	@GetMapping("classDetail")
	public String classDetail(Model model, @RequestParam("cn")int userNo, @RequestParam("ct")String type) {
		System.out.println(userNo);
		System.out.println(type);
		Map<String, Object> cnct = new HashMap<>();
		cnct.put("userNo", userNo);
		cnct.put("type", type);
		model.addAttribute("classDetail", adminService.selectClassDetail(cnct));
		return "admin/BeforeDicision";
	}
	

}
