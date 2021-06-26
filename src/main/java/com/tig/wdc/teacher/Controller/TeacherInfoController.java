package com.tig.wdc.teacher.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author 이해승
 * 강사회원가입, 로그인, 아이디찾기, 비밀번호 찾기, 강사정보수정용 컨트롤러
 */
@Controller
@RequestMapping("/teacher/*")
public class TeacherInfoController {

	@GetMapping("registTeacher")
	public String registTeacher() {
		
		return "teacher/teacherInfo/t_signup";
	}
	
	@PostMapping("teacherSignIn")
	public String teacherSignIn() {
		
		return "teacher/t_main";
	}
}
