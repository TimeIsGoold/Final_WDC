package com.tig.wdc.teacher.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.tig.wdc.common.PageNation;
import com.tig.wdc.model.dto.NoticeDTO;
import com.tig.wdc.model.dto.PageInfoDTO;
import com.tig.wdc.teacher.model.service.BoardAndQnAService;
import com.tig.wdc.teacher.model.service.TeacherInfoService;

@Controller
public class TeacherMainController {

	private final TeacherInfoService teacherInfoServcie;
	private final BoardAndQnAService noticeService;
	
	@Autowired
	public TeacherMainController(TeacherInfoService teacherInfoServcie, BoardAndQnAService noticeService) {
		this.teacherInfoServcie = teacherInfoServcie;
		this.noticeService = noticeService;
	}

	@GetMapping("teacher")
	public String teacherlogin() {
		return "teacher/teacherInfo/t_login";
	}
	
	@GetMapping("teacher/main")
	public String teacherMain(HttpSession session, Model model, @RequestParam(defaultValue = "1") int currentPage) {
		
		int teacherNo= (Integer) session.getAttribute("teacherNo");
		
		//공지사항 페이징처리
		PageInfoDTO pageInfo = PageNation.getPageInfo(currentPage, noticeService.selectNoticeCount(), 5, 5);
		//페이징처리정보
		model.addAttribute("pageInfo", pageInfo);
		//공지사항리스트
		model.addAttribute("noticeList", noticeService.selectNoticeList(pageInfo));
		//강사정보
		model.addAttribute("teacherInfo",teacherInfoServcie.selectTeacherInfo(teacherNo));
		//등록된 클래스 수
		model.addAttribute("RegistedClassCount",teacherInfoServcie.selectRegisteredClassCount(teacherNo));
		//누적 정산금액
		model.addAttribute("SumClassCalculate",teacherInfoServcie.selectSumClassCalculate(teacherNo));
		
		return "teacher/t_main";
	}
	
	@GetMapping("teacher/logout")
	public String teacherLogout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/teacher";
	}
}
