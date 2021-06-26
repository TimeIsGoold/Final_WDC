package com.tig.wdc.teacher.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TeacherMainController {

	@GetMapping("teacher")
	public String teacherMain() {
		return "teacher/teacherInfo/t_login";
	}
}
