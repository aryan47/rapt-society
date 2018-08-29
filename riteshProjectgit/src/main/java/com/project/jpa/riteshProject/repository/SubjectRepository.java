package com.project.jpa.riteshProject.repository;

import java.util.List;

import javax.persistence.EntityManager;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.project.jpa.riteshProject.JpaRepository.SubjectJpaRepository;
import com.project.jpa.riteshProject.entity.Subject;

@Repository
@Transactional
public class SubjectRepository {
	Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired
	SubjectJpaRepository JpaRepository;
	@Autowired
	EntityManager em;

	// search all the available subjects 
	public List<Subject> findAllSubjects() {
		return JpaRepository.findAll();

	}

	// search all the available subjects by name
	public List<Subject> findAllSubjectsByName(String name) {
		return JpaRepository.findNameByNameContaining(name);

	}

	// search all subjects with class filter
	public void findAllSubjectsFilterClass(String name, String std) {
		List<Subject> subjects = JpaRepository.findNameByNameContaining(name);

		logger.info("============subjects like   {}", subjects);
		logger.info("============subject like size  {}", subjects.size());
	}

	// search all subject with class and location of availability
	public void findAllSubjectsFilterClassLocation(String name, String std) {
		List<Subject> subjects = JpaRepository.findNameByNameContaining(name);
		logger.info("============subjects like   {}", subjects);
		logger.info("============subject like size  {}", subjects.size());
	}
}
