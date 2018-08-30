package com.project.jpa.riteshProject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.project.jpa.riteshProject.JpaRepository.StudentJpaRepository;
import com.project.jpa.riteshProject.entity.Student;

@RestController
public class RoleController {
	@Autowired
	private StudentJpaRepository studentRepository;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	

	@PostMapping("/add")
	public String addByAdmin(@RequestBody Student student) {
		
		String password = student.getPassword();
		String encodePwd = passwordEncoder.encode(password);
		student.setPassword(encodePwd);
		studentRepository.save(student);
		return "user added....";
	}
}
