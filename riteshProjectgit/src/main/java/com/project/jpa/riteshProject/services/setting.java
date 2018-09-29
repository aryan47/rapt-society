package com.project.jpa.riteshProject.services;

import java.util.UUID;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.project.jpa.riteshProject.JpaRepository.StudentJpaRepository;
import com.project.jpa.riteshProject.JpaRepository.StudentPasswordResetTokenJpaRepository;
import com.project.jpa.riteshProject.entity.Student;
import com.project.jpa.riteshProject.entity.StudentPasswordResetToken;

@Service
public class setting {
	@Autowired
	private StudentJpaRepository studentRepository;
	@Autowired
	private StudentPasswordResetTokenJpaRepository tokenRepository;
	@Autowired
	private MailConfiguration mail;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	Student student;

	public boolean checkEmailExist(String email) {
		student = studentRepository.findByEmail(email);

		if (student == null) {
			return false;
		}
		return true;
	}

	public String processForgotPassword(String email, HttpServletRequest request) throws MessagingException {
		String token = UUID.randomUUID().toString();
		StudentPasswordResetToken studentToken = new StudentPasswordResetToken();
		if (!checkEmailExist(email)) {
			return "login?resetError=true";
		}
		studentToken.setToken(token);
		studentToken.setExpiryDate(30);
		studentToken.setStudent(student);
		tokenRepository.save(studentToken);
		mail.sendForgotPasswordMail(email,student.getFirstName(), token, request);
		return "login?resetSuccess=true";

	}

	@Transactional
	public void changePassword(String password, String token) {

		StudentPasswordResetToken userToken = tokenRepository.findByToken(token);
		if (!userToken.isExpired()) {
			Student tokenStudent = userToken.getStudent();
			String encode = passwordEncoder.encode(password);
			tokenStudent.setPassword(encode);
			tokenRepository.delete(userToken);
		}

	}
}
