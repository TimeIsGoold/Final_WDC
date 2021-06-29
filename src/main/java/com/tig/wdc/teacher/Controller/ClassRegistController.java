package com.tig.wdc.teacher.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tig.wdc.model.dto.AttachMentDTO;
import com.tig.wdc.model.dto.ClassPieceDTO;
import com.tig.wdc.user.model.dto.ClassDTO;

/**
 * @author 이해승
 * 클래스 등록
 *
 */
@Controller
@RequestMapping("classRegist/*")
public class ClassRegistController {

	private AttachMentDTO titlePicture;
	private	ClassPieceDTO classPiece;
	
	@Autowired
	public ClassRegistController(AttachMentDTO titlePicture, ClassPieceDTO classPiece) {
		super();
		this.titlePicture = titlePicture;
		this.classPiece = classPiece;
	}


	@GetMapping("step1/{classType}")
	public String registStep1(RedirectAttributes rttr, @PathVariable("classType") String type) {
		
		rttr.addFlashAttribute("classType", type);
		
		return "teacher/classRegist/step1_basicInfo"; 
	}

	
	@PostMapping("classInsert")
	public String registStep2(@ModelAttribute ClassDTO classInfo, Model model, @RequestParam Map<String, MultipartFile> pictures) {
		
		System.out.println(classInfo);
		
		return "";
	}
}
