package com.project.jpa.riteshProject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TermsPrivacyController {
	@GetMapping("/terms")
	public String terms() {		
		 return "termsAndCondition";
	}
	@GetMapping("/privacy")
	public String privacy() {		
		 return "privacy";
	}
}
