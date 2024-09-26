package com.green.connect.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/my")
public class MyPageController {
	
	@RequestMapping("/myPageMain")
	public String myPageMain() {
		
		return "mypage/myPageMain";
	}

}
