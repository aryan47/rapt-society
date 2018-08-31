package com.project.jpa.riteshProject.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class Student {
	@Id
	@GeneratedValue
	private Long id;
	@NotNull
	private String name;
	
	@Email
	@Column(unique=true,nullable=false)
	private String email;
	@NotNull
	private String password;

	@ManyToMany()	
	private Set<Instructor> instructors;
	
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	@JoinTable(name="user_role", joinColumns=@JoinColumn(name="userId"), inverseJoinColumns=@JoinColumn(name="roleId"))
	private Set<Role> roles;
	// private int phoneNo;
	// private int altPhoneNo;
	

	// private String address;
	// private String idProof;
	// private String rating;
	// private Set<String> subject = new ArraySet();
	// private int experience;
	// private String about;
	// private String qualification;
	// private int numberOfStudentTaught;
	// private Set<String> locationPreference;
	// private int currentClassHolding;
	// private boolean premiumInstructor;
	// private LocalDateTime scheduledDemo;
	// private LocalDateTime scheduledTime;


	
}
