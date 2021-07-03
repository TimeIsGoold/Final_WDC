package com.tig.wdc.teacher.Controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tig.wdc.common.PageNation;
import com.tig.wdc.model.dto.PageInfoDTO;
import com.tig.wdc.model.dto.RegularClassInfoDTO;
import com.tig.wdc.teacher.model.service.BalanceService;
import com.tig.wdc.teacher.model.service.BoardAndQnAService;
import com.tig.wdc.teacher.model.service.ClassRegistManageService;
import com.tig.wdc.user.model.dto.ClassDTO;
import com.tig.wdc.user.model.service.UserClassService;

/**
 * @author 강현우, 이해승
 * 강사  마이페이지용 컨트롤러
 */
@Controller
@RequestMapping("/teacher/*")
public class TeacherMyPageController {
	
	private BalanceService myPageService;
	private BoardAndQnAService boardService;
	private UserClassService classService; 
	private PageInfoDTO pageInfo;
	private ClassDTO classInfo;
	private ClassRegistManageService classManage;
	
	@Autowired
	public TeacherMyPageController(BalanceService myPageService, BoardAndQnAService boardService, PageInfoDTO pageInfo, ClassDTO classInfo, UserClassService classService, ClassRegistManageService classManage) {
		this.myPageService = myPageService;
		this.boardService = boardService;
	    this.pageInfo = pageInfo;
	    this.classInfo = classInfo;
	    this.classService = classService;
	    this.classManage = classManage;
	}
	
	/**
	 * 강사가 보유한 클래스 리스트 조회(이해승)
	 * @return 클래스 리스트
	 */
	@GetMapping("/teacherClassManagement")
	public String teacherClassManagement(HttpSession session, Model model, @RequestParam(defaultValue = "1") int currentPage ) {
		

		int teacherNo = (Integer) session.getAttribute("teacherNo");
		pageInfo = PageNation.getPageInfo(currentPage, boardService.selectClassCount(teacherNo), 10, 5);
		classInfo.setTeNo(teacherNo);
		classInfo.setPageInfo(pageInfo);
		
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("classList",boardService.selectClassList(classInfo));
	
		return "teacher/classManage/t_classManagement";
	}
	
	
	/**
	 * 클래스 상세조회(이해승)
	 * @param session 세션정보
	 * @param model 
	 * @param clsNo 클래스 번호
	 * @return 클래스 상세정보
	 */
	@GetMapping("/classDetail/{clsNo}")
	public String classDetail(Model model, @PathVariable("clsNo") int clsNo) {
		
		model.addAttribute("classDetail", classService.selectClassDtail(clsNo));
		model.addAttribute("titlePicture", classService.selectClassPic(clsNo));
		model.addAttribute("classPiece", classService.selectClassPiece(clsNo));
		model.addAttribute("curriculum", classService.selectCurriculum(clsNo));

		return "teacher/classManage/t_classDetail";
	}
	
	/**
	 * 클래스 스케쥴 별 참여정보 조회
	 * @param model
	 * @param classType 클래스타입
	 * @return 클래스 스케쥴
	 */
	@GetMapping("/studentManagement")
	public String attendanceManageMent(Model model, @RequestParam(defaultValue = "1") int currentPage, @RequestParam Map<String,String> info) {
		
		String pageName = "";
		if(info.get("classType") != null && info.get("classType").equals("R")) {
			/* 정규클래스 스케쥴*/
			RegularClassInfoDTO regularClassinfo = classManage.selectRegularScheduleinfo(Integer.parseInt(info.get("clsNo")));
			model.addAttribute("regularInfo", regularClassinfo);
			//model.addAttribute("applyUserInfo",classManage.selectApplyUserInfo(regularClassinfo.getSchedule_no()));
			
			pageName = "teacher/classManage/t_classAttendanceDetaiRegularl";
		} else {
			/* 원데이클래스 스케쥴 리스트*/
			pageInfo = PageNation.getPageInfo(currentPage, boardService.selectScheduleCount(Integer.parseInt(info.get("clsNo"))), 10, 5);
			
			classInfo.setClsNo(Integer.parseInt(info.get("clsNo")));
			classInfo.setPageInfo(pageInfo);
			
			model.addAttribute("pageInfo", pageInfo);
			model.addAttribute("clsNo", classInfo.getClsNo());
			model.addAttribute("onedayInfo", classManage.selectOneDayScheduleList(classInfo));
			
			pageName = "teacher/classManage/t_classAttendance";
		}
		
		 
		return pageName;
	}
	
	@GetMapping("/oneDayAttendanceList/{scheduleNo}")
	public String OneDayAttendancdManange(Model model, @PathVariable("scheduleNo") int scheduleNo) {
		
		
		return "teacher/classManage/t_classAttendanceDetail";
		
		
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
