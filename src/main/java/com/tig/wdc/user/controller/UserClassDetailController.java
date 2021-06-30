package com.tig.wdc.user.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tig.wdc.user.model.dto.UserClassDTO;
import com.tig.wdc.user.model.service.UserClassService;

/**
 * @author SORA
 * 클래스 상세보기 컨트롤러 / 신청 / 결제 / 신고 용 컨트롤러
 */
@Controller
@RequestMapping("/user/*")
public class UserClassDetailController {

	private final UserClassService classService;
	
	@Autowired
	public UserClassDetailController(UserClassService classService) {
		this.classService = classService;
	}
	
	/**
	 * 클래스 상세보기 정보 select
	 * @param model
	 * @return
	 */
	@GetMapping("classDetail/{clsNo}")
	public String ClassDetail(@PathVariable("clsNo") int clsNo, Model model) {

		System.out.println("clsNo : " + clsNo);
		
		UserClassDTO classDetail = new UserClassDTO();
		
		classDetail = classService.selectClassDtail(clsNo);
		
		model.addAttribute("classDetail",classDetail);
		
		return "user/classList/class_detail";
	}
	
	/**
	 * 결제페이지 이동용 메소드
	 * @param session
	 * @return
	 */
	@GetMapping("payment")
	public String payment(HttpSession session) {
		int userNo= (Integer) session.getAttribute("userNo");

		
		return "user/payment/payment";
	}
	
}
