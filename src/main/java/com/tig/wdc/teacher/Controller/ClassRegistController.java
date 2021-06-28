package com.tig.wdc.teacher.Controller;

import java.util.ArrayList;
import java.util.List;
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

import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.tig.wdc.model.dto.AttachMentDTO;
import com.tig.wdc.model.dto.ClassPieceDTO;
import com.tig.wdc.user.model.dto.ClassDTO;

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
		
//		String pageName = "";
		
//		if(type.equals("O")) {
//			pageName = "teacher/classRegist/t_oneDay1_basicInfo";
//		} else {
//			pageName = "teacher/classRegist/t_regCourse1_basicInfo";
//		}
		rttr.addFlashAttribute("classType", type);
		
		return "teacher/classRegist/registStep1_basicInfo"; 
	}

	
	@PostMapping("step2")
	public String registStep2(@ModelAttribute ClassDTO classInfo, Model model, @RequestParam Map<String, MultipartFile> pictures) {
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd hh:mm:ss:SSS").setFieldNamingPolicy(FieldNamingPolicy.IDENTITY).serializeNulls().disableHtmlEscaping().create();

		List<AttachMentDTO> pictureList = new ArrayList<>();
		for(int i = 0; i < pictures.size(); i++) {
			if(pictures.get("thumbnailImg"+(i+1)).getOriginalFilename() != null && pictures.get("thumbnailImg"+(i+1)).getOriginalFilename().length() > 0) {
				titlePicture.setPictureInfo(pictures.get("thumbnailImg"+(i+1)));
				pictureList.add(titlePicture);
			}
		};
		
		classInfo.setTitlePictue(pictureList);
		
		String firstInfo = gson.toJson(classInfo);
		model.addAttribute("classInfo", firstInfo);
		return "teacher/classRegist/registStep2_classIntro";
	}
	
	@PostMapping("step3")
	public String registStep3(Model model, @ModelAttribute ClassDTO classInfo, @RequestParam String classInfo1) {
		
		System.out.println(classInfo1);
		System.out.println(classInfo);
		return "";
	}
	
}
