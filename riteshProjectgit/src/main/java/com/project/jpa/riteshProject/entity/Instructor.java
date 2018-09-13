package com.project.jpa.riteshProject.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class Instructor {
	@Id
	@GeneratedValue
	private Long id;
	@NotNull
	private String firstName;
	@NotNull
	private String lastName;
	@Email
	private String email;
	private String password;
	@ManyToMany(cascade= {CascadeType.PERSIST, CascadeType.MERGE},fetch = FetchType.LAZY)
	@JsonIgnore
	@JoinTable(name = "Instructor_Subject", joinColumns = @JoinColumn(name = "instructor_id"), inverseJoinColumns = @JoinColumn(name = "subject_id"))
	private List<Subject> subjects = new ArrayList<Subject>();
	
	@ManyToMany(fetch = FetchType.LAZY)	
	@JsonIgnore
	@JoinTable(name = "Instructor_Student", joinColumns = @JoinColumn(name = "instructor_id"), inverseJoinColumns = @JoinColumn(name = "student_id"))
	private List<Student> students = new ArrayList<Student>();
	
	@ManyToMany(cascade= {CascadeType.PERSIST, CascadeType.MERGE},fetch = FetchType.LAZY)
	@JsonIgnore
	@JoinTable(name = "Instructor_LOCATION", joinColumns = @JoinColumn(name = "instructor_id"), inverseJoinColumns = @JoinColumn(name = "location_id"))
	private List<Location> locations = new ArrayList<Location>();

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
	
}
