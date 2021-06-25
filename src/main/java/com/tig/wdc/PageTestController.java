package com.tig.wdc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageTestController {

	@RequestMapping("/test")
	public String pageMove() {
		
<<<<<<< HEAD
		return "/teacher/classManage/t_classAttendance";
=======
		return "teacher/t_main";
>>>>>>> branch 'master' of https://github.com/TimeIsGoold/Final_WDC.git
	}
}
