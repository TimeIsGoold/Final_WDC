package com.tig.wdc.user.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user/login/*")
public class UserMainController {

	@GetMapping("/login")
	public String login() {
		
		return "user/login/login";
	}
	
	@GetMapping("/teacher")
	public String teacher() {
		
		return "teacher/t_main";
	}
	
	@GetMapping("/admin")
	public String admin() {
		
		return "admin/adminMain";
	}
	
	@GetMapping("/classdetail")
	public String classdetail() {
		
		return "user/mypage/participatingClass";
	}
}
