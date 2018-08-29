package com.project.jpa.riteshProject.repository;

import java.util.List;

import javax.persistence.EntityManager;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.project.jpa.riteshProject.JpaRepository.StudentJpaRepository;
import com.project.jpa.riteshProject.entity.Subject;

@Repository
@Transactional
public class StudentRepository {
	Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired
	StudentJpaRepository JpaRepository;
	@Autowired
	EntityManager em;

	public List<Subject> searchAllSubjects(String name) {
		return JpaRepository.findByNameContaining(name);		
		
	}
	public void searchAllSubjectsFilterClass(String name, String std) {
		List<Subject> subjects = JpaRepository.findByNameContaining(name);		
		logger.info("============subjects like   {}", subjects);
		logger.info("============subject like size  {}", subjects.size());
	}
	public void searchAllSubjectsFilterClassLocation(String name, String std) {
		List<Subject> subjects = JpaRepository.findByNameContaining(name);		
		logger.info("============subjects like   {}", subjects);
		logger.info("============subject like size  {}", subjects.size());
	}
}
