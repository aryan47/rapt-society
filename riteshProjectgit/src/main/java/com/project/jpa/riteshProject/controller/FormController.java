package com.project.jpa.riteshProject.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.project.jpa.riteshProject.beans.FormData;

@Controller
@SessionAttributes({"userEmail","userName"})
public class FormController {

	String username="error";
	@RequestMapping("/formData")
	public String getForm(FormData formData, ModelMap model) {
		String email = (String)model.get("userEmail");
		System.out.println("------subu"+email);
		model.addAttribute("userName",email);
		model.addAttribute("location", formData.location);
		model.addAttribute("date", formData.date);
		model.addAttribute("sub",formData.sub);
		return "displayMessage";
		
	}
	

}
