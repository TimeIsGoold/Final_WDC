package com.tig.wdc.teacher.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.tig.wdc.model.dto.TeacherInfoDTO;
import com.tig.wdc.teacher.model.service.TeacherInfoService;

@Controller
public class TeacherMainController {

	private final TeacherInfoService teacherInfoServcie;
	
	@Autowired
	public TeacherMainController(TeacherInfoService teacherInfoServcie) {
		this.teacherInfoServcie = teacherInfoServcie;
	}

	@GetMapping("teacher")
	public String teacherlogin() {
		return "teacher/teacherInfo/t_login";
	}
	
	@GetMapping("teacher/main")
	public String teacherMain(HttpSession session, Model model) {
		
		int teacherNo= (Integer) session.getAttribute("teacherNo");

		//강사정보
		model.addAttribute("teacherInfo",teacherInfoServcie.selectTeacherInfo(teacherNo));
		//등록된 클래스 수
		model.addAttribute("RegistedClassCount",teacherInfoServcie.selectRegisteredClassCount(teacherNo));
		//누적 정산금액
		model.addAttribute("SumClassCalculate",teacherInfoServcie.selectSumClassCalculate(teacherNo));
		
		return "teacher/t_main";
	}
}
