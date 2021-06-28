package com.tig.wdc.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tig.wdc.admin.model.dto.ClassDTO;
import com.tig.wdc.user.model.service.UserCategoryService;

/**
 * @author 민연준
 * 클래스 카테고리 조회 및 검색/정렬용 컨트롤러
 *
 */
@Controller
@RequestMapping("user/category/*")
public class UserCategoryController {

	private final UserCategoryService categoryService;
	
	@Autowired
	public UserCategoryController(UserCategoryService categoryService) {
		this.categoryService = categoryService;
	}
	
	@GetMapping("whole")
	public String ClassCategorySelect() {
		
		return null;
	}
	
}
