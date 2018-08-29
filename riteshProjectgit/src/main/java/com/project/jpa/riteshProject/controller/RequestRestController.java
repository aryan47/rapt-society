package com.project.jpa.riteshProject.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.project.jpa.riteshProject.entity.Subject;
import com.project.jpa.riteshProject.repository.SubjectRepository;

@RestController
public class RequestRestController {
	@Autowired
	SubjectRepository subjectRepository;
	Logger logger=LoggerFactory.getLogger(this.getClass());
	
	@GetMapping("/courses")
	public List<Subject> retrieveAllSubjects(){
		
		return subjectRepository.findAllSubjects();		
		
	}
	
	@GetMapping("/courses/{courseName}")
	public List<Subject> retrieveSubjects(@PathVariable("courseName") String name){
		
		return subjectRepository.findAllSubjectsByName(name);
		
	}
	
	
	


}
