package com.project.jpa.riteshProject.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Location {
	@Id
	@GeneratedValue
	private Long id;
	private String name;
	private String city;
	@ManyToMany(mappedBy="locations")
	@JsonIgnore
	private List<Instructor> instructors = new ArrayList<Instructor>();
	public Location() {
		// TODO Auto-generated constructor stub
	}
	public Location(Long id, String name, String city) {
		super();
		this.id = id;
		this.name = name;
		this.city = city;
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
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}

	public List<Instructor> getInstructor() {
		return instructors;
	}
	public void setInstructor(List<Instructor> instructor) {
		this.instructors = instructor;
	}
	@Override
	public String toString() {
		return "Location [id=" + id + ", name=" + name + ", city=" + city + "]";
	}
	
	
}
