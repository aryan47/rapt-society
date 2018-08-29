package com.project.jpa.riteshProject.repository;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.project.jpa.riteshProject.JpaRepository.InstructorJpaRepository;
import com.project.jpa.riteshProject.entity.Instructor;
import com.project.jpa.riteshProject.entity.Location;
import com.project.jpa.riteshProject.entity.Student;
import com.project.jpa.riteshProject.entity.Subject;

@Repository
@Transactional
public class InstructorRepository {
	Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired
	InstructorJpaRepository JpaRepository;
	@Autowired
	EntityManager em;

	public void findInstructorSubjectsById(Long id) {
		Instructor instructor = em.find(Instructor.class, id);
		List<Subject> subjects = instructor.getSubjects();
		logger.info("============subjects   {}", subjects);
		logger.info("============subject size  {}", subjects.size());
	}

	public void findInstructorSubjectsByIdJpa(Long id) {
		// Instructor instructor = em.find(Instructor.class, id);
		Optional<Instructor> findById = JpaRepository.findById(id);
		Instructor instructor = findById.get();
		List<Subject> subjects = instructor.getSubjects();
		logger.info("============subjects jpa   {}", subjects);
		logger.info("============subject size  {}", subjects.size());
	}

	public void findInstructorStudentsById(Long id) {
		Instructor instructor = em.find(Instructor.class, id);
		List<Student> students = instructor.getStudents();
		logger.info("==========students {}", students);
		logger.info("==========student size  {}", students.size());
	}

	public void findInstructorLocationsById(Long id) {
		Instructor instructor = em.find(Instructor.class, id);
		List<Location> locations = instructor.getLocations();
		logger.info("==========locations {}", locations);
		logger.info("==========location size  {}", locations.size());
	}

}
