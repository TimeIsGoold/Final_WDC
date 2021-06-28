package com.tig.wdc.teacher.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("classRegist/*")
public class ClassRegistController {

	@GetMapping("step1/{classType}")
	public String registStep1(RedirectAttributes rttr, @PathVariable("classType") String type) {
		
//		String pageName = "";
		
//		if(type.equals("O")) {
//			pageName = "teacher/classRegist/t_oneDay1_basicInfo";
//		} else {
//			pageName = "teacher/classRegist/t_regCourse1_basicInfo";
//		}
		rttr.addFlashAttribute("classType", type);
		
		return "teacher/classRegist/registStep1_basicInfo"; 
	}
	
}
