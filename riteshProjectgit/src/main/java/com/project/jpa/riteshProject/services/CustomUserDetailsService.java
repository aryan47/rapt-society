package com.project.jpa.riteshProject.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.project.jpa.riteshProject.JpaRepository.StudentJpaRepository;
import com.project.jpa.riteshProject.entity.Student;

@Service

public class CustomUserDetailsService implements UserDetailsService {
	@Autowired
	private StudentJpaRepository studentRepository;
private String name;
private String email;
	@SuppressWarnings("unused")
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// configure userName field in student entity because findByName may return list
		// of students
		Student user = studentRepository.findByEmail(username);
		name = user.getName();
		email = user.getEmail();
		CustomUserDetails userDetail;
		if (user != null) {
			userDetail = new CustomUserDetails();
			userDetail.setUser(user);
		} else {
			throw new UsernameNotFoundException("user name not found");
		}
		return userDetail;

	}
	public String getUserName() {
		return name;
	}
	public String getEmail() {
		return email;
	}
}
