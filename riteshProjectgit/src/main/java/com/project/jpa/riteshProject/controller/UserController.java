package com.project.jpa.riteshProject.controller;

import java.util.Arrays;
import java.util.HashSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.project.jpa.riteshProject.JpaRepository.StudentJpaRepository;
import com.project.jpa.riteshProject.beans.Address;
import com.project.jpa.riteshProject.entity.Role;
import com.project.jpa.riteshProject.entity.Student;

@Controller
public class UserController {
	@Autowired
	private StudentJpaRepository studentRepository;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	@PostMapping("/createUser")
	public String addByAdmin(Student student) {
		
		student.setRoles(new HashSet<Role>(Arrays.asList(new Role("USER"), new Role("ADMIN"))));
		String password = student.getPassword();
		String encodePwd = passwordEncoder.encode(password);
		student.setPassword(encodePwd);
		studentRepository.save(student);

		return "redirect:/login?userAdded=true";
	}
}
