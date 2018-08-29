package com.project.jpa.riteshProject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.jpa.riteshProject.Configuration.MailConfiguration;
import com.project.jpa.riteshProject.beans.CommentDetail;

@Controller
public class ContactUs {
	@Autowired
	private MailConfiguration mail;
	@GetMapping("/contactUs")
	public ResponseEntity<?> contactUs(CommentDetail comment) {
		
		mail.sendMail(comment);
		 return new ResponseEntity<Void>(HttpStatus.OK);
	}
}
