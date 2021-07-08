package com.tig.wdc.teacher.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tig.wdc.admin.model.dto.QuestionDTO;
import com.tig.wdc.common.PageNation;
import com.tig.wdc.model.dto.ClassScheduleInfoDTO;
import com.tig.wdc.model.dto.PageInfoDTO;
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
	 * 클래스 스케쥴 별 참여정보 조회(이해승)
	 * @param model
	 * @param classType 클래스타입
	 * @return 클래스 스케쥴
	 */
	@GetMapping("/studentManagement")
	public String attendanceManageMent(Model model, @RequestParam(defaultValue = "1") int currentPage, @RequestParam Map<String,String> info) {
		
		String pageName = "";
		if(info.get("classType") != null && info.get("classType").equals("R")) {
			
			/* 정규클래스 스케쥴*/
			ClassScheduleInfoDTO regularClassinfo = classManage.selectRegularScheduleinfo(Integer.parseInt(info.get("clsNo")));
			ClassScheduleInfoDTO classApplyInfo = classManage.selectRegularApplyCount(regularClassinfo.getScheduleNo());
			if(classApplyInfo != null) {
				regularClassinfo.setApplyCount(classApplyInfo.getApplyCount());
			}
			model.addAttribute("regularInfo", regularClassinfo);
			model.addAttribute("applyUserInfoList",classManage.selectApplyUserInfo(regularClassinfo.getScheduleNo()));
			model.addAttribute("existingInfo", classManage.selectExistingInfo(regularClassinfo.getScheduleNo()));
			model.addAttribute("clsNo", Integer.parseInt(info.get("clsNo")));
			
			pageName = "teacher/classManage/t_classAttendanceDetaiRegularl";
		} else {
			
			/* 원데이클래스 스케쥴 리스트*/
			pageInfo = PageNation.getPageInfo(currentPage, boardService.selectScheduleCount(Integer.parseInt(info.get("clsNo"))), 10, 5);
			
			classInfo.setClsNo(Integer.parseInt(info.get("clsNo")));
			classInfo.setPageInfo(pageInfo);
			
			model.addAttribute("pageInfo", pageInfo);
			model.addAttribute("clsNo", classInfo.getClsNo());
			/* 클래스의 스케쥴 리스트 조회*/
			List<ClassScheduleInfoDTO> onedayInfoList = classManage.selectOneDayScheduleList(classInfo);

			/* 클래스의 신청인원 수 조회*/
			List<ClassScheduleInfoDTO> applyList = classManage.selectOnedayApplyCount(onedayInfoList);
			
			/* 병합 */
			Map<Integer,Integer> addInfo= new HashMap<>();
			
			for(int i = 0; i < applyList.size(); i++) {
				addInfo.put(applyList.get(i).getScheduleNo(), applyList.get(i).getApplyCount());
			}
			
			for(int i = 0; i < onedayInfoList.size(); i++) {
				if(addInfo.get(onedayInfoList.get(i).getScheduleNo()) != null) {
					onedayInfoList.get(i).setApplyCount(addInfo.get(onedayInfoList.get(i).getScheduleNo()));
				}
			}
			model.addAttribute("onedayInfo", onedayInfoList);
			pageName = "teacher/classManage/t_classAttendance";
		}
		
		return pageName;
	}
	
	/**
	 * 원데이클래스 스케쥴별 신청정보(이해승)
	 * @param model
	 * @param scheduleNo 스케쥴번호
	 * @return 
	 */
	@GetMapping("/oneDayAttendanceList/{scheduleNo}")
	public String oneDayAttendancdManange(Model model, @PathVariable("scheduleNo") int scheduleNo) {
		
		model.addAttribute("applyInfoList", classManage.selectApplyUserInfo(scheduleNo));
		model.addAttribute("scheduleNo",scheduleNo);
		return "teacher/classManage/t_classAttendanceDetail";
	}
	
	/**
	 * 원데이 클래스 출석상태 update(이해승)
	 * @param model
	 * @param allApplyNo
	 * @param checkedApplyNo
	 * @return
	 */
	@PostMapping("/oneDayAttendanceUpdate")
	public String oneDayAttendanceUpdate(Model model,@RequestParam("allApplyNo") int[] allNo, @RequestParam("checkedApplyNo") @Nullable int[] checkedNo, @RequestParam int scheduleNo) {
		
		HashMap<String, Object> applyNoList= new HashMap<>();
		
		applyNoList.put("allApplyNo", allNo);
		applyNoList.put("checkedApplyNo", checkedNo);
		classManage.modifyOndeDayAttendanceStatus(applyNoList);
		
		return "redirect:/teacher/oneDayAttendanceList/" + scheduleNo;
	}
	
	
	/**
	 * 정규클래스 출석관리(이해승)
	 * @param model
	 * @param attendanceInfo
	 * @param scheduleNo
	 * @param attendanceDate
	 * @return
	 */
	@PostMapping("/regularAttendance")
	public String regularAttendanceUpdate(Model model, @RequestParam @Nullable String attendanceInfo,@RequestParam int scheduleNo, @RequestParam String attendanceDate, @RequestParam String clsNo) {
		
			String applyNo = "";
			String userNo = "";
			int classStep = 0;
			
			if(attendanceInfo != null && attendanceInfo.length() >0) {
				
				String[] infoList = attendanceInfo.split(",");
				for(int i = 0; i < infoList.length; i++) {
					
					String[] oneInfo = infoList[i].split("/");
					if(i != (infoList.length -1 )) {
						
						applyNo += oneInfo[1] + ",";
						userNo += oneInfo[2] + ",";
					} else {
						classStep = Integer.parseInt(oneInfo[0]);
						applyNo += oneInfo[1];
						userNo += oneInfo[2];
					}
				}
				
				String[] updateList = applyNo.split(",");
				
				classManage.updateRegularApplyStatus(updateList);
			}
		
			HashMap<String, Object> attendInfo = new HashMap<>();
			
			attendInfo.put("classStep", classStep);
			attendInfo.put("applyNo", applyNo);
			attendInfo.put("userNo", userNo);
			attendInfo.put("applyNo", applyNo);
			attendInfo.put("attendanceDate", java.sql.Date.valueOf(attendanceDate));
			attendInfo.put("scheduleNo", scheduleNo);
			classManage.insertRegularClassAttendance(attendInfo);
			model.addAttribute("clsNo", clsNo);
			
		return "redirect:/teacher/studentManagement?classType=R&clsNo="+clsNo;
	}
	
	/* 정산관리(강현우) */
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
	@GetMapping("/teacherInquiry")
	public String teacherInquiry() {
	
		return "teacher/reportInquiry/t_Inquiry";
	}

	/**
	 * 문의글 작성(이해승)
	 * @return
	 */
	@PostMapping("/inquiryWrite")
	public String inquiryWrite(Model model, @ModelAttribute QuestionDTO content, HttpSession session) {
		int teacherNo = (Integer)session.getAttribute("teacherNo");
		content.setQuestionId(Integer.toString(teacherNo));
		boardService.insertAdminQuestion(content);
		boardService.insertAdminQuestionHistory(content);
		
		return "redirect:/teacher/teacherInquiryList";
	}
	
	/**
	 * 문의목록조회(이해승)
	 * @param session
	 * @param model
	 * @param currentPage
	 * @return
	 */
	@GetMapping("/teacherInquiryList")
	public String teacherInquiryList(HttpSession session, Model model, @RequestParam(defaultValue = "1") int currentPage) {
		int teacherNo = (Integer) session.getAttribute("teacherNo");
		
		
		pageInfo = PageNation.getPageInfo(currentPage, boardService.selectAdminQnACount(teacherNo), 10, 5);
		
		HashMap<String,Object> searchCondition = new HashMap<>();
		searchCondition.put("pageInfo", pageInfo);
		searchCondition.put("teacherNo", teacherNo);
		
		model.addAttribute("adminQnAList", boardService.selectAdminQnAList(searchCondition));
		model.addAttribute("pageInfo", pageInfo);
		
		return "teacher/reportInquiry/t_inquiryList";
	}
	
	/**
	 * 관리자문의내용상세조회(이해승)
	 * @param model
	 * @param serachInfo
	 * @return
	 */
	@GetMapping("/teacherInquiryDetail")
	public String teacherInquiryDetail(Model model, @RequestParam Map<String, String> serachInfo) {
		
		model.addAttribute("QnADetail",boardService.selectQnADetail(serachInfo));
		
		return "teacher/reportInquiry/t_inquiryDetail";
	}
	
	/* 자주 묻는 질문 */
	@GetMapping("/teacherFAQ")
	public String teacherFAQ() {
		
		return "teacher/reportInquiry/t_FAQ";
	}
	
	/**
	 * 공지상세보기(이해승)
	 * @param model
	 * @param noticeNo
	 * @return
	 */
	@GetMapping("/noticeDetail")
	public String noticeDetail(Model model, @RequestParam int noticeNo) {
		
		model.addAttribute("noticeDetail", boardService.selectNoticeDetail(noticeNo));
		
		return "teacher/classManage/t_classNotice";
	}
	
	@GetMapping("/userInquiry")
	public String userInquiryList(Model model,@RequestParam HashMap<String,String> classInfo ) {
		
		model.addAttribute("inquiryList", boardService.selectinquiryList(classInfo.get("clsNo")));
		model.addAttribute("classType", classInfo.get("classType"));
		return "teacher/classManage/t_classInquiry";
		
	}
}
