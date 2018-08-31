package com.project.jpa.riteshProject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.project.jpa.riteshProject.beans.BookConfirmDetails;
import com.project.jpa.riteshProject.services.MailConfiguration;

@Controller
@SessionAttributes({"userEmail","userName"})
public class BookScheduleController {
	@Autowired
	MailConfiguration mail;
	String username="error";
	@RequestMapping("/formData")
	public String getForm(BookConfirmDetails bookData, ModelMap model) {
		String email = (String)model.get("userEmail");
		String name= (String)model.get("userName");
		System.out.println("-----ritu "+email+" and name "+name);
		mail.sendBookConfirmationMail(email,name,bookData);
		model.addAttribute("userName",email);
		model.addAttribute("location", bookData.location);
		model.addAttribute("date", bookData.date);
		model.addAttribute("sub",bookData.sub);
		return "displayMessage";
		
	}
	

}
