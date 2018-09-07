package com.project.jpa.riteshProject.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class Standard {
	@Id
	@GeneratedValue
	private Long id;
	@Column(nullable=false, unique=true)
	private String name;
	
	@ManyToMany(fetch = FetchType.LAZY)
	@JsonIgnore
	@JoinTable(name="Standard_Subject", joinColumns= @JoinColumn(name="standard_id"), inverseJoinColumns=@JoinColumn(name="subject_id"))
	private List<Subject> subjects = new ArrayList<Subject>();



}
