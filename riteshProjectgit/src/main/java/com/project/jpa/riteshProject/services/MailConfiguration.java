package com.project.jpa.riteshProject.services;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.project.jpa.riteshProject.beans.BookConfirmDetails;
import com.project.jpa.riteshProject.beans.ContactUsDetails;

@Service("mailConfiguration")
public class MailConfiguration {

	@Autowired
	JavaMailSender javaMailSender;
	Logger logger = LoggerFactory.getLogger(this.getClass());

	public void sendContactUsMail(ContactUsDetails comment) {

		SimpleMailMessage mail = new SimpleMailMessage();

		mail.setTo(comment.getEmail());
		mail.setSubject("Contact Me");
		mail.setText("name:-" + comment.getName() + " phone no:- " + comment.getPhone() + " message:-"
				+ comment.getMessage());

		logger.info("Sending....");
		javaMailSender.send(mail);
		logger.info("done");
	}

	public void sendBookConfirmationMail(String email, String name, BookConfirmDetails bookData) {
		SimpleMailMessage mail = new SimpleMailMessage();
		mail.setTo(email);
		mail.setSubject("Demo Confirmation");
		logger.info("Sending....");
		mail.setText("Hello, " + name + "\nYour Demo is scheduled on " + bookData.getDate() + " for the subject "
				+ bookData.getSub() + " " + bookData.getStd() + " to your location.\n" + bookData.getAddress() + "\n"
				+ bookData.getLandmark());
		javaMailSender.send(mail);
		logger.info("done.");
	}
}
