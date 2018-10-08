package com.project.jpa.riteshProject.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;

import org.springframework.format.annotation.DateTimeFormat;

import com.project.jpa.riteshProject.beans.Address;
import com.project.jpa.riteshProject.beans.UserRequestSubject;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BookConfirmDetails {
	@EmbeddedId
	private UserRequestSubject userRequestSubject;

	
	@Embedded
	private Address addressEmbd;
	@DateTimeFormat(pattern="dd-mm-yy")
	@Column(nullable = false)
	private Date date;
	@Column(nullable = false)
	private String name;
	@Column(nullable = false)
	private String email;
	@Column(nullable = false)
	private String phoneNo;
	private boolean isActive = true;
	private String status="active";

}
