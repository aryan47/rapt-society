package com.project.jpa.riteshProject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.jpa.riteshProject.beans.FormData;

@Controller
public class FormController {

	
	@RequestMapping("/formData")
	public String getForm(FormData formData, ModelMap model) {
		
		model.addAttribute("userName","ritesh");
		model.addAttribute("location", formData.location);
		model.addAttribute("date", formData.date);
		model.addAttribute("sub",formData.sub);
		return "displayMessage";
		
	}
	

}
