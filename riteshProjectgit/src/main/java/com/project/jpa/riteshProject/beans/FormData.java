package com.project.jpa.riteshProject.beans;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;


public class FormData {
	public String location;
	public String std;
	public List<String> sub;
	public String address;
	public String landmark;
	@DateTimeFormat(pattern="dd-mm-yy")
	public Date date;
	public FormData() {
		// TODO Auto-generated constructor stub
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getStd() {
		return std;
	}
	public void setStd(String std) {
		this.std = std;
	}
	public List<String> getSub() {
		return sub;
	}
	public void setSub(List<String> sub) {
		this.sub = sub;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getLandmark() {
		return landmark;
	}
	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	

}
