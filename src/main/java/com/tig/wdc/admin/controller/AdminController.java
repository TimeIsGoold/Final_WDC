package com.tig.wdc.admin.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tig.wdc.admin.commons.DateSortDesc;
import com.tig.wdc.admin.model.dto.BlackListDTO;
import com.tig.wdc.admin.model.dto.CalculateDTO;
import com.tig.wdc.admin.model.dto.CheeringClassDTO;
import com.tig.wdc.admin.model.dto.ClsDecisionDTO;
import com.tig.wdc.admin.model.dto.CouponDTO;
import com.tig.wdc.admin.model.dto.NoticeDTO;
import com.tig.wdc.admin.model.dto.QuestionDTO;
import com.tig.wdc.admin.model.dto.RefundDTO;
import com.tig.wdc.admin.model.dto.ReportDetailDTO;
import com.tig.wdc.admin.model.dto.TotalDTO;
import com.tig.wdc.admin.model.service.AdminService;
import com.tig.wdc.model.dto.CurriculumDTO;
import com.tig.wdc.user.model.dto.ClassPieceDTO;
import com.tig.wdc.user.model.dto.UserClassDTO;
import com.tig.wdc.user.model.service.UserClassService;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

	private final AdminService adminService;
	private final UserClassService classService;

	@Autowired
	public AdminController(AdminService adminService, UserClassService classService) {

		this.adminService = adminService;
		this.classService = classService;
	}

	/**
	 * @author 송아현
	 * 로그인
	 * 
	 * @return
	 */
	@GetMapping("login")
	public String adminLogin() {
		return "admin/adminLogin";
	}

	/**
	 * @author 김현빈
	 * 회원관리
	 * 
	 * @param model
	 * @return
	 */
	@GetMapping("memberManagement")
	public String selectTotalUsertList(Model model) {

		List<TotalDTO> realtotalList = adminService.selectTotalUsertList();

		Collections.sort(realtotalList, new DateSortDesc());

		model.addAttribute("totalList", realtotalList);

		return "admin/adminMemberManagement";
	}

	/**
	 * @author 김현빈
	 * 신고관리
	 * 
	 * @param model
	 * @return
	 */
	@GetMapping("reportManagement")
	public String reportManagement(Model model) {

		model.addAttribute("reportList", adminService.selectAllReportList());

		return "admin/adminMemberReportManagement";
	}

	/**
	 * @author 송아현
	 * 문의관리
	 * 
	 * @param model
	 * @return
	 */
	@GetMapping("questionManagement")
	public String selectQustionList(@RequestParam("mt")String type, Model model) {

		if(type.equals("to")) {
			model.addAttribute("questionList", adminService.selectAllQuestionList());
		} else if(type.equals("tc")) {
			model.addAttribute("questionList", adminService.selectTeacherQuestionList());			
		} else if(type.equals("st")) {			
			model.addAttribute("questionList", adminService.selectStudentQuestionList());			
		}

		return "admin/adminQuestionManagement";
	}
	
	/**
	 * @author 송아현
	 * 문의 상세
	 * @param type
	 * @param id
	 * @param model
	 * @return
	 */
	@GetMapping("questionDetail") 
	public String questionInfoDetail(@RequestParam("mt")String type, @RequestParam("no")int no, Model model) {
		
		if(type.equals("TEACHER")) {
			model.addAttribute("questionDetail", adminService.selectTeacherQuestionInfoDetail(no));			
		} else if(type.equals("USER")) {
			model.addAttribute("questionDetail", adminService.selectStudentQuestionInfoDetail(no));			
		}
		
		return "admin/questionDetail"; 
	}
	
	/**@author 송아현
	 * 문의 답변 
	 * @param question
	 * @param model
	 * @return
	 */
	@RequestMapping("questionAnswer")
	public String questionAnswer(@ModelAttribute QuestionDTO question, Model model) {

		model.addAttribute("questionAnswer", adminService.insertAnswer(question));
		model.addAttribute("questionAnswer", adminService.updateAnswer(question));
		
		return "redirect:/admin/questionManagement?currentMenu=question&mt=to";
	}
	 
	/**
	 * @author 송아현
	 * 쿠폰 관리
	 * 
	 * @param model
	 * @return
	 */
	@GetMapping("couponManagement")
	public String couponManagement(Model model) {

		model.addAttribute("couponList", adminService.selectAllCouponList());

		return "admin/adminCouponManagement";
	}
	
	/**
	 * @author 송아현
	 * 쿠폰 상세
	 * 
	 * @param no
	 * @param model
	 * @return
	 */
	@GetMapping("couponDetail")
	public String couponInfoDetail(@RequestParam("no")int no, Model model) {
		
		model.addAttribute("couponDetail", adminService.selectCouponInfoDetail(no));
		
		return "admin/couponDetail";
	}
	
	/**
	 * @author 송아현
	 * 쿠폰 발급을 위한 매핑
	 * 전처리 -> url
	 */
	@GetMapping("couponIssue")
	public void couponIssue() {}
	
	/**
	 * @author 송아현
	 * 쿠폰 발급
	 * 후처리
	 * @return
	 */
	@RequestMapping("couponIssue")
	public String couponIssue(@ModelAttribute CouponDTO coupon, Model model) {

		model.addAttribute("couponIssue", adminService.insertCouponIssue(coupon));
		
		return "redirect:/admin/couponManagement?currentMenu=coupon";
	}

	/**
	 * @author 송아현
	 * 공지 관리
	 * 
	 * @param model
	 * @return
	 */
	@GetMapping("noticeManagement")
	public String noticeManagement(Model model) {

		model.addAttribute("noticeList", adminService.selectAllNoticeList());

		return "admin/adminNoticeManagement";
	}
	
	/**
	 * @author 송아현
	 * 공지 상세
	 * 
	 * @param no
	 * @param model
	 * @return
	 */
	@GetMapping("noticeDetail")
	public String noticeInfoDetail(@RequestParam("no")int no, Model model) {
		
		model.addAttribute("noticeDetail", adminService.selectNoticeInfoDetail(no));
		
		return "admin/noticeDetail";
	}
	
	/**
	 * @author 송아현
	 * 공지 작성을 위한 매핑
	 * 전처리 -> url
	 */
	@GetMapping("noticeWrite")
	public void noticeIssue() {}
	
	/**
	 * @author 송아현
	 * 공지사항 등록
	 * 
	 * @param notice
	 * @param model
	 * @return
	 */
	@RequestMapping("noticeWrite")
	public String noticeWrite(@ModelAttribute NoticeDTO notice, Model model) {
		
		model.addAttribute("noticeWrite", adminService.insertNoticeWrite(notice));
		
		return "redirect:/admin/noticeManagement?currentMenu=notice";
	}
	
	/**
	 * @author 송아현
	 * 공지사항 수정을 위한 매핑
	 * 전처리 -> url
	 * 
	 * @param no
	 * @param model
	 */
	@GetMapping("noticeReWrite")
	public void noticeReWrite(@RequestParam("no")int no, Model model) {
		
		model.addAttribute("noticeDetail", adminService.selectNoticeInfoDetail(no));
	}
	
	/**
	 * @author 송아현
	 * 공지사항 수정 등록
	 * 
	 * @param no
	 * @param model
	 * @return
	 */
	@RequestMapping("noticeReWrite")
	public String noticeReWrite(@ModelAttribute NoticeDTO notice, Model model) {

		
		System.out.println("notice dto : " + notice);
		model.addAttribute("noticeRewrite", adminService.updateNoticeReWrite(notice));
		
		return "redirect:/admin/noticeManagement?currentMenu=notice";
	}
	
	/**
	 * @author 송아현
	 * 정산 관리
	 * 
	 * @param model
	 * @return
	 */
	 @GetMapping("calculateManagement") 
	 public String calculateManagement(@RequestParam("YN")String type, @RequestParam("type")String classType, Model model) {
	  
		 if(type.equals("N")) {
			 model.addAttribute("calculateList", adminService.selectNoCalculateList(classType));
		 } else if(type.equals("Y")) {
			 model.addAttribute("calculateList", adminService.selectYesCalculateList(classType));
		 }
		 
		 return "admin/adminCalculateManagement"; 
	 }
	 
   /**
	* @author 송아현
	* 정산 상세
	*  
	* @param model
	* @return
	*/
	@GetMapping("calculateDetail")
	 public String calculateInfoDetail(@RequestParam("YN")String type, @RequestParam("type")String classType, @RequestParam("no")int no, Model model) {
		
		if(type.equals("N")) {
			//model.addAttribute("calculateInfoDetail", adminService.selectNoCalculateDetail(no));
		} else if(type.equals("Y")) {
			model.addAttribute("calculateInfoDetail", adminService.selectYesCalculateDetail(no));
		}
		
		return "admin/calculateDetail";
	 }
	
	/**
	 * @author 송아현
	 * 정산 승인
	 * 
	 * @param calculate
	 * @param model
	 * @return
	 */
	@RequestMapping("calculateDetail")
	public String calculateApprove(@ModelAttribute CalculateDTO calculate, Model model) {
		
		//model.addAttribute("calculateDetail", adminService.insertCalculate(calculate));
		//model.addAttribute("calculateDetail", adminService.updateCalculate(calculate));
		
		return "redirect:/admin/calculateManagement?currentMenu=calculate&YN=N&type=O";
	}
	
	/**
	 * @author 송아현
	 * 환불 관리
	 * 
	 * @param type
	 * @param model
	 * @return
	 */
	@GetMapping("refundManagement")
	public String refundManagement(@RequestParam("YN")String type, Model model) {

		model.addAttribute("refundList", adminService.selectRefundList(type));

		return "admin/adminRefundManagement";
	}
	
	/**
	 * @author 송아현
	 * 환불 상세
	 * 
	 * @param model
	 * @return
	 */
	@GetMapping("refundDetail") 
	public String refundInfoDetail(@RequestParam("status")String status, @RequestParam("no")String no,@ModelAttribute RefundDTO refund, Model model) {
	
		Map<String, Object> refundDetailMap = new HashMap<>();
		refundDetailMap.put("status", status);
		refundDetailMap.put("no", no);
		
		model.addAttribute("refundInfoDetail",adminService.selectRefundInfoDetail(refundDetailMap));
	  
		return "admin/refundDetail";
	}
	
	/**
	 * @author 송아현
	 * 환불 승인 - update
	 * 
	 * @param refund
	 * @param model
	 * @return
	 */
	@RequestMapping("refundDetail")
	public String refundApprove(@ModelAttribute RefundDTO refund, Model model) {
		
		model.addAttribute("refundDetail", adminService.updateRefundApprove(refund));
		
		return "redirect:/admin/refundManagement?currentMenu=refund&YN=N";
	}

	/**
	 * 회원 상세 - 현빈
	 * 
	 * @param model
	 * @return
	 */
	@GetMapping("memberInfoDetail")
	public String memberInfoDetail(@RequestParam("memberType")String type, @RequestParam("memberNo")int no, Model model) {

		String path = "";
		if(type.equals("T")) {
			model.addAttribute("memberInfo", adminService.selectOneTeacher(no));
			path = "admin/MemberManager-Teacher";
		} else {
			model.addAttribute("memberInfo", adminService.selectOneStudent(no));
			path = "admin/MemberManager-Student";
		}
		return path;
	}
	
	/**
	 * @author 김현빈
	 * <pre>
	 * 	회원 관리 카테고리 별로 셀렉해오는 메소드
	 * </pre>
	 * @return
	 */
	@GetMapping("selectMemberBycategory")
	public String selectMemberBycategory(@RequestParam("ut")String type, Model model) {
		System.out.println("type : " + type);
		if(type.equals("tc")) {
			model.addAttribute("totalList", adminService.selectTeacherList());
		} else if (type.equals("st")) {
			model.addAttribute("totalList", adminService.selectStudentList());
		}
		return "admin/adminMemberManagement";
	}
	
	/**
	 * @author 김현빈
	 * <pre>
	 *  신고관리 디테일
	 * </pre>
	 * @return
	 */
	@GetMapping("reportDetail")
	public String selectReportDetail(@RequestParam("no")int no ,@RequestParam("type")String type, @RequestParam(value="chkCnt", defaultValue="0")int chkCnt, Model model) {
		ReportDetailDTO rd = new ReportDetailDTO();
		rd.setReportNo(no);
		if(type.equals("수강생") || type.equals("T")) {
			// 수강생
			rd.setType("U");
		} else {
			rd.setType("T");
		}
			model.addAttribute("reportDetail", adminService.selectStudentReportList(rd));
			if(chkCnt == 1) {
			model.addAttribute("message", "해당 유저는 누적 신고 3회로  블랙리스트가 되었습니다.");
			}
		return "admin/reportPage";
	}

	@GetMapping("procsAcceptStatus")
	public String procsAcceptStatus(@RequestParam("rn")int no, @RequestParam("type")String type, @RequestParam("un")int userNo, Model model) {
		Map<String, Object> blackMap = new HashMap<>();
		blackMap.put("type", type);
		blackMap.put("userNo", userNo);
		adminService.updateReportStatus(no);
		int i = adminService.selectReportCnt(userNo);
		System.out.println("여기요 카운트가 몇개인지 보세요  : "   + i);
		int chkCnt = 0;
		if(i > 2) {
			adminService.insertBlackList(blackMap);
			adminService.updateBlackListOnUSerTable(blackMap);
			chkCnt= 1;
			return "redirect:reportDetail?no="+no+"&type="+ type + "&chkCnt="+chkCnt;
		} else {
			return "redirect:reportDetail?no="+no+"&type="+ type;
		}
	}
	
	@GetMapping("procsDenyStatus")
	public String procsDenyStatus(@RequestParam("rn")int no, @RequestParam("type")String type, Model model) {
		adminService.updateReportStatus2(no);
		return "redirect:reportDetail?no="+no+"&type="+ type;
	}
	
	@GetMapping("blackListMenagement")
	public String blackListMenagement(@RequestParam("ut")String type, Model model) {
		if(type.equals("to")) {
			model.addAttribute("allBlackList", adminService.selectAllBlackList());
		} else if(type.equals("tc")) {
			model.addAttribute("allBlackList", adminService.selectBlockedTeacherList());
		} else if(type.equals("st")) {
			model.addAttribute("allBlackList", adminService.selectBlockedStudentList());
		}
		return "admin/BlackListManagement";
	}
	
	@GetMapping("selectClassBycategory")
	public String selectClassBycategory(@RequestParam(value="ct", defaultValue="total")String type,@RequestParam(value="cnt", defaultValue="0")int result, Model model) {
		Map<String, String> map = new HashMap<>();
		map.put("type", type);
		model.addAttribute("classList", adminService.selectClassBycategory(map));
		if(result > 0)  model.addAttribute("message","1차 심사를 승인하셨습니다.");
		return "admin/adminClassManagement";
	}
	
	@PostMapping("blackListInsert")
	public String blackListInsert(@ModelAttribute BlackListDTO black, Model model) {
		Map<String, Object> blackMap = new HashMap<>();
		blackMap.put("blackMap", black);
		adminService.insertBlackList(blackMap);
		adminService.updateBlackListOnUSerTable(blackMap);
		return "redirect:blackListMenagement?&ut=to";
	}
	
	@GetMapping("classDetail")
	public String classDetail(Model model, @RequestParam("cn")int clsNo, @RequestParam("ct")String type, @RequestParam("cd")String decision) {
		String path = "";
		if(type.equals("W") && decision.equals("Y")) {
		//클래스 정보 select
				UserClassDTO classDetail = new UserClassDTO();
				classDetail = classService.selectClassDtail(clsNo);
				model.addAttribute("classDetail",classDetail);
				//대표사진 3장 select
				List<UserClassDTO> classPic = new ArrayList<UserClassDTO>();
				classPic = classService.selectClassPic(clsNo);
				model.addAttribute("classPic",classPic);
				//완성작 select
				List<ClassPieceDTO> classPiece = new ArrayList<ClassPieceDTO>();
				classPiece = classService.selectClassPiece(clsNo);
				model.addAttribute("classPiece",classPiece);
				//커리큘럼 select
				List<CurriculumDTO> curriculum = new ArrayList<CurriculumDTO>();
				curriculum = classService.selectCurriculum(clsNo);
				model.addAttribute("curriculum",curriculum);
				path = "admin/BeforeDicision";	
				
				
		}  else if(type.equals("S") && decision.equals("P")) {
				UserClassDTO classDetail = new UserClassDTO();
				classDetail = classService.selectClassDtail(clsNo);
				model.addAttribute("classDetail",classDetail);
				//대표사진 3장 select
				List<UserClassDTO> classPic = new ArrayList<UserClassDTO>();
				classPic = classService.selectClassPic(clsNo);
				model.addAttribute("classPic",classPic);
				//완성작 select
				List<ClassPieceDTO> classPiece = new ArrayList<ClassPieceDTO>();
				classPiece = classService.selectClassPiece(clsNo);
				model.addAttribute("classPiece",classPiece);
				//커리큘럼 select
				List<CurriculumDTO> curriculum = new ArrayList<CurriculumDTO>();
				curriculum = classService.selectCurriculum(clsNo);
				model.addAttribute("curriculum",curriculum);
				path = "admin/detailpage";	
				
				// 거절된 클래스
		} else if(type.equals("R") && decision.equals("Y")) {
			UserClassDTO classDetail = new UserClassDTO();
				classDetail = classService.selectClassDtail(clsNo);
				model.addAttribute("classDetail",classDetail);
				//대표사진 3장 select
				List<UserClassDTO> classPic = new ArrayList<UserClassDTO>();
				classPic = classService.selectClassPic(clsNo);
				model.addAttribute("classPic",classPic);
				//완성작 select
				List<ClassPieceDTO> classPiece = new ArrayList<ClassPieceDTO>();
				classPiece = classService.selectClassPiece(clsNo);
				model.addAttribute("classPiece",classPiece);
				//커리큘럼 select
				List<CurriculumDTO> curriculum = new ArrayList<CurriculumDTO>();
				curriculum = classService.selectCurriculum(clsNo);
				model.addAttribute("curriculum",curriculum);
				path = "admin/denyClassManagement";	
				
				// 응원 갯수 부족 클래스
		} else if(type.equals("L") && decision.equals("Y")) {
				UserClassDTO classDetail = new UserClassDTO();
				classDetail = classService.selectClassDtail(clsNo);
				model.addAttribute("classDetail",classDetail);
				//대표사진 3장 select
				List<UserClassDTO> classPic = new ArrayList<UserClassDTO>();
				classPic = classService.selectClassPic(clsNo);
				model.addAttribute("classPic",classPic);
				//완성작 select
				List<ClassPieceDTO> classPiece = new ArrayList<ClassPieceDTO>();
				classPiece = classService.selectClassPiece(clsNo);
				model.addAttribute("classPiece",classPiece);
				//커리큘럼 select
				List<CurriculumDTO> curriculum = new ArrayList<CurriculumDTO>();
				curriculum = classService.selectCurriculum(clsNo);
				model.addAttribute("curriculum",curriculum);
				path = "admin/LackofcheeringClass";	
				
				// 종료된 클래스
		} else if(decision.equals("E")) {
				UserClassDTO classDetail = new UserClassDTO();
				classDetail = classService.selectClassDtail(clsNo);
				model.addAttribute("classDetail",classDetail);
				//대표사진 3장 select
				List<UserClassDTO> classPic = new ArrayList<UserClassDTO>();
				classPic = classService.selectClassPic(clsNo);
				model.addAttribute("classPic",classPic);
				//완성작 select
				List<ClassPieceDTO> classPiece = new ArrayList<ClassPieceDTO>();
				classPiece = classService.selectClassPiece(clsNo);
				model.addAttribute("classPiece",classPiece);
				//커리큘럼 select
				List<CurriculumDTO> curriculum = new ArrayList<CurriculumDTO>();
				curriculum = classService.selectCurriculum(clsNo);
				model.addAttribute("curriculum",curriculum);
				path = "admin/EndedClass";	
		}
		return path;
	}
	
	@PostMapping("firstDecision")
	public String firstDecicsion(@ModelAttribute ClsDecisionDTO clsDecisionDTO, Model model) {
		 int result = adminService.updateFirstDecision(clsDecisionDTO);
		 if(result > 0)  adminService.insertClassDecision(clsDecisionDTO);
		return "redirect:selectClassBycategory?ct=tw&cnt="+result;
	}

	@GetMapping("seconddecision")
	   public String selectCheeringClass(@RequestParam("pc")String result, Model model) {
	      long today = System.currentTimeMillis();
	      List<CheeringClassDTO> refinedCheeringClassList = new ArrayList<>();
	      List<CheeringClassDTO> cheeringClassList = adminService.selectCheeringClass();
	      if(result.equals("t")) {
	         model.addAttribute("classList", cheeringClassList);
	         model.addAttribute("t", "t");
	      }
	      if(result.equals("p")) {
	         for(int i = 0; i < cheeringClassList.size(); i++ ) {
	            // 클래스 1차 심사일 + 7일이 오늘 보다 값이 크면 리스트에 뜨워줌
	            if((cheeringClassList.get(i).getFirstDecision().getTime() + 604800000) >= today && cheeringClassList.get(i).getCheeringCnt() >= 5) {
	               refinedCheeringClassList.add(cheeringClassList.get(i));
	               List<Integer> userNoArr = null;
	               for(int j = 0; j < refinedCheeringClassList.size(); j ++) {
	            	   userNoArr = adminService.selectUserNoByCheeringClass(refinedCheeringClassList.get(j).getClsNo());
	            	   String userNoString = "";
	            	   for(int k = 0; k < userNoArr.size(); k++) {
	            		   if(k < userNoArr.size()- 1) {
	            			   userNoString += userNoArr.get(k) + "&";
	            		   } else if(k == userNoArr.size() - 1){
	            			   userNoString += userNoArr.get(k);
	            		   }
	            	   }
	            	   cheeringClassList.get(i).setCheeringUserNo(userNoString);
	               }
	            } 
	         }
	         model.addAttribute("classList", refinedCheeringClassList);
	         model.addAttribute("t", "p");
	      }
	      // 응원수가 미달인 2차심사 대기중 인 클래스
	      if(result.equals("l")) {
	         for(int i = 0; i < cheeringClassList.size(); i++ ) {
	            if((cheeringClassList.get(i).getFirstDecision().getTime() + 604800000) > today && cheeringClassList.get(i).getCheeringCnt() < 5) {
	               refinedCheeringClassList.add(cheeringClassList.get(i));
	            } 
	            model.addAttribute("classList", refinedCheeringClassList);
	            model.addAttribute("t", "l");
	         }
	      }
	      return "admin/testClassList";
	   }
	
	@PostMapping("acceptSecondDecision")
	public String acceptSecondDecision(@RequestParam("cheeringInfo")String cheeringInfo,@RequestParam("submit")int num,  Model model) {
		String[] cheeringInfoArr = cheeringInfo.split(",");
		// 승인을 눌렀을시
		if(num == 1) {
			for(int i = 0; i < cheeringInfoArr.length; i++) {
				String[] getClsNo = cheeringInfoArr[i].split("/");			
				adminService.updateClsSecondDecision(Integer.parseInt(getClsNo[0])); 
				adminService.updateClsSecondDecisionHistory(Integer.parseInt(getClsNo[0])); 
				UserClassDTO classDetail = new UserClassDTO();
				String[] getUserNo = getClsNo[1].split("&");
				for(int j = 0; j < getUserNo.length; j++) {
					classDetail = classService.selectClassDtail(Integer.parseInt(getClsNo[0]));
					classDetail.setPrice((int)(classDetail.getPrice() * 0.05));
					classDetail.setUserNo(Integer.parseInt(getUserNo[j]));
					adminService.insertCheeringCoupon(classDetail);
				}
			}
		// 거절을 눌렀을시
		} else {
			for(int i = 0; i < cheeringInfoArr.length; i++) {
				String[] getClsNo = cheeringInfoArr[i].split("/");
				adminService.updateClsSecondDecisionReject(Integer.parseInt(getClsNo[0]));
				adminService.updateClsSecondDecisionHistoryRedject(Integer.parseInt(getClsNo[0]));
			}
		}
		return "redirect:seconddecision?pc=t";
	}
}









































