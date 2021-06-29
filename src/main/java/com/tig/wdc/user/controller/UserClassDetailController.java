package com.tig.wdc.user.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tig.wdc.user.model.dto.UserClassDTO;
import com.tig.wdc.user.model.service.UserClassService;

/**
 * @author SORA
 * 클래스 상세보기 컨트롤러
 */
@Controller
@RequestMapping("user/*")
public class UserClassDetailController {

	private final UserClassService classService;
	
	@Autowired
	public UserClassDetailController(UserClassService classService) {
		this.classService = classService;
	}
	
//	/**
//	 * 클래스 상세보기 정보 select
//	 * @param model
//	 * @return
//	 */
//	@GetMapping("classDetail")
//	public String ClassDetail(@ModelAttribute int clsNo, Model model) {
//
//		List<UserClassDTO> classDetail = new ArrayList<UserClassDTO>();
//		
//		classDetail = classService.selectClassDtail();
//		
//		model.addAttribute("classDetail",classDetail);
//		
//		return "user/classList/class_detail";
//	}
}
