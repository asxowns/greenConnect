package com.green.connect.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.green.connect.dao.IUserDao;

@Controller
public class loginController {
	@Autowired
	IUserDao userDao;
	
	@RequestMapping("/loginForm")
	public String loginForm() {
		
		return "loginForm";
	}
	
	@RequestMapping("/loginDo")
	public String loginDo(@RequestParam("username") String username, @RequestParam("password") String password) {
		
		return "redirect:main";
	}
}
