package com.project.jpa.riteshProject.controller;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.jpa.riteshProject.JpaRepository.StudentJpaRepository;
import com.project.jpa.riteshProject.services.MailConfiguration;
import com.project.jpa.riteshProject.services.UserService;

@Controller
public class UserPasswordResetController {

	@Autowired
	private StudentJpaRepository studentRepository;
	@Autowired
	private MailConfiguration mail;
	@Autowired
	private UserService userService;
	String token;
	@GetMapping("/forgotPassword")
	public String forgotPassword() {
		return "forgotPassword";
	}
	@GetMapping("/changePassword")
	public String changePassword(@RequestParam String token, RedirectAttributes redirect) {
		redirect.addFlashAttribute("resetToken", token);
		this.token=token;
		return "changePassword";
	}
	@PostMapping("/changePassword")
	public String changePasswordDB(@RequestParam("password") String password) {
		userService.changePassword(password,token);
		return "redirect:/";
	}

	@RequestMapping("/resetPassword")
	public String resetPassword(@RequestParam String email,HttpServletRequest request,ModelMap map) throws MessagingException{
			return "redirect:/"+userService.processForgotPassword(email,request);
	}
			
}
