package com.project.jpa.riteshProject.Configuration;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

import com.project.jpa.riteshProject.beans.CommentDetail;

@Component("mailConfiguration")
public class MailConfiguration {

	@Autowired
	JavaMailSender javaMailSender;
	Logger logger = LoggerFactory.getLogger(this.getClass());
	public void sendMail(CommentDetail comment) {
		
		SimpleMailMessage mail = new SimpleMailMessage();
		
		mail.setTo(comment.getEmail());
		mail.setSubject("Contact Me");
		mail.setText("name:-"+comment.getName()+" phone no:- "+comment.getPhone()+" message:-"+comment.getMessage());
		
		logger.info("Sending....");
		javaMailSender.send(mail);
		logger.info("done");
	}
}
