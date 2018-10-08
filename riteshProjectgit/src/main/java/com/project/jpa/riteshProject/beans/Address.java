package com.project.jpa.riteshProject.beans;

import javax.persistence.Embeddable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Embeddable
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Address {
	
	private String state;
	
	private String city;
	
	private String pin;
	
	private String address;
	private String landmark;

}
