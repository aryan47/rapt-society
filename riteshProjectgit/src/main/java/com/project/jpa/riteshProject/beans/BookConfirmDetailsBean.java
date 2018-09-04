package com.project.jpa.riteshProject.beans;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BookConfirmDetailsBean {
	
	public String std;
	public List<String> sub;
	
	public String landmark;
	@DateTimeFormat(pattern="dd-mm-yy")
	public Date date;
	
	
	

}
