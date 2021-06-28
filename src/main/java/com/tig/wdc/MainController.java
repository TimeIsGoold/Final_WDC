package com.tig.wdc;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tig.wdc.user.model.dto.UserClassDTO;
import com.tig.wdc.user.model.service.UserClassService;

/**
 * @author SORA
 * 메인페이지 클래스 리스트 조회하기
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
	public String main(Model model) {

		List<UserClassDTO> newClassList = new ArrayList<UserClassDTO>();
		
		newClassList = classService.selectNewClassList();
		
		model.addAttribute("newClassList",newClassList);
		
		return "user/main/main";
	}
	
	
}
