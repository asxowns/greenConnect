package com.green.connect.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.green.connect.dao.IUserDao;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class loginController {
	@Autowired
	IUserDao userDao;
	
	@RequestMapping("/loginForm")
	public String loginForm() {
		
		return "loginForm";
	}
	
	
	@RequestMapping("/logout")
	public String logout() {
		return "/";
	}
}
