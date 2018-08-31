package com.project.jpa.riteshProject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.jpa.riteshProject.Configuration.BasicConfiguration;

@Controller
public class IndexController {
	@Autowired
	BasicConfiguration basic;
	
	@GetMapping("/")
	public String index() {
		return "index";
	}
	@GetMapping("/login")
	public String signIn() {
		return "signIn";
	}
	@GetMapping("/search")
	public String search() {
		return "search";
	}
	@GetMapping("/showCourses")
	public String showCourses() {
		return "showCourses";
	}
	@GetMapping("/bookSchedule")
	public String bookSchedule(ModelMap map) {
		map.addAttribute("url", basic.getUrl());
		return "bookSchedule";
	}

}
