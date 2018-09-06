package com.project.jpa.riteshProject.entity;

import java.util.Calendar;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
public class StudentPasswordResetToken {
	@Id
	@GeneratedValue
	private int id;
	@Column(nullable = false, unique=true)
	private String token;
	@OneToOne
	private Student student;
	private Date expiryDate;
	
	public void setExpiryDate(int minute) {
		Calendar now = Calendar.getInstance();
		now.add(Calendar.MINUTE, minute);
		this.expiryDate = now.getTime();
	}
	public boolean isExpired() {
		return new Date().after(this.expiryDate);
	}
}
