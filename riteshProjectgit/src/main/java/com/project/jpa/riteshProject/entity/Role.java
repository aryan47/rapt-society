package com.project.jpa.riteshProject.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor

public class Role {
	@Id
	@GeneratedValue
	private int roleId;
	private String role;
	public Role(String role) {
		super();
		this.role = role;
	}

}
