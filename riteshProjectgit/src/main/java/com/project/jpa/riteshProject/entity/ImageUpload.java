package com.project.jpa.riteshProject.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor

public class ImageUpload {
	@Id
	@GeneratedValue
	private Long id;
	private String fileName;
	private String fileType;
	private String email;
	@Lob
	private byte[] data;
	public ImageUpload(String fileName, String fileType, byte[] data) {
		super();
		this.fileName = fileName;
		this.fileType = fileType;
		this.data = data;
	}
	
}
