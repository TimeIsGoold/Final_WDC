package com.tig.wdc.user.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tig.wdc.model.dto.CurriculumDTO;
import com.tig.wdc.user.model.dto.ClassPieceDTO;
import com.tig.wdc.user.model.dto.ReviewAnswerDTO;
import com.tig.wdc.user.model.dto.UserClassDTO;
import com.tig.wdc.user.model.dto.UserReviewDTO;
import com.tig.wdc.user.model.service.UserClassService;

/**
 * @author SORA
 * 클래스 상세보기 컨트롤러
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
		
		//클래스 정보 select
		UserClassDTO classDetail = new UserClassDTO();
		classDetail = classService.selectClassDtail(clsNo);
		model.addAttribute("classDetail",classDetail);
		
		//대표사진 3장 select
		List<UserClassDTO> classPic = new ArrayList<UserClassDTO>();
		classPic = classService.selectClassPic(clsNo);
		model.addAttribute("classPic",classPic);
		
		//평점 select
		UserClassDTO classStar = new UserClassDTO();
		classStar = classService.selectClassStar(clsNo);
		model.addAttribute("classStar",classStar);
		
		//완성작 select
		List<ClassPieceDTO> classPiece = new ArrayList<ClassPieceDTO>();
		classPiece = classService.selectClassPiece(clsNo);
		model.addAttribute("classPiece",classPiece);
		
		//커리큘럼 select
		List<CurriculumDTO> curriculum = new ArrayList<CurriculumDTO>();
		curriculum = classService.selectCurriculum(clsNo);
		model.addAttribute("curriculum",curriculum);
		
		//리뷰 select
		List<UserReviewDTO> review = new ArrayList<UserReviewDTO>();
		review = classService.selectReview(clsNo);
		model.addAttribute("review",review);
		
		System.out.println(review);
		
		return "user/classList/class_detail";
	}
	
}
