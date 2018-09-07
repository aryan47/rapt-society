package com.project.jpa.riteshProject.beans;

import java.io.Serializable;

import javax.persistence.Embeddable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Embeddable
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserRequestSubject implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String altEmail;
	private String subject;
	private String std;
}
