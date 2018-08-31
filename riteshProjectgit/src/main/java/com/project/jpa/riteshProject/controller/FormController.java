package com.project.jpa.riteshProject.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.jpa.riteshProject.beans.FormData;

@Controller
public class FormController {

	String username="error";
	@RequestMapping("/formData")
	public String getForm(FormData formData, ModelMap model) {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if(principal instanceof UserDetails) {
			username = ((UserDetails) principal).getUsername();
			
		}
		model.addAttribute("userName",username);
		model.addAttribute("location", formData.location);
		model.addAttribute("date", formData.date);
		model.addAttribute("sub",formData.sub);
		return "displayMessage";
		
	}
	

}
