package com.tig.wdc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tig.wdc.user.model.dto.UserInfoDTO;
import com.tig.wdc.user.model.service.UserClassService;

/**
 * @author SORA
 *
 */
@Controller
@RequestMapping("/*")
public class MainController {

	private final UserClassService classService;
	
	@Autowired
	public MainController(UserClassService classService) {
		this.classService = classService;
	}
	
	@GetMapping(value= {"/"})
	public String main() {
		
		ClassDTO classDTO = new ClassDTO();

		return "user/main/main";
	}
	
	
}
