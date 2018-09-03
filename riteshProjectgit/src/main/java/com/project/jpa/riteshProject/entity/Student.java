package com.project.jpa.riteshProject.entity;

import java.time.LocalDateTime;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Embedded;
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

import org.springframework.format.annotation.DateTimeFormat;

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

	private String firstName;

	private String lastName;
	@Email
	@Column(unique = true, nullable = false)
	private String email;

	private String sex;

	private String password;

	@ManyToMany()
	private Set<Instructor> instructors;

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "user_role", joinColumns = @JoinColumn(name = "userId"), inverseJoinColumns = @JoinColumn(name = "roleId"))
	private Set<Role> roles;
	private String phoneNo;
	@Embedded
	private Address addressEmbedd;
	@Embedded
	private StudentQualification Studentqualification;
	@DateTimeFormat(pattern = "dd-mm-yy")
	private LocalDateTime scheduledDemo;

}
