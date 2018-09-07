package com.project.jpa.riteshProject.services;

import java.util.List;
import java.util.UUID;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.project.jpa.riteshProject.JpaRepository.BookConfirmDetailsJpaRepository;
import com.project.jpa.riteshProject.JpaRepository.StudentJpaRepository;
import com.project.jpa.riteshProject.JpaRepository.StudentPasswordResetTokenJpaRepository;
import com.project.jpa.riteshProject.entity.BookConfirmDetails;
import com.project.jpa.riteshProject.entity.Student;
import com.project.jpa.riteshProject.entity.StudentPasswordResetToken;

@Service
public class UserService {
	@Autowired
	private StudentJpaRepository studentRepository;
	@Autowired
	private StudentPasswordResetTokenJpaRepository tokenRepository;
	@Autowired
	private MailConfiguration mail;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	Student student;
	@Autowired 
	private BookConfirmDetailsJpaRepository bookDetail;
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
		mail.sendForgotPasswordMail(email, token, request);
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

	public String changeUserPassword(String password, String newPassword,String email) {
		Student student = studentRepository.findByEmail(email);
		
		BCryptPasswordEncoder encoder= new BCryptPasswordEncoder();
		if(encoder.matches(password, student.getPassword())) {
			String encodedPassword = encoder.encode(newPassword);
			student.setPassword(encodedPassword);
			studentRepository.save(student);
			System.out.println("--password successfully changed");
			return "redirect:/userProfile/setting?success=true";
		}
		else {
			System.out.println("--error changing password");
			return "redirect:/userProfile/setting?error=true";
		}
	}

	public List<BookConfirmDetails> getBookDetails(String email){
		List<BookConfirmDetails> bookList = bookDetail.findByEmail(email);
		System.out.println("-----book"+bookList.size());
		return bookList;
	}
}
