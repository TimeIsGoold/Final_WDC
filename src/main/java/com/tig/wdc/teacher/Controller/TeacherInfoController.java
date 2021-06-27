package com.tig.wdc.teacher.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tig.wdc.model.dto.TeacherInfoDTO;
import com.tig.wdc.teacher.model.service.TeacherInfoService;

/**
 * @author 이해승
 * 강사회원가입, 로그인, 아이디찾기, 비밀번호 찾기, 강사정보수정용 컨트롤러
 */
@Controller
@RequestMapping("/teacher/*")
public class TeacherInfoController {
	
	private final TeacherInfoService infoService;
	
    @Autowired	
	public TeacherInfoController(TeacherInfoService infoService) {
		this.infoService = infoService;
	}

	@GetMapping("registTeacher")
	public String registTeacher() {
		
		return "teacher/teacherInfo/t_signup";
	}
	
	@PostMapping("teacherSignIn")
	public String teacherSignIn(Model model,@ModelAttribute TeacherInfoDTO loginInfo) {
		
		TeacherInfoDTO teacherInfo = infoService.findteacherInfo(loginInfo);
		System.out.println(teacherInfo);
		
		model.addAttribute("teacherInfo",teacherInfo);
		return "teacher/t_main";
	}
	
}
