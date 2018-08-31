package com.project.jpa.riteshProject.beans;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@Getter
@Setter
@NoArgsConstructor
public class BookConfirmDetails {
	public String location;
	public String std;
	public List<String> sub;
	public String address;
	public String landmark;
	@DateTimeFormat(pattern="dd-mm-yy")
	public Date date;
	
	

}
