package com.project.jpa.riteshProject.exceptionHandling;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ExceptionHandling {
	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@ExceptionHandler(value=Exception.class)
	public String handleException(Exception e) {
		logger.info("exception: "+e);
		return "error";
	}
}
