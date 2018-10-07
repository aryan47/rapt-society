package com.project.jpa.riteshProject.services;

import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.thymeleaf.context.Context;
import org.thymeleaf.spring5.SpringTemplateEngine;

import com.project.jpa.riteshProject.Configuration.BasicConfiguration;
import com.project.jpa.riteshProject.beans.Address;
import com.project.jpa.riteshProject.beans.ContactUsDetails;

@Service("mailConfiguration")
public class MailConfiguration {

	@Autowired
	private JavaMailSender javaMailSender;
	@Autowired
	private BasicConfiguration basic;
	@Autowired
    private SpringTemplateEngine templateEngine;

	Logger logger = LoggerFactory.getLogger(this.getClass());

	public void sendContactUsMail(ContactUsDetails comment) {

		SimpleMailMessage mail = new SimpleMailMessage();

		
		mail.setTo(basic.getAdminMail());
		mail.setSubject("Contact Me");
		mail.setText("name:-" + comment.getName() + " phone no:- " + comment.getPhone() + " message:-"
				+ comment.getMessage()+" Email:-"+comment.getEmail());

		logger.info("Sending....");
		javaMailSender.send(mail);
		logger.info("done");
	}

	public void sendBookConfirmationMail(String email, String name, List<String> userList, Address address) {
		final String text = "Hello, " + name + "\n your booking for Demo is confirmed. Subject selected: " + userList
				+ " and selected Location " + address + " For any modification login to your account.";
		SimpleMailMessage mail = new SimpleMailMessage();
		mail.setTo(email);
		mail.setSubject("Demo Confirmation");
		logger.info("Sending....email " + email);
		mail.setText(text);
		javaMailSender.send(mail);
		logger.info("done.");
	}

	public void sendForgotPasswordMail(String email, String name, String token, HttpServletRequest request)
			throws MessagingException {
		MimeMessage message = javaMailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message, true);
		helper.setTo(email);
		helper.setSubject("Password Reset:");
		String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
		String resetUrl = url + "/changePassword?token=" + token;
		String htmlContent = "<p>Click this link to reset your password </p><a href='"+resetUrl+"'>click here</a>";
//		helper.setText(htmlContent, true);
		
		Context context = new Context();       
		context.setVariable("address", "Morabadi t.o.p");
		context.setVariable("resetUrl", resetUrl);
		context.setVariable("name", name);
        String html = templateEngine.process("resetPassword.html", context);
        helper.setText(html,true);
		
//		FileSystemResource file = new FileSystemResource("src/main/resources/static/images/profile.png");
//		helper.addAttachment(file.getFilename(), file);
		logger.info("---sending reset link.......");
		javaMailSender.send(message);
		logger.info("---sent.......");
	}
	public void sendAccountCreatedMail(String email, HttpServletRequest request)
			throws MessagingException {
		MimeMessage message = javaMailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message, true);
		helper.setTo(email);
		helper.setSubject("Account Created :");
		String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();		
		
		Context context = new Context();       
		context.setVariable("url", url);
        String html = templateEngine.process("accountCreated.html", context);
        helper.setText(html,true);
		
//		FileSystemResource file = new FileSystemResource("src/main/resources/static/images/profile.png");
//		helper.addAttachment(file.getFilename(), file);
		logger.info("---sending account created mail.......");
		javaMailSender.send(message);
		logger.info("---sent.......");
	}
}
