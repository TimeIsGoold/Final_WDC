package com.tig.wdc.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tig.wdc.teacher.model.service.TeacherInfoService;
import com.tig.wdc.user.model.dto.UserInfoDTO;
import com.tig.wdc.user.model.service.UserInfoService;

/**
 * @author ADMIN
 * 유저 회원가입, 로그인, 아이디찾기, 비밀번호 찾기, 고객정보수정용 컨트롤러
 */
@Controller
@RequestMapping("/user/mypage/*")
public class UserInfoController {
	
	private final UserInfoService infoService;
	
	@Autowired
	public UserInfoController(UserInfoService infoService) {
		this.infoService = infoService;
	}
	
	@GetMapping("mypageMain")
	public String userMypage(Model model) {
		
		UserInfoDTO userInfoDTO = new UserInfoDTO();
		userInfoDTO.setUserNo(1);
		
		userInfoDTO = infoService.selectUser(userInfoDTO.getUserNo());
		
		
		
		model.addAttribute("userInfoDTO",userInfoDTO);
		
		return "user/mypage/mypage";
	}

}
