package com.project.jpa.riteshProject;

import javax.persistence.EntityManager;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import com.project.jpa.riteshProject.repository.SubjectRepository;

@RunWith(SpringRunner.class)
@SpringBootTest(classes=RiteshProjectApplication.class)
public class RiteshProjectApplicationTests {
	Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired
	SubjectRepository repository;
	@Autowired
	EntityManager em;

	@Test
	@Transactional
	public void findSubjects() {
		
	}

}
