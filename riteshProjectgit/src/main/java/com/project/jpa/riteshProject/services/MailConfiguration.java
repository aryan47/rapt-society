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

import com.project.jpa.riteshProject.beans.Address;
import com.project.jpa.riteshProject.beans.ContactUsDetails;

@Service("mailConfiguration")
public class MailConfiguration {

	@Autowired
	private JavaMailSender javaMailSender;

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

	public void sendBookConfirmationMail(String email, String name, List<String> userList, Address address) {
		final String text = "Hello, " + name + " your booking for Demo is confirmed. Subject selected: " + userList
				+ " and selected Location " + address + " For any modification <a>click here</a>";
		SimpleMailMessage mail = new SimpleMailMessage();
		mail.setTo(email);
		mail.setSubject("Demo Confirmation");
		logger.info("Sending....email " + email);
		mail.setText(text);
		javaMailSender.send(mail);
		logger.info("done.");
	}

	public void sendForgotPasswordMail(String email, String token, HttpServletRequest request)
			throws MessagingException {
		MimeMessage message = javaMailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message, true);
		helper.setTo(email);
		helper.setSubject("Password Reset:");
		String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
		String resetUrl = url + "/changePassword?token=" + token;
		String htmlContent = "<p>Click this link to reset your password </p><a href='"+resetUrl+"'>click here</a>";
		helper.setText(htmlContent, true);
		logger.info("---sending reset link.......");
		javaMailSender.send(message);
		logger.info("---sent.......");
	}
}
