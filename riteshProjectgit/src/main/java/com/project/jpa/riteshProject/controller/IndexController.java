package com.project.jpa.riteshProject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
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
			Student student = studentRepository.findByEmail(email);
			model.addAttribute("userEmail", email);
			model.addAttribute("userName", student.getFirstName());
			System.out.println("setting session " + model.get("userEmail") + " " + model.get("userName"));

		}
		return "index";
	}

	@PostMapping("/")
	public String post() {
		return "redirect:/";
	}

	@GetMapping("/login")
	public String signIn() {

		return "signIn";
	}

	@PreAuthorize("hasRole('ROLE_USER') or hasRole('ROLE_ADMIN')")
	@GetMapping("/bookSchedule")
	public String bookSchedule(ModelMap map) {

		map.addAttribute("url", basic.getUrl());
		return "bookSchedule";
	}

	

}
