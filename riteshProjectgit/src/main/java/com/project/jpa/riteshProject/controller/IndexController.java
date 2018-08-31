package com.project.jpa.riteshProject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.project.jpa.riteshProject.Configuration.BasicConfiguration;
import com.project.jpa.riteshProject.JpaRepository.StudentJpaRepository;
import com.project.jpa.riteshProject.entity.Student;

@Controller
@SessionAttributes({ "userName", "userEmail" })
public class IndexController {
	@Autowired
	private BasicConfiguration basic;

	@Autowired
	private StudentJpaRepository studentRepository;

	@GetMapping("/")
	public String index(ModelMap model) {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails) {
			String email = ((UserDetails) principal).getUsername();
			model.addAttribute("userEmail", email);

			Student student = studentRepository.findByEmail(email);
			model.addAttribute("userName", student.getName());
			System.out.println("---ravi" + student.getName());
		}
		
		return "index";
	}
	@PostMapping("/")
	public String post() {
		return "redirect:/";
	}
	

	@GetMapping("/login")
	public String signIn(ModelMap model) {

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
