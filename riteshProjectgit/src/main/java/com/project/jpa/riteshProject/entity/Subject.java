package com.project.jpa.riteshProject.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Subject {
	@Id
	@GeneratedValue
	private Long id;
	@NotNull
	private String name;
	@ManyToMany(mappedBy="subjects")
	@JsonIgnore
	private List<Standard> standards= new ArrayList<Standard>();
	@ManyToMany(mappedBy="subjects")
	@JsonIgnore
	private List<Instructor> instructors = new ArrayList<Instructor>();

	public Subject() {
		
	}
	public Subject(Long id, @NotNull String name) {
		super();
		this.id = id;
		this.name = name;
		
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

	public List<Instructor> getInstructors() {
		return instructors;
	}
	public void setInstructors(List<Instructor> instructors) {
		this.instructors = instructors;
	}
	public List<Standard> getStandards() {
		return standards;
	}
	public void setStandards(List<Standard> standards) {
		this.standards = standards;
	}
	@Override
	public String toString() {
		return "Subject [id=" + id + ", name=" + name +"]";
	}
	

}
