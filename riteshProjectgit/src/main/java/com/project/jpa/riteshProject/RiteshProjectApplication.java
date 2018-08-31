package com.project.jpa.riteshProject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.Transactional;

import com.project.jpa.riteshProject.services.MailConfiguration;

@SpringBootApplication
public class RiteshProjectApplication implements CommandLineRunner {
	Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired
	MailConfiguration mail;
	public static void main(String[] args) {
		SpringApplication.run(RiteshProjectApplication.class, args);
	}

	@Override
	@Transactional
	public void run(String... args) throws Exception {
	
	}
}
