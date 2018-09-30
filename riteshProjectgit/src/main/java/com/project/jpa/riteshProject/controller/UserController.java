package com.project.jpa.riteshProject.controller;

import java.util.Arrays;
import java.util.HashSet;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.jpa.riteshProject.JpaRepository.StudentJpaRepository;
import com.project.jpa.riteshProject.entity.Role;
import com.project.jpa.riteshProject.entity.Student;
import com.project.jpa.riteshProject.services.MailConfiguration;

@Controller
public class UserController {
	@Autowired
	private StudentJpaRepository studentRepository;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	@Autowired
	private MailConfiguration mail;

	@PostMapping("/createUser")
	public String addByAdmin(Student student, HttpServletRequest request) throws MessagingException {
		if( studentRepository.findByEmail(student.getEmail()) != null) {
			return "redirect:/login";
		}
		student.setRoles(new HashSet<Role>(Arrays.asList(new Role("USER"), new Role("ADMIN"))));
		String password = student.getPassword();
		String encodePwd = passwordEncoder.encode(password);
		student.setPassword(encodePwd);
		Student save = studentRepository.save(student);
		if (save != null) {
			mail.sendAccountCreatedMail(save.getEmail(), request);
			return "redirect:/login?userAdded=true";
		}
		return "redirect:/login?userAdded=false";

	}
	@PostMapping("/login/checkEmail")
	@ResponseBody
	public String emailExist(@RequestParam String email) {
		System.out.println("------got email: "+email);
		if( studentRepository.findByEmail(email)!= null ){
			return "exist";
		}
		return "notExist";
	}

}
