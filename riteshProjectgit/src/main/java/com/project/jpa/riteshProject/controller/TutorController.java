package com.project.jpa.riteshProject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TutorController {

	@GetMapping("/tutor")
	public String tutor(ModelMap model) {
		System.out.println("inside tutor");
		return "bookSchedule";
	}

	

}
