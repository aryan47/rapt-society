package com.project.jpa.riteshProject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.project.jpa.riteshProject.JpaRepository.BookConfirmDetailsJpaRepository;
import com.project.jpa.riteshProject.beans.Address;
import com.project.jpa.riteshProject.beans.UserRequestSubject;
import com.project.jpa.riteshProject.entity.BookConfirmDetails;
import com.project.jpa.riteshProject.services.MailConfiguration;

@Controller
@SessionAttributes({"userEmail","userName"})
public class BookScheduleController {
	@Autowired
	private BookConfirmDetailsJpaRepository bookRepository;
	@Autowired
	private MailConfiguration mail;
	
	
	@RequestMapping("/formData")
	public String getForm(BookConfirmDetails bookData,@RequestParam("std") String std ,@RequestParam("sub") List<String> userSubject, Address address, ModelMap model) {
		
		//getting data from session
		String email = (String)model.get("userEmail");
		String name= (String)model.get("userName");
		//set all data to bookConfirmDetails table		
		for(String subject : userSubject) {
			bookData.setUserRequestSubject(new UserRequestSubject(name,subject,std));
			bookData.setEmail(email);
			bookData.setAddressEmbd(address);
			//save the data to the database
			bookRepository.save(bookData);
		}	
		
		mail.sendBookConfirmationMail(email,name,userSubject,address);
		model.addAttribute("userName",email);
		model.addAttribute("location", address);
		model.addAttribute("date", bookData.getDate());
		return "displayMessage";
		
	}
	

}
