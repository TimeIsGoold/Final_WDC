package com.tig.wdc.teacher.Controller;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tig.wdc.model.dto.TeacherInfoDTO;
import com.tig.wdc.teacher.model.service.TeacherInfoService;

/**
 * @author 이해승
 * 강사회원가입, 로그인, 아이디찾기, 비밀번호 찾기, 강사정보수정용 컨트롤러
 */
@Controller
@RequestMapping("/teacher/*")
@SessionAttributes("teacherNo")
public class TeacherInfoController {
	
	private final TeacherInfoService infoService;
	private final BCryptPasswordEncoder passwordEncoder;
	
    @Autowired	
	public TeacherInfoController(TeacherInfoService infoService, BCryptPasswordEncoder passwordEncoder) {
		this.infoService = infoService;
		this.passwordEncoder = passwordEncoder;
	}

	@GetMapping("registTeacher")
	public String registTeacher() {
		
		return "teacher/teacherInfo/t_signup";
	}
	
	@PostMapping("teacherSignIn")
	public String teacherSignIn(Model model,@ModelAttribute TeacherInfoDTO loginInfo, RedirectAttributes rttr) {
		
		TeacherInfoDTO teacherInfo = infoService.findteacherInfo(loginInfo);
		
		//로그인 입력 정보와 회원정보 불일치 시 다시 로그인페이지로 이동
		String returnPage = "redirect:/teacher";
		
		if(teacherInfo == null) {
			
			rttr.addFlashAttribute("message", "등록된 아이디가 없습니다.");
//        암호화 후 적용
//		} else if(!passwordEncoder.matches(loginInfo.getTeacherPwd(), teacherInfo.getTeacherPwd())) {
		} else if(!loginInfo.getTeacherPwd().equals(teacherInfo.getTeacherPwd())) {
			
			rttr.addFlashAttribute("message", "비밀번호가 일치하지 않습니다.");
		} else if("Y".equals(teacherInfo.getTeacherQuitStatus())) {
			System.out.println("해승 수정수정");
			rttr.addFlashAttribute("message", "탈퇴된 아이디입니다.");
		} else if("Y".equals(teacherInfo.getTeacherBlockStatus())) {
			
			rttr.addFlashAttribute("message", "신고에 의해 차단된 아이디입니다. 관리자에게 문의하세요");
		} else {
			
			//로그인 입력 정보와 회원정보 일치 시 메인페이지 핸들러로 이동
			model.addAttribute("teacherNo",teacherInfo.getTeacherNo());
			returnPage = "redirect:main";
		}
		return returnPage;
	}
	
	@PostMapping("updateProfile")
	public String updateProfile(@RequestParam("thumbnailImg1") MultipartFile teacherPic,HttpServletRequest request, RedirectAttributes rttr) {
		
//		//강사 소개글
//		String intro = request.getParameter("teacherIntro");
//		String root = request.getSession().getServletContext().getRealPath("resources");
//		
//		String filePath = root + "\\upload";
//		File mkdir = new File(filePath);
//		
//		if(!mkdir.exists()) {
//			mkdir.mkdirs();
//		}
//		String saveName = null;
//		String originFileName = teacherPic.getOriginalFilename();
//		
//		if(originFileName != null && originFileName.length() != 0) {
//			String ext = originFileName.substring(originFileName.lastIndexOf("."));
//			saveName = UUID.randomUUID().toString().replace("-", "") + ext;
//		} else if(model.getAttribute("beforePic") != null) {
//			System.out.println(model.getAttribute("beforePic").toString());
//			saveName = (String) model.getAttribute("beforePic");
//		}
//		try {
//			teacherPic.transferTo(new File(filePath + "\\" + saveName));
//			
//			TeacherInfoDTO profileInfo = new TeacherInfoDTO();
//			profileInfo.setTeacherPicture(saveName);
//			profileInfo.setTeacherIntro(intro);
//			profileInfo.setTeacherNo((Integer)request.getSession().getAttribute("teacherNo"));
//			
//			int result = infoService.updateTeacherProfile(profileInfo);
//			
//			if(result > 0) {
//				rttr.addFlashAttribute("profileMessage", "회원정보 수정 성공!");
//			} else {
//				rttr.addFlashAttribute("profileMessage", "회원정보 수정 실패!");
//			}
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//			
//			new File(filePath + "\\" + saveName).delete();
//			rttr.addFlashAttribute("profileMessage", "회원정보 수정 실패!");
//		}
		//강사 소개글
		String saveName = null;
		String originFileName = teacherPic.getOriginalFilename();
		
		String intro = request.getParameter("teacherIntro");
		//업로드 된 사진이 있으면 새로 저장
		if(originFileName != null && originFileName.length() != 0) {
			
			String root = request.getSession().getServletContext().getRealPath("resources");
			
			String filePath = root + "\\upload";
			File mkdir = new File(filePath);
			
			if(!mkdir.exists()) {
				mkdir.mkdirs();
			}
			
			String ext = originFileName.substring(originFileName.lastIndexOf("."));
			saveName = UUID.randomUUID().toString().replace("-", "") + ext;

			try {
				teacherPic.transferTo(new File(filePath + "\\" + saveName));

				TeacherInfoDTO profileInfo = new TeacherInfoDTO();
				profileInfo.setTeacherPicture(saveName);
				profileInfo.setTeacherIntro(intro);
				profileInfo.setTeacherNo((Integer)request.getSession().getAttribute("teacherNo"));
				
				int result = infoService.updateTeacherProfile(profileInfo);
				
				if(result > 0) {
					rttr.addFlashAttribute("profileMessage", "회원정보 수정 성공!");
				} else {
					rttr.addFlashAttribute("profileMessage", "회원정보 수정 실패!");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		} else if(request.getParameter("beforePic") != null) {
			//기존 사진이 있는 경우 기존사진 그대로 유지
			saveName = request.getParameter("beforePic");
			
			TeacherInfoDTO profileInfo = new TeacherInfoDTO();
			profileInfo.setTeacherPicture(saveName);
			profileInfo.setTeacherIntro(intro);
			profileInfo.setTeacherNo((Integer)request.getSession().getAttribute("teacherNo"));

			int result = infoService.updateTeacherProfile(profileInfo);
			
			if(result > 0) {
				rttr.addFlashAttribute("profileMessage", "회원정보 수정 성공!");
			} else {
				rttr.addFlashAttribute("profileMessage", "회원정보 수정 실패!");
			}
		}

		return "redirect:main";
		
	}
}
