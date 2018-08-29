package com.project.jpa.riteshProject.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Student {
	@Id
	@GeneratedValue
	private Long id;
	@NotNull
	private String name;
	@Email
	private String email;
	private String password;

	@ManyToMany(mappedBy="students")
	@JsonIgnore
	private List<Instructor> instructors = new ArrayList<Instructor>();
	// private int phoneNo;
	// private int altPhoneNo;

	// private String address;
	// private String idProof;
	// private String rating;
	// private List<String> subject = new ArrayList();
	// private int experience;
	// private String about;
	// private String qualification;
	// private int numberOfStudentTaught;
	// private List<String> locationPreference;
	// private int currentClassHolding;
	// private boolean premiumInstructor;
	// private LocalDateTime scheduledDemo;
	// private LocalDateTime scheduledTime;
	public Student() {

	}

	public Student(Long id, String name, String email, String password) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}



	public List<Instructor> getInstructors() {
		return instructors;
	}

	public void setInstructors(List<Instructor> instructors) {
		this.instructors = instructors;
	}

	@Override
	public String toString() {
		return "Instructor [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + "]";
	}

}
