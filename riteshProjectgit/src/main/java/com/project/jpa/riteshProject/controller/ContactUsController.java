package com.project.jpa.riteshProject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.jpa.riteshProject.beans.ContactUsDetails;
import com.project.jpa.riteshProject.services.MailConfiguration;

@Controller
public class ContactUsController {
	@Autowired
	private MailConfiguration mail;
	@GetMapping("/contactUs")
	public ResponseEntity<Void> contactUs(ContactUsDetails comment) {
		
		mail.sendContactUsMail(comment);
		 return new ResponseEntity<Void>(HttpStatus.OK);
	}
}
