package com.tig.wdc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tig.wdc.user.model.service.UserClassService;
import com.tig.wdc.user.model.service.UserInfoService;

@Controller
@RequestMapping("/*")
public class MainController {

	@GetMapping(value= {"/"})
	public String main() {
		
//		private final UserClassService classService;
		
		
		
		return "user/main/main";
	}
	
	
}
