package com.tig.wdc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageTestController {

	@RequestMapping("/test")
	public String pageMove() {
		
		return "/teacher/classManage/t_classAttendance";
	}
}
