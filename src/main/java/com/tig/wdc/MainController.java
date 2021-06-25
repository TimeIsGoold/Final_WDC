package com.tig.wdc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/*")
public class MainController {

	private final TestService testService;

	@Autowired
	public MainController(TestService testService) {
		this.testService = testService;
	}

	@GetMapping(value= {"/"})
	public String main() {
		int a = testService.selectTest();
		System.out.println("되는지 테스트 : " + a);
		return "user/main/main";
	}
}
