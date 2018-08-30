package com.project.jpa.riteshProject.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class Subject {
	@Id
	@GeneratedValue
	private Long id;
	@NotNull
	private String name;
	@ManyToMany(cascade= {CascadeType.PERSIST, CascadeType.MERGE})
	@JsonIgnore
	private List<Standard> standards= new ArrayList<Standard>();
	@ManyToMany(mappedBy="subjects")
	@JsonIgnore
	private List<Instructor> instructors = new ArrayList<Instructor>();

}
