package com.project.jpa.riteshProject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.jpa.riteshProject.Configuration.BasicConfiguration;

@Controller
public class IndexController {
	@Autowired
	BasicConfiguration basic;
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	@RequestMapping("/login")
	public String signIn() {
		return "signIn";
	}
	@RequestMapping("/search")
	public String search() {
		return "search";
	}
	@RequestMapping("/showCourses")
	public String showCourses() {
		return "showCourses";
	}
	@RequestMapping("/bookSchedule")
	public String bookSchedule(ModelMap map) {
		map.addAttribute("url", basic.getUrl());
		return "bookSchedule";
	}
	
}
